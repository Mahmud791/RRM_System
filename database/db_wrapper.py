import os
import re
import libsql_client
import datetime

def parse_val(val):
    if isinstance(val, str):
        try:
            return datetime.datetime.strptime(val, '%Y-%m-%d %H:%M:%S')
        except ValueError:
            pass
        try:
            return datetime.datetime.strptime(val, '%Y-%m-%d').date()
        except ValueError:
            pass
        try:
            return datetime.datetime.fromisoformat(val.replace("Z", "+00:00"))
        except ValueError:
            pass
    return val

class cursor_wrapper:
    def __init__(self, client, dictionary=True):
        self.client = client
        self.dictionary = dictionary
        self._results = []
        self._lastrowid = None

    def execute(self, query, params=()):
        # Convert MySQL %s parameter syntax to SQLite ?
        query = query.replace('%s', '?')
        
        try:
            rs = self.client.execute(query, params)
            if rs.rows:
                if self.dictionary:
                    self._results = [
                        dict(zip(rs.columns, [parse_val(v) for v in row]))
                        for row in rs.rows
                    ]
                else:
                    self._results = [list(parse_val(v) for v in row) for row in rs.rows]
            else:
                self._results = []
            self._lastrowid = rs.last_insert_rowid
        except Exception as e:
            # Re-raise to be compatible with app.py's expected Error handling
            raise Exception(f"Query error: {str(e)}\nQuery: {query}\nParams: {params}")

    def fetchone(self):
        if self._results:
            return self._results.pop(0)
        return None

    def fetchall(self):
        res = self._results
        self._results = []
        return res

    def close(self):
        pass

    @property
    def lastrowid(self):
        return self._lastrowid

class conn_wrapper:
    def __init__(self, url, token):
        # We replace libsql:// with https:// for Vercel/Turso reliability as fallback
        url = url.replace('libsql://', 'https://')
        self.client = libsql_client.create_client_sync(url=url, auth_token=token)

    def cursor(self, dictionary=True, buffered=True):
        return cursor_wrapper(self.client, dictionary=dictionary)

    def commit(self):
        # HTTP client is auto-committing per statement by default,
        # but if we used transactions, we would commit here.
        pass

    def rollback(self):
        pass

    def close(self):
        self.client.close()

def get_db_connection():
    url = os.environ.get('TURSO_DATABASE_URL')
    token = os.environ.get('TURSO_AUTH_TOKEN')
    if not url or not token:
        raise Exception("Missing TURSO credentials in environment!")
        
    return conn_wrapper(url, token)
