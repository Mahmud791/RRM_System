-- ============================================
-- SEED DATA FOR 500 USERS & BOOKINGS
-- ============================================

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (3, 'hbrady82378', 'scrypt:32768:8:1$pjiGHUvxV3xn3uM0$6b3d272fb5883ad800cd864ecd8250abd8b8147285308f13e6de5684e5581a79c2b5a8873be8d7b5d14b1f51e1ac445abf2338b77f839e677548638d61d1cf87', 'john91@example.com', '01583046486', 'Timothy Browning', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (1, 3, 'AQ2120153', 'Timothy Browning', '1963-01-02', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (1, 1, 13, '2026-03-24 11:48:14', 'Confirmed', 1.00, 'PNR202604162C6D2588');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (1, 1300.0, '2026-03-24 11:48:14', 'bKash', 'Completed', 'TXN20260416114814842703');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (2, 1, 4, '2026-03-25 11:48:14', 'Confirmed', 1.00, 'PNR20260416CD1E7786');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (2, 1398.0, '2026-03-25 11:48:14', 'bKash', 'Completed', 'TXN20260416114814FCB930');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (4, 'alin93290', 'scrypt:32768:8:1$3kRaNLXTM0ABgQBM$2374901596c728c4e6e503725c136a9eade741674978b973b4e2a08c176e651d71d3fa239959bbca04c87f01bc6a9e6d727124fa7815ba68df94be979a8549b5', 'munozlaura@example.com', '01679478638', 'Patricia Gonzalez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (2, 4, 'CQ7536699', 'Patricia Gonzalez', '1975-01-11', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (3, 2, 9, '2026-04-03 11:48:14', 'Confirmed', 1.00, 'PNR20260416A06205E1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (3, 1050.0, '2026-04-03 11:48:14', 'Nagad', 'Completed', 'TXN2026041611481493A5C5');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (4, 2, 5, '2026-04-25 11:48:14', 'Confirmed', 1.00, 'PNR202604164338FD6C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (4, 250.0, '2026-04-25 11:48:14', 'Nagad', 'Completed', 'TXN202604161148140EF6BA');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (5, 'sandragonzalez86017', 'scrypt:32768:8:1$UTU2o8TB3Kb3WULS$1b2e68ea2e2b55ca7979fa5f7365893337e640eedfbb374735921720891dabc96d0b0244043c76a275ff1c08e4ce52783c0137922c10e9a90a3c3bc1e90ac606', 'bowerseddie@example.net', '01084671303', 'Brittany Zhang', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (3, 5, 'TQ7642447', 'Brittany Zhang', '1994-07-20', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (6, 'adrian7711482', 'scrypt:32768:8:1$rUV2oNFxgs76H6eJ$92fd9097a7307a50cc4f4dffff217db1dafb5ff9185ee2fc4a1ff39bad913ae4a483faca60a381538b31616e02a3d93ddbc0349047ee51ce7e9c1f18419d0311', 'izamora@example.net', '01358985996', 'Kayla Austin', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (4, 6, 'UI1537484', 'Kayla Austin', '1997-09-26', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (7, 'patricia0454081', 'scrypt:32768:8:1$yDj3uhhnMGyJ9PB8$a5bdbffeaeeab5c5da3821ce2c41311c3a63fdeb34be49a1ffb4ad353f4a62898932ec0475cd578261080378df252a234afebdb8f2a9afcbe82686061792f5ff', 'hollyharrison@example.org', '01081773882', 'Julie Thompson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (5, 7, 'SS7676299', 'Julie Thompson', '2000-10-04', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (8, 'dennisramos68424', 'scrypt:32768:8:1$Nr2ul0VCDsA0XP5Q$10801129e32ee43734dcc77f6a66a9e946f380457bc5ea5ebc6161399b136a331c3c28102a342f678ab7db2dbb6c0676ac16912de4b72ccf3d6a84baa6d6772f', 'herbert82@example.net', '01088069094', 'Louis Jarvis', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (6, 8, 'CV9066001', 'Louis Jarvis', '1981-05-20', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (5, 6, 6, '2026-04-03 11:48:14', 'Confirmed', 1.00, 'PNR202604166373A494');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (5, 800.0, '2026-04-03 11:48:14', 'Cash', 'Completed', 'TXN20260416114814725756');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (6, 6, 13, '2026-04-20 11:48:14', 'Cancelled', 1.00, 'PNR20260416BDB64532');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (6, 250.0, '2026-04-20 11:48:14', 'Cash', 'Refunded', 'TXN20260416114814CE0CCB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (7, 6, 4, '2026-04-07 11:48:14', 'Confirmed', 1.00, 'PNR20260416B7AEFDD9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (7, 285.0, '2026-04-07 11:48:14', 'Cash', 'Completed', 'TXN20260416114814BCB4DB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (9, 'peter4113802', 'scrypt:32768:8:1$UjpY6nLc8DbArlIT$c5fc6cf41a263eff0420a5dc560dfc9645cd735aaabc87ff10f43cd8b331ee37dfd08c81774391b6186ab3fa7a89468ac0dfb19f53a963ca22a9e8fe890e6cdb', 'dennis24@example.net', '01509710031', 'Barbara Mercer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (7, 9, 'SP5745237', 'Barbara Mercer', '2004-02-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (8, 7, 5, '2026-03-25 11:48:15', 'Confirmed', 1.00, 'PNR20260416EB26FB13');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (8, 950.0, '2026-03-25 11:48:15', 'Cash', 'Completed', 'TXN20260416114815F8BB44');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (9, 7, 15, '2026-03-29 11:48:15', 'Confirmed', 1.00, 'PNR202604164720F212');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (9, 265.0, '2026-03-29 11:48:15', 'bKash', 'Completed', 'TXN20260416114815873AB3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (10, 'michael4335344', 'scrypt:32768:8:1$JIn2rCbDGmjN7Qes$fa22775397457a542e7e359d004c725e22e2da7d20f11c46c5d480c2064d55e1a46a60187f3cd4a4ea1db5fd36b291dcd6fdbef732ed1fc32e1348040944da83', 'michael78@example.com', '01469457666', 'Jessica Phelps', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (8, 10, 'LH0981092', 'Jessica Phelps', '1972-02-12', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (10, 8, 17, '2026-05-01 11:48:15', 'Confirmed', 1.00, 'PNR20260416581DCE1C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (10, 1398.0, '2026-05-01 11:48:15', 'bKash', 'Completed', 'TXN2026041611481538C6CA');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (11, 8, 1, '2026-04-30 11:48:15', 'Confirmed', 1.00, 'PNR20260416936E0335');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (11, 1025.0, '2026-04-30 11:48:15', 'bKash', 'Completed', 'TXN20260416114815C988BC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (11, 'jamesadam78514', 'scrypt:32768:8:1$boj80yKavINlxxcQ$8699189297019cfdfacf7d95b97e17673efd2c8cfa0b7b413e14233cc414f27a1eba006b0ecb4be13495917ce67b8113ce2bfd2ea8662874ddc8d8c9267bf6d1', 'fphillips@example.net', '01548773216', 'Michael Walker', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (9, 11, 'BP6045888', 'Michael Walker', '1985-05-05', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (12, 9, 14, '2026-03-23 11:48:15', 'Confirmed', 1.00, 'PNR20260416A6F3AAF6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (12, 285.0, '2026-03-23 11:48:15', 'Credit Card', 'Completed', 'TXN202604161148152EDAE6');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (13, 9, 11, '2026-04-02 11:48:15', 'Confirmed', 1.00, 'PNR2026041656E6B7E5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (13, 285.0, '2026-04-02 11:48:15', 'Nagad', 'Completed', 'TXN20260416114815FC9E7D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (12, 'salinaskeith68575', 'scrypt:32768:8:1$qSXflRVlnFZHLElR$38398e0ba3bf9539dc4d8eed52c472bc978bbe98e919f150ce9783531976e856a0f5f5cd8cad9be0cd809080072d7651a3070e88e086b5110dc552e225831834', 'michelle78@example.org', '01872685062', 'Andrew Avery', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (10, 12, 'PM6633873', 'Andrew Avery', '1991-08-14', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (14, 10, 6, '2026-03-25 11:48:15', 'Confirmed', 1.00, 'PNR20260416D8214ED9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (14, 950.0, '2026-03-25 11:48:15', 'bKash', 'Completed', 'TXN20260416114815CD27AB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (15, 10, 9, '2026-04-12 11:48:15', 'Confirmed', 1.00, 'PNR202604165CE26D5C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (15, 465.0, '2026-04-12 11:48:15', 'bKash', 'Completed', 'TXN20260416114815059657');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (16, 10, 14, '2026-04-29 11:48:15', 'Confirmed', 1.00, 'PNR2026041651A7C64D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (16, 285.0, '2026-04-29 11:48:15', 'Cash', 'Completed', 'TXN20260416114815B02CB3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (13, 'bryantsean93526', 'scrypt:32768:8:1$xBJ5FIhTGCv9aE35$6a2aaca13fe6a170d2a4f553d82dea456097500a3df93fbdfa42105e2728fc3781097463acad30ed5490e5826049531186e5c446794c012542bf3ea4ac3c68b7', 'brenda10@example.org', '01562478388', 'Jody Perez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (11, 13, 'JC3919798', 'Jody Perez', '1960-09-04', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (14, 'uwoods97830', 'scrypt:32768:8:1$Gkzv8d8jAlI0tRnF$716fd4fc0a08874a9df3de0c140d28d333cb256b614bf890a053e4871924ee0807a2f95b9bca19c2b1e5c69fa4f6ededeba006dd441ea68d54f914162620566c', 'marklynn@example.net', '01399911669', 'Matthew Cook', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (12, 14, 'CW5952340', 'Matthew Cook', '1966-10-04', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (15, 'rebecca2192062', 'scrypt:32768:8:1$HQczFw9MR4Rvey16$2419f90af2a40f543b9f27f529586d04b88d96df72645f14f9dac141855e0244a91c6728bc5e6a3febe38a35cfa3fe35ec61b7d296bb001a1cfb35c6e790abfb', 'aprilnichols@example.net', '01472024930', 'Jason Franco', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (13, 15, 'TQ2851986', 'Jason Franco', '1993-11-11', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (17, 13, 20, '2026-03-28 11:48:15', 'Confirmed', 1.00, 'PNR20260416CB518137');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (17, 950.0, '2026-03-28 11:48:15', 'Cash', 'Completed', 'TXN202604161148155525CF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (16, 'lucasantonio8835', 'scrypt:32768:8:1$KUCFhrHd0WD2axMv$780d5472cc570dc70224c971600c0af37ac73ddda89fafc257077d81f87e3520ba99d45546f0c1afc7d1a4c9450ba5bd351383cace97efdbf8c3777aef12915c', 'emitchell@example.org', '01051578227', 'Jonathan Rodriguez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (14, 16, 'YO3931237', 'Jonathan Rodriguez', '1965-04-18', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (18, 14, 1, '2026-03-17 11:48:15', 'Confirmed', 1.00, 'PNR202604162386FC6C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (18, 1398.0, '2026-03-17 11:48:15', 'Cash', 'Completed', 'TXN20260416114815400950');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (19, 14, 15, '2026-04-21 11:48:15', 'Cancelled', 1.00, 'PNR20260416324BE384');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (19, 780.0, '2026-04-21 11:48:15', 'bKash', 'Refunded', 'TXN202604161148150D0E1C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (17, 'justin2244519', 'scrypt:32768:8:1$MRiP2t3raE9jIXgk$30ccf6535725ddfa63568fe6307b5f0521bc75b2986cac5ec0a7595e4838f1cdf7747d26720be07fe39041db847dccb3269274afea269473632f6cf4a37b6d1d', 'marisa81@example.com', '01093522687', 'Mark Martinez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (15, 17, 'KN0877851', 'Mark Martinez', '1947-11-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (20, 15, 6, '2026-04-01 11:48:15', 'Confirmed', 1.00, 'PNR2026041641DFFEEA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (20, 800.0, '2026-04-01 11:48:15', 'bKash', 'Completed', 'TXN2026041611481594F79B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (18, 'johnsonteresa27237', 'scrypt:32768:8:1$t5Pc3VcwJ2imI8xA$17c694e7d354e9e5880920b944a76555af8923ed96487b364125d0214f6cf98f81d2fcff7b6d01cbe96b330a366ebf3d7c8452249a1cee97b0c457364fc81e0a', 'prestonjones@example.net', '01714489650', 'Mariah Mitchell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (16, 18, 'MO0611649', 'Mariah Mitchell', '1948-01-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (21, 16, 9, '2026-04-01 11:48:16', 'Confirmed', 1.00, 'PNR202604161E425489');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (21, 1050.0, '2026-04-01 11:48:16', 'Nagad', 'Completed', 'TXN2026041611481653FC2E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (22, 16, 7, '2026-03-30 11:48:16', 'Confirmed', 1.00, 'PNR202604169A1E5340');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (22, 950.0, '2026-03-30 11:48:16', 'Nagad', 'Completed', 'TXN202604161148164BA004');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (19, 'michael9060795', 'scrypt:32768:8:1$mr7BKw7nzuEiP47O$1bec53fed5d21217880cf4879cff4f7036af757e52c195689c757f303356de3d93eb4b42ee5c59ff58069757716137d01b23cad79f84efe1ab22eba87cb61cad', 'areynolds@example.org', '01976349950', 'Douglas Wilson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (17, 19, 'SX6833985', 'Douglas Wilson', '1959-11-23', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (20, 'smithjennifer98908', 'scrypt:32768:8:1$Tq25PJhH3g4IkS6E$cc576b509d64a9adf3d2ce7c7260f6690d8f1c39b64d843309aa0dd6b8853519b4a03189d253bf8b3b7a6c4a47edf70d97df23bc066970f3e2dbd0e7dc74b52b', 'brayvictoria@example.com', '01947837888', 'Amanda Jackson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (18, 20, 'YB1119534', 'Amanda Jackson', '1967-12-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (23, 18, 20, '2026-05-01 11:48:16', 'Cancelled', 1.00, 'PNR20260416AE70A316');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (23, 950.0, '2026-05-01 11:48:16', 'bKash', 'Refunded', 'TXN20260416114816B32642');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (24, 18, 8, '2026-04-06 11:48:16', 'Confirmed', 1.00, 'PNR20260416C1B21C75');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (24, 780.0, '2026-04-06 11:48:16', 'Credit Card', 'Completed', 'TXN2026041611481699604E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (25, 18, 12, '2026-03-17 11:48:16', 'Cancelled', 1.00, 'PNR20260416A2130E09');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (25, 450.0, '2026-03-17 11:48:16', 'Cash', 'Refunded', 'TXN20260416114816B5FF23');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (21, 'cmartin71573', 'scrypt:32768:8:1$avf2Pj2mKXOed295$36ec5f4cb2364c3dcafbfc756a98e5bc4275a5356dba8acdb6b8a316369a78ad20e5e088961ccb2bc1932265033691a9cb8af61a7a8c15426af81316b207f460', 'richard56@example.net', '01401577148', 'Lauren Holt', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (19, 21, 'VO8912461', 'Lauren Holt', '1988-03-31', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (26, 19, 12, '2026-05-01 11:48:16', 'Confirmed', 1.00, 'PNR20260416E4B271F1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (26, 1025.0, '2026-05-01 11:48:16', 'Nagad', 'Completed', 'TXN202604161148162AB9F4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (27, 19, 12, '2026-03-27 11:48:16', 'Confirmed', 1.00, 'PNR20260416EF391356');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (27, 285.0, '2026-03-27 11:48:16', 'Cash', 'Completed', 'TXN20260416114816B800B9');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (22, 'ortizrobert19359', 'scrypt:32768:8:1$sohQZ18V2gXjNR1r$2efacb094225829b8b0bfad18677750570733912fc1e2d6242e4c5ea68ba5987eb2a5598f3c09d74589a8b96167b6300138c4ac78e6cbf25f50ce158a86d9609', 'steven03@example.net', '01512741731', 'Ann Lucas', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (20, 22, 'PA1378262', 'Ann Lucas', '1945-08-20', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (28, 20, 10, '2026-04-29 11:48:16', 'Confirmed', 1.00, 'PNR20260416D1BF9365');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (28, 295.0, '2026-04-29 11:48:16', 'Nagad', 'Completed', 'TXN20260416114816DA232C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (23, 'michaelmorris62596', 'scrypt:32768:8:1$nnAFrrfol46RefZO$046da06169b992b71e7060734217c040fc6c516aa6b74558bd3b8594a44f6469bce9106cf75cc21500dd8c949cc7715f1763cde4a0981074f8ea541b40e67c7b', 'romerowilliam@example.net', '01642796825', 'Dawn Crawford', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (21, 23, 'QQ8142556', 'Dawn Crawford', '1981-04-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (29, 21, 16, '2026-04-24 11:48:16', 'Cancelled', 1.00, 'PNR20260416BB98B607');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (29, 780.0, '2026-04-24 11:48:16', 'Nagad', 'Refunded', 'TXN20260416114816EF91FE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (30, 21, 18, '2026-04-22 11:48:16', 'Confirmed', 1.00, 'PNR20260416987E10C0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (30, 780.0, '2026-04-22 11:48:16', 'Credit Card', 'Completed', 'TXN20260416114816A1C257');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (31, 21, 10, '2026-04-20 11:48:16', 'Confirmed', 1.00, 'PNR20260416FB3E3C28');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (31, 870.0, '2026-04-20 11:48:16', 'Nagad', 'Completed', 'TXN20260416114816B080DB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (24, 'angela0855068', 'scrypt:32768:8:1$09ThRBf69YWSbw95$eaa4224090c859e96a04e084d5e9fa4a7a1f571fc7aa223c7f77c8f26b1f503d61c039955e44258151221473debad4d1bfba46f964f3711b661bd48057396ab3', 'garciasheila@example.com', '01282779702', 'Valerie Watson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (22, 24, 'YN9019612', 'Valerie Watson', '1990-09-30', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (25, 'lewistiffany1362', 'scrypt:32768:8:1$L7WlE0r4T6D88odX$0485d62b565f33abfa65b692d23217ac62340c4f59b20a901b127f2bf2b5ee7624f1c041a8841f368569542f56959c81dd31b72bb82dd549bf9202701d5f8256', 'cookgrant@example.com', '01352177836', 'Rachel Cole', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (23, 25, 'QS1431948', 'Rachel Cole', '1954-03-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (32, 23, 11, '2026-04-06 11:48:16', 'Confirmed', 1.00, 'PNR2026041657601CF3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (32, 1398.0, '2026-04-06 11:48:16', 'Nagad', 'Completed', 'TXN20260416114816216BCC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (33, 23, 17, '2026-03-22 11:48:16', 'Confirmed', 1.00, 'PNR20260416F57A06D0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (33, 1025.0, '2026-03-22 11:48:16', 'bKash', 'Completed', 'TXN2026041611481639C78F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (34, 23, 8, '2026-04-06 11:48:16', 'Confirmed', 1.00, 'PNR20260416588360C3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (34, 425.0, '2026-04-06 11:48:16', 'Credit Card', 'Completed', 'TXN20260416114816ACA0B6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (26, 'amyhunter27377', 'scrypt:32768:8:1$8Wyx3WvMKn5rBTgl$ef3003c252b9ada631162e41b34f899817a876ca6b5a4443330fc05c39bb933c7be47dfee8f04dff83420c87fc1b4caf7ad1581cc1f27fa76f0718b4d7b7d5e0', 'zhood@example.net', '01781307906', 'Glenda Hubbard', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (24, 26, 'LT0399688', 'Glenda Hubbard', '1986-10-28', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (35, 24, 14, '2026-05-01 11:48:16', 'Confirmed', 1.00, 'PNR20260416CDA00B9D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (35, 1398.0, '2026-05-01 11:48:16', 'bKash', 'Completed', 'TXN20260416114816DCE1F1');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (27, 'denisearnold74652', 'scrypt:32768:8:1$vvcwdw0mlhT9R8pR$44046be5c754b703e48b2eb5cf0dbe58e1290352b0ebd14be8e631a0801264ec2d4ba8e474460fa07d84c7ac46f628ca7f77caa4d88e7288d1b1b136f857d17b', 'tsharp@example.com', '01349861039', 'Fernando Pruitt', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (25, 27, 'MK5208475', 'Fernando Pruitt', '1980-02-15', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (28, 'christinahenderson8769', 'scrypt:32768:8:1$LzuRCltifyB6V5wu$2817441d44f11b6b85e82ce7b08f50a31f95ed56fadf2919dace86caffbfbd4a3bd9136a4da8c7e9e048f859e3de6e5d5e857cf9886e859b80492eb90fd37079', 'rhoward@example.com', '01623513304', 'Michael Gutierrez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (26, 28, 'EH0764683', 'Michael Gutierrez', '1989-05-21', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (36, 26, 11, '2026-04-04 11:48:17', 'Confirmed', 1.00, 'PNR20260416D1BD3FBC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (36, 1398.0, '2026-04-04 11:48:17', 'Nagad', 'Completed', 'TXN202604161148171DF039');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (37, 26, 3, '2026-04-10 11:48:17', 'Confirmed', 1.00, 'PNR20260416E967C16B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (37, 1398.0, '2026-04-10 11:48:17', 'Cash', 'Completed', 'TXN202604161148171ECA1F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (38, 26, 8, '2026-03-21 11:48:17', 'Confirmed', 1.00, 'PNR202604163299DD7A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (38, 425.0, '2026-03-21 11:48:17', 'bKash', 'Completed', 'TXN202604161148178A0F1C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (29, 'tylerking6496', 'scrypt:32768:8:1$3sUHg3rIkoaDSxLY$35d5c11ecfea1d940818107a95bfedd65ee6184b84af699de8dd6dcbaffbbba2ba0491d855d74ba1dfc03eb0549076930b6c4cc99143a2ce1b56cd1ff7a6833a', 'cooperaaron@example.org', '01217387340', 'Raymond Edwards', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (27, 29, 'MU1238633', 'Raymond Edwards', '1965-04-27', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (39, 27, 20, '2026-04-22 11:48:17', 'Confirmed', 1.00, 'PNR20260416D171CB0F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (39, 400.0, '2026-04-22 11:48:17', 'Cash', 'Completed', 'TXN202604161148170E3B89');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (40, 27, 1, '2026-03-30 11:48:17', 'Cancelled', 1.00, 'PNR2026041625A2AB48');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (40, 285.0, '2026-03-30 11:48:17', 'Cash', 'Refunded', 'TXN2026041611481796EAE6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (30, 'lwood37559', 'scrypt:32768:8:1$ll05KcHqB10ztUZL$96f8a27750c4d370aa11c3d6aad0c872db9866d59af4cf78ec58e9ffa7366175533d060dbfbf31866d25eaac7bb78d16be9c213c17fe03f4f16ebd68e7f67fca', 'rebeccabridges@example.net', '01545020883', 'Christy Park', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (28, 30, 'IQ1549224', 'Christy Park', '1958-03-26', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (31, 'fmendoza10683', 'scrypt:32768:8:1$TB03l5TWGeu6psJi$9565213ee7b7d37f6c1dfdcfede20a299d833ee7c842a571f553bfce40f1db1fe6a5f058918dcfce35e161c646a69f54a75f3e13e63024f0f637977e81388664', 'whart@example.net', '01171099240', 'William Phillips', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (29, 31, 'ZD1747250', 'William Phillips', '2001-05-29', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (41, 29, 1, '2026-03-29 11:48:17', 'Cancelled', 1.00, 'PNR20260416A863D72A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (41, 1398.0, '2026-03-29 11:48:17', 'Cash', 'Refunded', 'TXN2026041611481748B858');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (42, 29, 15, '2026-04-26 11:48:17', 'Confirmed', 1.00, 'PNR20260416DF896023');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (42, 265.0, '2026-04-26 11:48:17', 'Cash', 'Completed', 'TXN2026041611481762D352');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (43, 29, 18, '2026-04-29 11:48:17', 'Confirmed', 1.00, 'PNR20260416964D3A78');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (43, 780.0, '2026-04-29 11:48:17', 'bKash', 'Completed', 'TXN20260416114817990FC7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (32, 'rferguson72558', 'scrypt:32768:8:1$v6fP1v7pNw3OLO5I$afc10512f844b2c052e9a772129ac259845eeee1478c03fb82ca18648c4cf1b14cf1cdeae27dd4a6760ddd5ad298910ecf524c9113538305755553dd1df7c33a', 'melissahouse@example.com', '01572531837', 'Nicole Wilson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (30, 32, 'ED0823299', 'Nicole Wilson', '1968-01-01', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (44, 30, 7, '2026-04-18 11:48:17', 'Confirmed', 1.00, 'PNR2026041619B8A456');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (44, 950.0, '2026-04-18 11:48:17', 'Cash', 'Completed', 'TXN20260416114817D4F557');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (33, 'millerdavid46231', 'scrypt:32768:8:1$DCx9qrXLxSI03PuU$37cee27557f9b24ea1e192c0c76b165b4c9d4dcc0a0784ac784c4cb6613506f30f73814f19f99a567bb11806e0998b032973c91019fd6a86462c8f321db946bd', 'pmaynard@example.com', '01863599140', 'Rebecca Adams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (31, 33, 'IR6197923', 'Rebecca Adams', '1964-11-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (45, 31, 17, '2026-04-18 11:48:17', 'Confirmed', 1.00, 'PNR20260416493F78FE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (45, 450.0, '2026-04-18 11:48:17', 'bKash', 'Completed', 'TXN20260416114817317725');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (46, 31, 1, '2026-03-23 11:48:17', 'Confirmed', 1.00, 'PNR20260416B6576740');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (46, 855.0, '2026-03-23 11:48:17', 'bKash', 'Completed', 'TXN2026041611481729BFEA');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (34, 'chapmanstacey22061', 'scrypt:32768:8:1$16VzJIhcGymTg98X$1a16af437c513fa089251556c455a8e6b04e2a20241771b0c517b51e5a58ee7c92aa59786aac66e300f7d2de05461c86b457e0506ebce29c31ccda1da469c490', 'gonzaleseric@example.org', '01136645128', 'Kathleen Thompson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (32, 34, 'AV4539182', 'Kathleen Thompson', '1990-07-06', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (47, 32, 20, '2026-04-11 11:48:17', 'Cancelled', 1.00, 'PNR202604161A0D7E0D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (47, 950.0, '2026-04-11 11:48:17', 'Cash', 'Refunded', 'TXN20260416114817932C0F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (48, 32, 4, '2026-04-12 11:48:17', 'Confirmed', 1.00, 'PNR202604166E4A721C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (48, 285.0, '2026-04-12 11:48:17', 'Cash', 'Completed', 'TXN202604161148170ED294');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (49, 32, 14, '2026-04-10 11:48:17', 'Confirmed', 1.00, 'PNR20260416EF2205A5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (49, 855.0, '2026-04-10 11:48:17', 'Cash', 'Completed', 'TXN20260416114817AB147F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (35, 'edwardphillips20439', 'scrypt:32768:8:1$tXBWTCsiwua5pDrZ$2537c235a4521487147ccb7d6d6572e37b803f80637151750b44404d87112209f77bedbe51c2547f12583f079856f906b257319882c8a79cf3f6278ea5bbbedf', 'paynebrittney@example.net', '01564649698', 'James Miller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (33, 35, 'CB6256309', 'James Miller', '1988-05-08', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (50, 33, 19, '2026-03-26 11:48:18', 'Confirmed', 1.00, 'PNR202604168EC0878B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (50, 465.0, '2026-03-26 11:48:18', 'Cash', 'Completed', 'TXN20260416114818A3C800');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (36, 'katherine9286545', 'scrypt:32768:8:1$upGNAWyfg9oBNIIl$8d85e0327e02a033a289b8c07e64a78859558b64f296bede60700e00ba6eea8a300df82ac334f056e5c3d79bdc62da8f138db8a62a1b57444611bb253d21fd40', 'marissa55@example.net', '01693134164', 'Yolanda Fischer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (34, 36, 'FN2442907', 'Yolanda Fischer', '1984-10-02', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (51, 34, 19, '2026-05-01 11:48:18', 'Confirmed', 1.00, 'PNR2026041602CAEDDD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (51, 870.0, '2026-05-01 11:48:18', 'Nagad', 'Completed', 'TXN202604161148189DD32C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (52, 34, 11, '2026-04-05 11:48:18', 'Confirmed', 1.00, 'PNR202604162E31B67D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (52, 1025.0, '2026-04-05 11:48:18', 'bKash', 'Completed', 'TXN202604161148184BA10B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (37, 'charleslong16394', 'scrypt:32768:8:1$6vCQoUnnQoxjwdGj$03f77c5f2fdf58977a33968e5fe53f92a93f13ac0d5ed0d4ff1588f8ad5a0a62b882d15b18b266ef4c7901b91e2911c0c6a0f8e0a39e73a9903710280118304a', 'diana84@example.org', '01828790256', 'Janice Carrillo', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (35, 37, 'RQ3973063', 'Janice Carrillo', '2005-09-30', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (53, 35, 12, '2026-05-01 11:48:18', 'Confirmed', 1.00, 'PNR20260416F7C45519');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (53, 1025.0, '2026-05-01 11:48:18', 'Credit Card', 'Completed', 'TXN2026041611481881644C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (54, 35, 19, '2026-03-22 11:48:18', 'Confirmed', 1.00, 'PNR20260416915B4D32');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (54, 1050.0, '2026-03-22 11:48:18', 'Nagad', 'Completed', 'TXN202604161148182599B8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (55, 35, 20, '2026-04-15 11:48:18', 'Confirmed', 1.00, 'PNR20260416D8AD804D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (55, 400.0, '2026-04-15 11:48:18', 'bKash', 'Completed', 'TXN2026041611481821BE6F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (38, 'ngarner28353', 'scrypt:32768:8:1$pC8nGRQMDOe2fWQI$92211c7014d3fb1ebea0d822d14b19cbe1d3abc229e5b85fd8b9d9e1958c9a9df7998c244dfe57f0eafe792a9110577d52d7125c1e94c6d10e32d1c08fdcfc19', 'bradley66@example.net', '01999358341', 'Oscar Young', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (36, 38, 'HS8840041', 'Oscar Young', '1971-01-16', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (39, 'melissa9686166', 'scrypt:32768:8:1$1x6pKzC7mfOX3vPC$c84ca3dba9d023899d35a7af674324e059bf777d0731f269b414369edff7dae015e4fb3dc4e3cc60d07b22db631e7551a1f78796bc85aed9f48d7dec3f154490', 'stuartwilson@example.org', '01945995866', 'William Parker', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (37, 39, 'HX8430185', 'William Parker', '1994-10-01', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (40, 'theresarose27215', 'scrypt:32768:8:1$RsgZhicuBUim89WC$9729ccb7d9769b75984ec8ef836e98dff6880c6a3b2463bf0003d301abfdd664086acd14f13ac132f6a9820ad1f11d8f91a41229a6ebedc91e6baf2fd6c09378', 'kiaragarcia@example.org', '01977566298', 'Patrick Vaughn', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (38, 40, 'CS0825564', 'Patrick Vaughn', '2003-11-17', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (56, 38, 7, '2026-04-12 11:48:18', 'Confirmed', 1.00, 'PNR2026041616B4DD11');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (56, 950.0, '2026-04-12 11:48:18', 'Nagad', 'Completed', 'TXN20260416114818A34B1D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (41, 'kathrynbanks11771', 'scrypt:32768:8:1$sWJxaqnuLaSuHbsR$e674901b6dc296fb081056144c030e46830102f6c98cbbe49be8b0b3cbf806d6acdf244be5e132dc847237223f1b6a61e0a922dba067e0e3039d6d2276e08c0c', 'scook@example.com', '01757463701', 'Matthew Williams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (39, 41, 'BN9290631', 'Matthew Williams', '1999-12-22', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (42, 'tmcbride23555', 'scrypt:32768:8:1$UJ45bNo2Mr7CVjp7$1b7d255f179d1e36430112ec3ee872959ce02029b8f05f1f5434c8a3e5402a686f5dba9031ca8871e33eae01196b4513f17b84054b14288b214cd97d1e5d3078', 'justin54@example.org', '01642571503', 'Justin Adams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (40, 42, 'KD1925898', 'Justin Adams', '2002-01-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (57, 40, 6, '2026-04-30 11:48:18', 'Cancelled', 1.00, 'PNR20260416BA1EADA6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (57, 400.0, '2026-04-30 11:48:18', 'bKash', 'Refunded', 'TXN20260416114818B58095');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (43, 'twillis96635', 'scrypt:32768:8:1$WQMLw6u38cy7n7rb$1787ebdcab3722b26116eaea188c5ff28741f45ede14b4355dbd0f6e09efd7b6e1c986e7c87399a84c60e72839aac6a8ffaab9b269ad641f75e62221d1e5806e', 'bwalters@example.org', '01057781174', 'Leslie Gutierrez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (41, 43, 'NJ5962556', 'Leslie Gutierrez', '1963-08-25', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (58, 41, 7, '2026-04-25 11:48:18', 'Confirmed', 1.00, 'PNR202604168AE75F1A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (58, 950.0, '2026-04-25 11:48:18', 'Cash', 'Completed', 'TXN202604161148187592F2');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (59, 41, 6, '2026-04-07 11:48:18', 'Confirmed', 1.00, 'PNR20260416151686D0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (59, 1300.0, '2026-04-07 11:48:18', 'bKash', 'Completed', 'TXN20260416114818A1E221');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (60, 41, 12, '2026-04-22 11:48:18', 'Confirmed', 1.00, 'PNR202604168704CD26');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (60, 1025.0, '2026-04-22 11:48:18', 'bKash', 'Completed', 'TXN20260416114818B9A5A5');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (44, 'qkaiser52836', 'scrypt:32768:8:1$x81tjirJe7QoMvys$56ec1ad13f1aae2ec18623c830d327e2fd1513783160281704cf64c4cebb1cfe71dfd90e0bb7e7803556c6ef8f272f23da4690ffe4b58608912fe1129571ae39', 'donnawashington@example.com', '01286493584', 'Angela Jordan', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (42, 44, 'GK7045603', 'Angela Jordan', '1980-01-08', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (61, 42, 14, '2026-04-28 11:48:18', 'Confirmed', 1.00, 'PNR20260416A4083499');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (61, 1025.0, '2026-04-28 11:48:18', 'Cash', 'Completed', 'TXN20260416114818C96958');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (45, 'llewis23179', 'scrypt:32768:8:1$ZtdydvvCkbTdWSZA$26147ee3e148e2c5c6481980a88e0f854ee8074970e75351fc34c2fb03ba327ba0a0709142926f6f58f0e91701a4f5a559ca4673d7e0d98fdb05a39d26fdcee9', 'smithgregory@example.com', '01660833692', 'Brandy Martin', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (43, 45, 'LA0511221', 'Brandy Martin', '1966-09-20', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (62, 43, 19, '2026-04-06 11:48:19', 'Confirmed', 1.00, 'PNR202604168D1E1AC1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (62, 1425.0, '2026-04-06 11:48:19', 'Credit Card', 'Completed', 'TXN2026041611481942806D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (46, 'lsaunders27753', 'scrypt:32768:8:1$gM9YYq9nIVmYM1TO$67292c0e9c95b9265ca2fd0e8d41115b5e2972b85c6065111cd73219229a1265eeb87d15603454b3f8d0a00276443f24abf6914bade8a546db7051e5c37bab30', 'johnsonlaura@example.com', '01674008319', 'Maria Clark', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (44, 46, 'DV7168581', 'Maria Clark', '1991-05-29', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (63, 44, 1, '2026-04-05 11:48:19', 'Confirmed', 1.00, 'PNR20260416E5439C10');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (63, 855.0, '2026-04-05 11:48:19', 'Credit Card', 'Completed', 'TXN2026041611481913BC14');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (47, 'jaimeorozco52977', 'scrypt:32768:8:1$XSVhOFINXlNHxe2V$57762c3bca80d03c1d953a9454f30e566955cc8773c938b9c42f7972de44fdc99a5c2ec6917e8ed0bcce6ff5433b22a3a2aa1732363c66646a48ce2739bee506', 'rachel22@example.net', '01962856304', 'Gregory Williams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (45, 47, 'XM8086342', 'Gregory Williams', '1958-10-23', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (64, 45, 4, '2026-04-19 11:48:19', 'Cancelled', 1.00, 'PNR202604164704E4B1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (64, 285.0, '2026-04-19 11:48:19', 'Credit Card', 'Refunded', 'TXN20260416114819B5A2F7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (65, 45, 5, '2026-04-19 11:48:19', 'Confirmed', 1.00, 'PNR20260416B7215CC1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (65, 250.0, '2026-04-19 11:48:19', 'Nagad', 'Completed', 'TXN20260416114819448784');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (48, 'scott6696221', 'scrypt:32768:8:1$3ptST0XpT3jindXe$557ec718f89364e90fce3b857a39b1aa85cde9193519a3fd3632037721c8afbfd512ec2bacbe17a39cb502e12fa824eb1f93574055745a446176f4d9c4879e1a', 'brian78@example.com', '01899788198', 'Andrea Wilson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (46, 48, 'QY3348429', 'Andrea Wilson', '1984-02-10', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (66, 46, 20, '2026-03-27 11:48:19', 'Confirmed', 1.00, 'PNR20260416500A56EC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (66, 400.0, '2026-03-27 11:48:19', 'Credit Card', 'Completed', 'TXN20260416114819F549E4');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (49, 'anthonybowen34526', 'scrypt:32768:8:1$Qei3CamMLW13nYz1$aa53279b10c938a49f3186d16af86c796b43f946b250a617855c06e717c5ef3026db08fc518e5ef8e5e411fa9eca7d2b2698abb5ca069e31027e96a6ae6328e5', 'tclark@example.com', '01042510648', 'Philip Rice', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (47, 49, 'MQ3386805', 'Philip Rice', '1957-12-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (67, 47, 8, '2026-03-20 11:48:19', 'Cancelled', 1.00, 'PNR202604167DC5B2FF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (67, 265.0, '2026-03-20 11:48:19', 'Cash', 'Refunded', 'TXN2026041611481978142C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (68, 47, 19, '2026-04-22 11:48:19', 'Confirmed', 1.00, 'PNR202604168196C7DC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (68, 1425.0, '2026-04-22 11:48:19', 'Nagad', 'Completed', 'TXN20260416114819D3B447');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (50, 'davidrhodes65422', 'scrypt:32768:8:1$h6IzhGEPuZ8hZcXP$743518067f0a7ae2bb2eaa18924c011a06ffbfae9267b95c91e75d0c219f399ed5e6480e704c8b74b9a8097941690d482e41482cf78f5c9a6d35872056e61bb3', 'vtran@example.net', '01162502777', 'Diane Alexander', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (48, 50, 'PW6986895', 'Diane Alexander', '2000-05-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (69, 48, 5, '2026-03-30 11:48:19', 'Confirmed', 1.00, 'PNR20260416F3C27F5F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (69, 800.0, '2026-03-30 11:48:19', 'Cash', 'Completed', 'TXN2026041611481972CBDC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (51, 'smithmelissa87896', 'scrypt:32768:8:1$W7MfHg3WE2D64h4d$7ff9d6b443acbf8ec574a5612a23059ede8b945ec91edcc5b71e474517a9d8a51b6aa8589e1a19954ce6bdfdf25b9c900cd2cb538dd5bb74fe036da6a8ac4e29', 'ijones@example.com', '01299476788', 'Andrea Luna', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (49, 51, 'KW9750593', 'Andrea Luna', '1992-06-04', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (70, 49, 20, '2026-03-28 11:48:19', 'Confirmed', 1.00, 'PNR202604165028D571');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (70, 1300.0, '2026-03-28 11:48:19', 'bKash', 'Completed', 'TXN202604161148193A19B0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (52, 'weavermichael60915', 'scrypt:32768:8:1$DGYUTIVKG8X4wGAO$63cbd61ef5b45b1e97686a016e4c34a0beeb5125d0da807649db23f6db08c7f3d5c2f15cf695120a635f1ab69367ce3352f1f0bac007fa7e14368172271144b5', 'wdixon@example.com', '01031037586', 'Jason Frost', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (50, 52, 'QF9036349', 'Jason Frost', '1972-02-27', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (53, 'laura7728730', 'scrypt:32768:8:1$GTuWGjvVvskn3Fnd$a764f2459197ceb13a12aba8c05db5977aadcf30a13c4a21c6077cbd441104cfd903c37479f1e8bf2110eead50668698f4d3fbbd4ccfb6648f68d8f29e4941cf', 'jenniferdavis@example.com', '01899693727', 'Michelle Wright', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (51, 53, 'BK2034262', 'Michelle Wright', '1949-09-17', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (54, 'evangordon39793', 'scrypt:32768:8:1$RBzXqGV1h0LLe93u$39552b2bc782c5127a9287e80335d2120016e6c1ea5f1cbe3f468382e5c21a6d82d2c8014418fabe2187a9cc4f1cb5cfd04bd6c22afad81004a5903621882bd5', 'toddmichael@example.com', '01327763341', 'Mrs. Jennifer Perez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (52, 54, 'SS6244771', 'Mrs. Jennifer Perez', '2008-02-17', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (55, 'sarariley78763', 'scrypt:32768:8:1$3hA0AysYTPc61Ifd$e003349dd4152d3bf47f221891e4125f65be74eafa5e51f0cd919411a11842bce139880eb2686f7fa257353384945b7b37cab8537ec0dad360051085d1e1d023', 'johnsoncurtis@example.net', '01072724724', 'Michael Clay MD', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (53, 55, 'UL9084782', 'Michael Clay MD', '1956-02-14', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (56, 'scarpenter16993', 'scrypt:32768:8:1$bQkZ3CUE31a55znS$e04be83a62fac542dd3093b87e94f5c73c6c50e9e47d992f3187ed61c94164f8734cd7db0824f7069a2592aa3cc5dd63879e60c7fbbf99d591a3d95bc2611b2d', 'paul98@example.net', '01422604158', 'Cindy Espinoza', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (54, 56, 'RT6012867', 'Cindy Espinoza', '1963-03-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (71, 54, 11, '2026-04-19 11:48:20', 'Confirmed', 1.00, 'PNR20260416B16898F6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (71, 450.0, '2026-04-19 11:48:20', 'Cash', 'Completed', 'TXN20260416114820DFAF26');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (57, 'ariley58080', 'scrypt:32768:8:1$td01dd6brZhogh1x$7393bacf7396b5463174cfdaf236c96c315b92e3b7110c2381e84c9553bf7b62e5f219889e972cc3105595e0751981978cf48dfb2c992ca5f07e38829044ae9f', 'joseph40@example.com', '01944522870', 'Krista Acevedo', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (55, 57, 'ML9582504', 'Krista Acevedo', '1981-09-28', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (72, 55, 5, '2026-03-26 11:48:20', 'Confirmed', 1.00, 'PNR20260416A11EEB17');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (72, 1300.0, '2026-03-26 11:48:20', 'Cash', 'Completed', 'TXN20260416114820B62C99');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (73, 55, 15, '2026-03-29 11:48:20', 'Cancelled', 1.00, 'PNR2026041640A9E527');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (73, 425.0, '2026-03-29 11:48:20', 'Credit Card', 'Refunded', 'TXN2026041611482055E915');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (58, 'john6421306', 'scrypt:32768:8:1$SWmP48AIJdZEnuzn$2f2d5b321b151a3b403d98addaeea34e8bf9584eb4695f55d14581ee7c95bdcd6164a95fbf1cb64536490163ba0415a4237a6e3a7c47489ee245edfa3b0949bd', 'rlopez@example.com', '01816304136', 'Ashley Mullins', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (56, 58, 'BY9976270', 'Ashley Mullins', '2005-05-07', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (74, 56, 2, '2026-04-11 11:48:20', 'Confirmed', 1.00, 'PNR20260416649719F8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (74, 855.0, '2026-04-11 11:48:20', 'Nagad', 'Completed', 'TXN20260416114820DC4904');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (75, 56, 16, '2026-04-03 11:48:20', 'Confirmed', 1.00, 'PNR20260416EDE19A7D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (75, 780.0, '2026-04-03 11:48:20', 'Credit Card', 'Completed', 'TXN202604161148206335C3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (59, 'robinsoncalvin79459', 'scrypt:32768:8:1$GkgKBevghl0m8P8R$d7bf6abe11484d51213cda39a33653259b438204a7d09445835161fb39188b92e2b8bcdcb26fcb10638c6f84e320c1bb13a67eee95ebfaafd8abf2ac4bc51e6a', 'margarettran@example.net', '01973314454', 'Gregory Cooper', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (57, 59, 'DB2871671', 'Gregory Cooper', '1958-01-13', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (60, 'lauren8046500', 'scrypt:32768:8:1$f05s0wK7WSvIJip8$6b73f33bbc5e90dba700f4a57c63f6ad0d250fe1e96412c2c047093f78fc0cec4d1d5e3ff55131370985fca40979aab6f10445fc31b6ae468c5935cb89868766', 'fhicks@example.com', '01923767575', 'Thomas Grant', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (58, 60, 'AI0929151', 'Thomas Grant', '1957-09-11', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (61, 'fjarvis22358', 'scrypt:32768:8:1$KMDXNTA8ZlMp5YIs$26cbc96c1d868ebead0e870cb347bc3503a83d3eff2f5f19fc527e4aa0d2bf18c8e48d85dc25ceb5df173ed4e24709bfd9bbbe382bd16309b8b084bc5a55b8e9', 'anthony77@example.com', '01338348546', 'Carrie Spencer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (59, 61, 'XT6126779', 'Carrie Spencer', '1947-06-04', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (76, 59, 2, '2026-04-12 11:48:20', 'Confirmed', 1.00, 'PNR202604165D3EAF8A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (76, 1398.0, '2026-04-12 11:48:20', 'bKash', 'Completed', 'TXN202604161148201A77C0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (62, 'melissanguyen96554', 'scrypt:32768:8:1$MCeJXSEHbbytZevq$ce2d8adbbb541b61412213c4ad2fae9852539133a97e5d3359d0f49b66a62ca38a225836cfb49a4aa8bc9bd65a68dc0623f9bcc7a217f6801d3a91e11ab09c84', 'dbrandt@example.org', '01942104152', 'Emily Harris', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (60, 62, 'RC6809703', 'Emily Harris', '1985-05-07', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (77, 60, 6, '2026-04-16 11:48:20', 'Confirmed', 1.00, 'PNR2026041696D2F5E8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (77, 950.0, '2026-04-16 11:48:20', 'Cash', 'Completed', 'TXN20260416114820C83C39');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (78, 60, 1, '2026-04-24 11:48:20', 'Confirmed', 1.00, 'PNR202604168D9AD625');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (78, 1398.0, '2026-04-24 11:48:20', 'Credit Card', 'Completed', 'TXN20260416114820217638');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (79, 60, 12, '2026-03-25 11:48:20', 'Confirmed', 1.00, 'PNR20260416E7A30AF0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (79, 285.0, '2026-03-25 11:48:20', 'bKash', 'Completed', 'TXN20260416114820D5DFF5');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (63, 'jperry4164', 'scrypt:32768:8:1$nlqrhPL4vS0ZQf4z$df5b03d9f346cc4954beb48a64d70b8979f0803f0cfc5e1c1b0aa1f338313eddcb5be7d6f68677c89695d6cf7763a61976a3cbfa142048e048c6d3f8abfefda6', 'robert61@example.com', '01548330942', 'Lindsay Allison', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (61, 63, 'CM9171378', 'Lindsay Allison', '1960-03-31', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (64, 'herrerakelsey39121', 'scrypt:32768:8:1$xO6Hlfvz08bEHano$a09204d5ddd1050a67ac33dc818ac85947067e6213e0b3e4f10ae14a014d2c8a8c257a166dc7a5bd89419aa5561ec66c059bb96ca6fbdf2314f050f1f95a26b6', 'vargaskenneth@example.net', '01844274848', 'Monica Hall', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (62, 64, 'CZ4662638', 'Monica Hall', '1987-08-04', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (80, 62, 8, '2026-04-26 11:48:20', 'Confirmed', 1.00, 'PNR20260416C66284E6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (80, 425.0, '2026-04-26 11:48:20', 'Credit Card', 'Completed', 'TXN20260416114820674185');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (65, 'abuchanan3907', 'scrypt:32768:8:1$w2FYVekkd21XEvPW$7fd0dc13accee443aad168a04343ab8ca54934a1c90c41b911438d8207945a3a16aeef5e7fc6a6d31ed034d7e4148ff40051f6859285ceea1cb382ce6438810f', 'brice@example.com', '01526890814', 'John Park', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (63, 65, 'ZM0383138', 'John Park', '1998-07-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (81, 63, 9, '2026-04-25 11:48:21', 'Confirmed', 1.00, 'PNR20260416711DBE48');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (81, 465.0, '2026-04-25 11:48:21', 'Cash', 'Completed', 'TXN202604161148211F0456');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (66, 'vvillegas75103', 'scrypt:32768:8:1$0fgf6PbrPBo8sKe6$8220e5705046cd48a7db11d31c97ab884bf592f830300173aa07aa88141c79e1d05ea73c4d57d7e6f7a136c0dd634813bf3e2c0634cf17af5fbd651f08b02e97', 'sherrycollins@example.com', '01652251517', 'Jason Decker', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (64, 66, 'LL4960191', 'Jason Decker', '1978-05-15', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (82, 64, 20, '2026-04-05 11:48:21', 'Confirmed', 1.00, 'PNR20260416FCBCC44A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (82, 800.0, '2026-04-05 11:48:21', 'Nagad', 'Completed', 'TXN20260416114821F6A1B3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (67, 'gthomas41203', 'scrypt:32768:8:1$k2EDKJ5OIwX7vemn$00b769d82bd0f2b2e743c50770346efcc9f5af00ef6e16858270e8844ae8e237d3cd8d84bd92f5b1afe3dc237063f964493a0c067f455214099fd82e5ca1691d', 'tpatrick@example.org', '01149377570', 'John Porter', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (65, 67, 'JW5056036', 'John Porter', '1976-05-11', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (83, 65, 1, '2026-03-21 11:48:21', 'Confirmed', 1.00, 'PNR2026041653C9DF28');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (83, 855.0, '2026-03-21 11:48:21', 'bKash', 'Completed', 'TXN2026041611482185DBD6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (68, 'zgreer82466', 'scrypt:32768:8:1$fFFF0feHj12TlVL5$18598ac2a57638c3d2af541e9d1247147f5d933a5c13ab1bef637e9050fcc7f6e722e4b789dba2cec6a0adf0d9f14a3f4cc48e46e4126caa69c45ae16c9f8636', 'kiara13@example.net', '01277899076', 'Gina Henson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (66, 68, 'QG8303623', 'Gina Henson', '1956-08-21', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (69, 'smithmichael74636', 'scrypt:32768:8:1$CG2NPXlWgDLUt59Y$d91d013d0028e988c46fe2eb58b2ddfd510296da07cd204b585016ba2ee3f1ad91e816ba22200bd5235a2bfe7cdf810f3767e30dbca2c347e1adda83ec7005e9', 'petersonamanda@example.net', '01146907324', 'Kathleen Walker', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (67, 69, 'OD5331044', 'Kathleen Walker', '1973-11-21', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (84, 67, 14, '2026-03-26 11:48:21', 'Confirmed', 1.00, 'PNR2026041695E255DA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (84, 1398.0, '2026-03-26 11:48:21', 'Cash', 'Completed', 'TXN20260416114821965C5C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (85, 67, 8, '2026-04-20 11:48:21', 'Confirmed', 1.00, 'PNR2026041601F6CC05');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (85, 950.0, '2026-04-20 11:48:21', 'bKash', 'Completed', 'TXN20260416114821C61A22');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (70, 'janet9444051', 'scrypt:32768:8:1$QiM9s898KcZFWr3J$02f2fd173516ef141f8f0ce02b37b13416dc4c36bbf5ea350fdd5269f261cf29f9632468da7e11e7ab3f112405094b71a06a8eee9bda4311ba0ed33a7055f2de', 'jennifer52@example.net', '01619392778', 'Alan Ruiz', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (68, 70, 'DX3944070', 'Alan Ruiz', '1968-08-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (86, 68, 13, '2026-04-30 11:48:21', 'Confirmed', 1.00, 'PNR20260416D72CDA77');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (86, 250.0, '2026-04-30 11:48:21', 'Credit Card', 'Completed', 'TXN20260416114821D06D6C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (87, 68, 7, '2026-04-11 11:48:21', 'Cancelled', 1.00, 'PNR2026041602E32250');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (87, 950.0, '2026-04-11 11:48:21', 'bKash', 'Refunded', 'TXN202604161148211F625D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (88, 68, 2, '2026-04-26 11:48:21', 'Confirmed', 1.00, 'PNR2026041617B99008');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (88, 285.0, '2026-04-26 11:48:21', 'Nagad', 'Completed', 'TXN20260416114821B04ECC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (71, 'colebenjamin80333', 'scrypt:32768:8:1$SEEPr1DkLOrscLet$a6bd3fa2f047214d98579d30dcd4fbe002d00bf22a91b872908a219b5b8bc74587dd6d46fed2d925b3dfafd81184508d6102e56339a54c67222b7acbd2915620', 'taylormark@example.com', '01704157431', 'Stephanie Figueroa', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (69, 71, 'SF8770011', 'Stephanie Figueroa', '1978-05-05', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (72, 'steven5272212', 'scrypt:32768:8:1$VpiqbhwwroxSzCYG$0257c1017f16905988b12b93f4f69a3be7cc4346fbb30fea21f57df5cdb2ff17da9c5bb72f9cddd08f063b64abf0a3f3b84d07cbb2b6a688256d5f2ea79aace9', 'walkerjames@example.net', '01993973680', 'Crystal Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (70, 72, 'RW3036528', 'Crystal Smith', '1980-10-04', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (73, 'oscardaniels29107', 'scrypt:32768:8:1$hxIwKe7rt9eJys8d$90d26fa33838828779d17b7cc848968ddcdbed0a13bc2a91526d0164f56d46fd9392577576004894e8723b938107d97cc067730da0af5e841b8bc7d49b1de6e6', 'jeffrey49@example.com', '01660368213', 'Joshua Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (71, 73, 'NX1911069', 'Joshua Smith', '1971-11-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (89, 71, 20, '2026-04-26 11:48:21', 'Confirmed', 1.00, 'PNR2026041697F9F988');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (89, 400.0, '2026-04-26 11:48:21', 'Cash', 'Completed', 'TXN2026041611482110A71E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (90, 71, 6, '2026-04-02 11:48:21', 'Confirmed', 1.00, 'PNR20260416D6A12FCF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (90, 1300.0, '2026-04-02 11:48:21', 'Credit Card', 'Completed', 'TXN2026041611482158C4AF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (74, 'richard1173109', 'scrypt:32768:8:1$VbqOQsdstkIqyXeu$19eabb8b86cdd0450b431c4ef38fece09ec928992f6396de53cc4a62629e1eae77fec730f81b2bb93424b45fbd767922bc0f005258d6d05265c0817e147ac435', 'michaelbates@example.net', '01730442879', 'Paul Reeves', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (72, 74, 'RN7281972', 'Paul Reeves', '1947-08-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (91, 72, 14, '2026-04-17 11:48:21', 'Confirmed', 1.00, 'PNR202604161C176731');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (91, 855.0, '2026-04-17 11:48:21', 'bKash', 'Completed', 'TXN20260416114821EE7858');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (75, 'tracylara62987', 'scrypt:32768:8:1$nUOzxl7xp1XOu0ay$03f1dbebe7770aa9be57944436e47dc013b61eb14d4cf4012f89dde2d738557ecb1f85d86e5e8ab87aa4bc29ce1df6cf80c9409c9a4b7872f0800c7de486622b', 'yatesjared@example.com', '01293679302', 'Mary Nelson DDS', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (73, 75, 'ED2131123', 'Mary Nelson DDS', '2004-06-07', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (92, 73, 12, '2026-04-23 11:48:22', 'Confirmed', 1.00, 'PNR20260416CD32C4C5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (92, 450.0, '2026-04-23 11:48:22', 'Credit Card', 'Completed', 'TXN2026041611482292E1BD');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (93, 73, 1, '2026-03-20 11:48:22', 'Confirmed', 1.00, 'PNR20260416DA1D299A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (93, 1398.0, '2026-03-20 11:48:22', 'bKash', 'Completed', 'TXN20260416114822A2834C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (76, 'tanner7593895', 'scrypt:32768:8:1$xqbEuXGTPkKHJSxm$0c05a7c52ddf38484b892cb8021ab5ea914430ad8a65e80f97e207323e28af354ca0dc6ff4bfd2980345d27f3e03d9af0769383266131c6dafbe16f8e8241397', 'stephen33@example.net', '01512296421', 'Robert Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (74, 76, 'ZV6620753', 'Robert Smith', '1964-07-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (94, 74, 8, '2026-04-17 11:48:22', 'Confirmed', 1.00, 'PNR20260416D07CBD61');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (94, 780.0, '2026-04-17 11:48:22', 'Credit Card', 'Completed', 'TXN20260416114822C27ADC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (95, 74, 19, '2026-04-17 11:48:22', 'Confirmed', 1.00, 'PNR20260416B49649B3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (95, 465.0, '2026-04-17 11:48:22', 'Nagad', 'Completed', 'TXN20260416114822821E5A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (77, 'brandonmoore25352', 'scrypt:32768:8:1$c4Z6TCxkD89vr0vS$6ea6c914e15378a3f7a00fef44467f96f7f26f905d526ada27e8a9e981a847f6495309898d4513dc62c41a9d69a8c970d8375c7e6c9cbae10654cfc25b2517ad', 'taylorbryan@example.net', '01669482277', 'Stacey Coleman', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (75, 77, 'JH0524699', 'Stacey Coleman', '1991-02-20', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (96, 75, 3, '2026-04-04 11:48:22', 'Confirmed', 1.00, 'PNR202604167F21EE38');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (96, 450.0, '2026-04-04 11:48:22', 'Nagad', 'Completed', 'TXN202604161148228EDEDB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (78, 'timothy4960680', 'scrypt:32768:8:1$FBaABBFaRKWYnLGi$b338cbde6740018ed4361fb4343b2d116bb199ac5909a339bbfcacfce2e023703a2e0b05b38ca90f1cbf5a9df9ff629fbd887aed156047cb3d4ba075f362f5d6', 'timothyoconnor@example.net', '01923739394', 'Margaret Lawson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (76, 78, 'XO9113746', 'Margaret Lawson', '1952-02-15', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (79, 'moralesandrew97413', 'scrypt:32768:8:1$Grir51ZihKYh9IzP$38a82f4f21ab64a976095760cc8cddb63907f8000d015782c92a8b6db1e7fd7e96fc6a5f3d797a399bf670e3687798aa75d43363f867eb1d9b3f7e3ff241929f', 'vsnyder@example.org', '01378257651', 'Erik Payne', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (77, 79, 'YO2408486', 'Erik Payne', '1948-06-23', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (97, 77, 18, '2026-04-18 11:48:22', 'Confirmed', 1.00, 'PNR20260416FCB7B17B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (97, 950.0, '2026-04-18 11:48:22', 'bKash', 'Completed', 'TXN20260416114822BE18EA');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (98, 77, 1, '2026-04-29 11:48:22', 'Confirmed', 1.00, 'PNR20260416E77FDD9C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (98, 285.0, '2026-04-29 11:48:22', 'bKash', 'Completed', 'TXN202604161148222A2C75');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (99, 77, 5, '2026-04-12 11:48:22', 'Confirmed', 1.00, 'PNR2026041646856AA7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (99, 250.0, '2026-04-12 11:48:22', 'Credit Card', 'Completed', 'TXN202604161148226BECB7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (80, 'matthew2688301', 'scrypt:32768:8:1$vFF6UeJ0VrSO6IvI$544eb6d97db0ec275487783e19e5f0c81d010e03bce2a522a9b331b37a356405fc0c12c60a8c860ed21aeb3612549362eb0408d91ea0901e9cb78c74285e5fa4', 'yingram@example.com', '01990050179', 'Christopher Waters', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (78, 80, 'PO6799652', 'Christopher Waters', '1985-03-28', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (100, 78, 5, '2026-04-16 11:48:22', 'Confirmed', 1.00, 'PNR20260416FD71F9A2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (100, 950.0, '2026-04-16 11:48:22', 'Nagad', 'Completed', 'TXN202604161148224DD9F2');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (101, 78, 6, '2026-03-25 11:48:22', 'Confirmed', 1.00, 'PNR20260416E2955BCE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (101, 1300.0, '2026-03-25 11:48:22', 'Cash', 'Completed', 'TXN2026041611482214B03A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (81, 'davidchandler17410', 'scrypt:32768:8:1$umBFNtZzA09KLIR1$a81b7fc35caca420631219c039a9ed4cd1b08270ffd274a02f7b1ea8aaec9d3abcb9c7ee2079f957ffa9c771f1628304a2f2f32eb106e33894b5b085c54c81f0', 'xweaver@example.org', '01074139449', 'Richard Lucas', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (79, 81, 'IS5691466', 'Richard Lucas', '1955-09-03', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (102, 79, 12, '2026-04-20 11:48:22', 'Confirmed', 1.00, 'PNR20260416B343E6A1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (102, 450.0, '2026-04-20 11:48:22', 'bKash', 'Completed', 'TXN202604161148224B0D0E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (103, 79, 5, '2026-03-26 11:48:22', 'Confirmed', 1.00, 'PNR202604164919D11A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (103, 800.0, '2026-03-26 11:48:22', 'Nagad', 'Completed', 'TXN20260416114822ACCAB0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (82, 'stevenfoster44833', 'scrypt:32768:8:1$yOJTWZMCwBcbtRf2$6a97664394389dc782ddd3be47ed0f9603e233cf3a4408c1d2423f9fbc068e897d800c257e4a51e7662a3b8d25a0eb644c61187f9a4b9219d4550e89ca0d1886', 'zabbott@example.org', '01315311180', 'Angela Martinez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (80, 82, 'UW7653726', 'Angela Martinez', '1951-09-27', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (104, 80, 9, '2026-05-01 11:48:22', 'Confirmed', 1.00, 'PNR20260416807CEF12');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (104, 1425.0, '2026-05-01 11:48:22', 'Nagad', 'Completed', 'TXN20260416114822230F0B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (83, 'christopher3440962', 'scrypt:32768:8:1$udPcQbZzQoAG8Bpr$995bd5e1c0bcfcb655e8621876f0c65d8e09dd28f085376d0caa78cf5453f4234e0bd60b4b979cfeef7bc5038098ec5606bbb09b2fa4efdadd8b7fd5fde87202', 'erin65@example.org', '01042193366', 'Shelby Guerrero', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (81, 83, 'UG5279860', 'Shelby Guerrero', '1984-04-17', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (105, 81, 3, '2026-04-30 11:48:22', 'Cancelled', 1.00, 'PNR2026041697B3CF03');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (105, 855.0, '2026-04-30 11:48:22', 'Cash', 'Refunded', 'TXN2026041611482299418D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (84, 'stewartlisa72416', 'scrypt:32768:8:1$iPlTKEVnJg3TdOix$743f44f6e1c07f29edc998d18637ea193c94b7ac02e7e1598b255b11a2515657a1cd62a509eb70e464c9b3dd1c685ad397f095d30a7208a2dceefde6e3cd78aa', 'roberthorn@example.net', '01094793040', 'Jonathan Rodriguez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (82, 84, 'UA5561510', 'Jonathan Rodriguez', '2000-04-06', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (85, 'qturner3291', 'scrypt:32768:8:1$cUBdd5ITVkk5PIfk$8dec9b497ed87dbd35556fd493b1d8eee4bca64bbba7bd0267e746588ca8785949329565ba19bbcec239943325bfc388bb2e28d97fcef73e521b8552d1b6f150', 'iwoods@example.com', '01699901814', 'Janice Reynolds', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (83, 85, 'RQ5742651', 'Janice Reynolds', '1970-06-23', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (106, 83, 17, '2026-04-16 11:48:23', 'Cancelled', 1.00, 'PNR20260416B29CD9B0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (106, 285.0, '2026-04-16 11:48:23', 'Cash', 'Refunded', 'TXN202604161148233E8483');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (107, 83, 3, '2026-04-24 11:48:23', 'Confirmed', 1.00, 'PNR202604164A854C29');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (107, 285.0, '2026-04-24 11:48:23', 'Cash', 'Completed', 'TXN2026041611482300CB0E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (108, 83, 1, '2026-04-20 11:48:23', 'Confirmed', 1.00, 'PNR202604160CBBCCF4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (108, 855.0, '2026-04-20 11:48:23', 'Cash', 'Completed', 'TXN20260416114823991A64');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (86, 'rachel9171433', 'scrypt:32768:8:1$byvaZtWCwAibNu64$7e9d70a2da2d0cd4efd3e51f128fd855063c7dcdf5b812b0c88b2df09db63f16084d68899c58cc4bc75f37feaeab4d8ef031b375c9dcc173723f29b705d7bf16', 'mcopeland@example.com', '01320610073', 'Brandon Briggs', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (84, 86, 'SW4420329', 'Brandon Briggs', '1957-08-01', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (109, 84, 18, '2026-04-21 11:48:23', 'Confirmed', 1.00, 'PNR202604168A5F5D87');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (109, 265.0, '2026-04-21 11:48:23', 'Nagad', 'Completed', 'TXN2026041611482357077C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (87, 'gzhang53490', 'scrypt:32768:8:1$J55jn9lwAMuNiiTz$161675bd386e6054eda6284ae6b552b18bc3ca41efa781e109875ef005c5bc88ba560cb7af00eee498bae39593f81c76f0d3f052667987fe14e3a267047c096b', 'evalentine@example.net', '01191798688', 'Alan Hodge', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (85, 87, 'ZU1140842', 'Alan Hodge', '1977-07-21', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (88, 'teresa0242619', 'scrypt:32768:8:1$9o3sIOhYqrekzuf9$a87b38a3c2dd1170da464416fdad3b95130d5501c0ff29fc9ac64ec2f03267b47df089a921ca6ad02186e2660102e700ef065f88ca3d9399a71bc5463dade2d7', 'rrose@example.net', '01167065310', 'Derek Nunez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (86, 88, 'DJ0988784', 'Derek Nunez', '1962-04-23', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (110, 86, 11, '2026-03-19 11:48:23', 'Confirmed', 1.00, 'PNR202604164B9606CC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (110, 450.0, '2026-03-19 11:48:23', 'Nagad', 'Completed', 'TXN202604161148231DBFC5');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (89, 'stephenterry10692', 'scrypt:32768:8:1$qH4QR0kydPoAXSgM$9e1c72ae3f74904db4d019ad89b43f551359d517845a2effd25ef846dcfad037c2578a8cde6c1f13c9bcd408db385d1c34dcdbe94c81d0e172427e0aabda0083', 'davidhancock@example.net', '01377435470', 'Jeremy Avila', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (87, 89, 'RO1505850', 'Jeremy Avila', '2003-02-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (111, 87, 9, '2026-03-23 11:48:23', 'Confirmed', 1.00, 'PNR20260416AA777029');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (111, 465.0, '2026-03-23 11:48:23', 'Nagad', 'Completed', 'TXN202604161148233389BC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (90, 'rebeccawest31655', 'scrypt:32768:8:1$OKAI81VpK2E3AzMd$d0ad37cd6a9dbce5e41dcfea0ac9cebb0c5692afec0172fcdedb160d4e0e83b01a7d71e7a4717f53ce8bcc58b4e5fe6736cd7de681f295ef1618cadbf10aebb6', 'fcross@example.com', '01022753422', 'Nathan Odom', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (88, 90, 'ZB6889784', 'Nathan Odom', '1966-12-11', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (91, 'kevinperry14030', 'scrypt:32768:8:1$y6XJI18ASKFm4rtA$221f1b3c2c7732d853fdb771c65608a9ed452730acc7493647f7ae5afc54f1ff46cf8f5ba005e8ee3aecb1ac14535bf1cf69ca07212a8ecde6fc8a311ae64089', 'rthomas@example.net', '01915887619', 'Melissa Petersen', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (89, 91, 'LH5540421', 'Melissa Petersen', '1971-01-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (112, 89, 17, '2026-04-10 11:48:23', 'Confirmed', 1.00, 'PNR2026041659469813');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (112, 855.0, '2026-04-10 11:48:23', 'Nagad', 'Completed', 'TXN202604161148236C13ED');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (92, 'freemankimberly7366', 'scrypt:32768:8:1$qqoaKyMl2zfGPCrw$ac56b5e79638dc9486f7a4fb28b03cd1f975a40ef63fe71302d7c6884cf4ab1cf74eace4ed2f89f14fd53ec2ffdd4c66e705c32aff43058cb0ae94f999188554', 'briana13@example.org', '01625919769', 'Stephanie Hughes', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (90, 92, 'HB6103026', 'Stephanie Hughes', '1948-05-08', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (113, 90, 2, '2026-03-22 11:48:23', 'Confirmed', 1.00, 'PNR20260416ED31F556');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (113, 1025.0, '2026-03-22 11:48:23', 'Nagad', 'Completed', 'TXN202604161148231B168D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (114, 90, 12, '2026-03-28 11:48:23', 'Cancelled', 1.00, 'PNR20260416DF7C714F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (114, 285.0, '2026-03-28 11:48:23', 'Credit Card', 'Refunded', 'TXN202604161148231034FA');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (93, 'erica9644011', 'scrypt:32768:8:1$4Gu2ymxiI16SfD9i$0925314df282a776271e557f3ccf4def1e9688011b8d45398a6b819b9a8a3dd8b4c9bfebd6e157faf59c75cca94ce1aaca734ec0190dc71d792365dae6f9c1ab', 'mflores@example.org', '01881481813', 'Joseph Mccullough', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (91, 93, 'TW8921282', 'Joseph Mccullough', '1984-12-20', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (94, 'stevenraymond4002', 'scrypt:32768:8:1$c9lGQd3loL75S5j9$cb70a2fb02e6dd42ff088d37d0e920c8decd9d995adc52452048bf95e923285242214345bd90157a9fa41cb6814630e229c6b46e5f01e58794015e4dcb10447b', 'joshuadrake@example.net', '01923110010', 'Justin Lozano', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (92, 94, 'LX5271873', 'Justin Lozano', '1962-11-24', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (115, 92, 9, '2026-04-10 11:48:23', 'Confirmed', 1.00, 'PNR202604164366C296');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (115, 295.0, '2026-04-10 11:48:23', 'Nagad', 'Completed', 'TXN20260416114823E24F97');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (116, 92, 17, '2026-04-18 11:48:23', 'Confirmed', 1.00, 'PNR20260416E2003D76');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (116, 1025.0, '2026-04-18 11:48:23', 'Credit Card', 'Completed', 'TXN20260416114823241ED6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (95, 'olsondeanna55243', 'scrypt:32768:8:1$2DQxJHw4aNERruWL$cd97fa6aa044ecb91f8287c8f340d2e3206b8da0891f50817998595aacabb392894857b08e2cb1a24d19994388d94c444190bf1ea3e808d1848e2ac698b7fe95', 'whiteshelby@example.net', '01107047856', 'April Carlson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (93, 95, 'AY0422382', 'April Carlson', '1992-09-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (117, 93, 3, '2026-04-20 11:48:23', 'Confirmed', 1.00, 'PNR2026041644E179BF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (117, 450.0, '2026-04-20 11:48:23', 'bKash', 'Completed', 'TXN202604161148232246AF');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (118, 93, 2, '2026-04-28 11:48:23', 'Confirmed', 1.00, 'PNR202604167D25D09E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (118, 285.0, '2026-04-28 11:48:23', 'Cash', 'Completed', 'TXN202604161148233F3474');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (96, 'laurencooper69688', 'scrypt:32768:8:1$r6dfL6GSnQuMTtRw$c8b056ec1628d0503261c7f0a535ba2f21e8e7ac8e65270ef8be102d8b59f0c2ad6613760ad53c4c94705a47a6a5a72c1a244122f68cb8936abcf72d4c17836a', 'zarnold@example.org', '01699601873', 'Zachary Buckley', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (94, 96, 'MC4962827', 'Zachary Buckley', '1965-05-04', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (119, 94, 20, '2026-04-25 11:48:24', 'Confirmed', 1.00, 'PNR202604164BDDB3AD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (119, 250.0, '2026-04-25 11:48:24', 'Cash', 'Completed', 'TXN20260416114824AEB201');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (120, 94, 11, '2026-05-01 11:48:24', 'Confirmed', 1.00, 'PNR2026041637D39CF1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (120, 855.0, '2026-05-01 11:48:24', 'Nagad', 'Completed', 'TXN2026041611482412DB5E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (121, 94, 19, '2026-03-28 11:48:24', 'Confirmed', 1.00, 'PNR20260416229B3C09');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (121, 465.0, '2026-03-28 11:48:24', 'Credit Card', 'Completed', 'TXN20260416114824874B29');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (97, 'martinezjennifer57319', 'scrypt:32768:8:1$ETxQYSmErVtYygfp$aa9dad027c44bb0690a9a270a84c11e08f3700abfeb23f96b8212f4e74bc753d587830a465f9ed34f0f85bff2756189a8872b3e842c1859aa19d221c65a63c9a', 'qhancock@example.net', '01679298712', 'Keith Tate', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (95, 97, 'TA2313259', 'Keith Tate', '1948-05-17', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (122, 95, 7, '2026-04-05 11:48:24', 'Confirmed', 1.00, 'PNR20260416FC188E63');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (122, 265.0, '2026-04-05 11:48:24', 'Credit Card', 'Completed', 'TXN202604161148249DEB98');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (98, 'fdavila62590', 'scrypt:32768:8:1$i1TcpdcTrqTwSqUJ$c3221565bf495691d4fd4045e63d138003601117b5e13e0dcf87b5886e5bf0e695bd21c022768c56c640b33fc983b6a6525e929bc94cad64040abe3240242573', 'vthomas@example.com', '01804897578', 'Michael Gibson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (96, 98, 'AF5730253', 'Michael Gibson', '1963-03-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (123, 96, 12, '2026-04-22 11:48:24', 'Confirmed', 1.00, 'PNR202604163C1B7F86');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (123, 450.0, '2026-04-22 11:48:24', 'Cash', 'Completed', 'TXN20260416114824283FA1');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (99, 'mcintyrebrian14955', 'scrypt:32768:8:1$ZxUvM83HSoIp9ltx$9646e0e0e9cd8bd380bd74efc54c2b56e56ac60f0c6d0904ef1f0759908a57ee4e9ad162c9200e6c1371ee58c85e1b8624b8d8a00bb58ca41a1fd8fac56ef512', 'brandirussell@example.net', '01269108910', 'Samuel Oconnor', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (97, 99, 'ON2114438', 'Samuel Oconnor', '1961-11-12', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (124, 97, 15, '2026-04-21 11:48:24', 'Confirmed', 1.00, 'PNR20260416781EF237');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (124, 950.0, '2026-04-21 11:48:24', 'bKash', 'Completed', 'TXN2026041611482491E31D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (125, 97, 16, '2026-04-15 11:48:24', 'Confirmed', 1.00, 'PNR2026041635E891C9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (125, 950.0, '2026-04-15 11:48:24', 'Cash', 'Completed', 'TXN20260416114824271F19');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (100, 'heather0570159', 'scrypt:32768:8:1$rQNoNU7Ie8bTBX8W$44bd7792d1d65b93f1523b7349599ab7874a3c448e33e8e09679264430a0f608eb20883fbdc24fae919e2bdd9dfae9643ad2474ddf7780c9597b67999371e45b', 'brandycarter@example.net', '01899815961', 'Jonathan Costa', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (98, 100, 'GI3391933', 'Jonathan Costa', '1947-05-02', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (126, 98, 17, '2026-03-28 11:48:24', 'Confirmed', 1.00, 'PNR202604164A52A825');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (126, 285.0, '2026-03-28 11:48:24', 'Cash', 'Completed', 'TXN202604161148246CFEA7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (127, 98, 1, '2026-03-25 11:48:24', 'Confirmed', 1.00, 'PNR202604165610D360');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (127, 450.0, '2026-03-25 11:48:24', 'Nagad', 'Completed', 'TXN2026041611482418AFB8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (128, 98, 3, '2026-03-22 11:48:24', 'Confirmed', 1.00, 'PNR202604162F16F6DF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (128, 450.0, '2026-03-22 11:48:24', 'Credit Card', 'Completed', 'TXN20260416114824A74D9B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (101, 'elizabethfisher68757', 'scrypt:32768:8:1$IkZ6G9fKQpSo9j4A$c1acc1a77b92ff463cec62ab0e43ecb460f4447861f088fb20d7f5aeb852428387412fe8a2f1abb38d8fb14276c1ef7d7e49698bfaef245d133a777b725220b2', 'bonniebrown@example.com', '01084506571', 'Emily Hurley', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (99, 101, 'KK7692235', 'Emily Hurley', '2004-01-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (129, 99, 14, '2026-03-27 11:48:24', 'Confirmed', 1.00, 'PNR20260416C4A2D908');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (129, 450.0, '2026-03-27 11:48:24', 'bKash', 'Completed', 'TXN202604161148243E80A3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (102, 'floresaaron96835', 'scrypt:32768:8:1$U1o0Gnhjhix702O6$4bb1508656435c4e018afa05800782e8ebbe30aee90d4b33c0872c0be6eeea933b72047e920f8203fa5fa48c808093239b1bd188b8776a42b46914755812f28a', 'charleswhitney@example.net', '01659509879', 'Nicholas Moore MD', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (100, 102, 'SO2650325', 'Nicholas Moore MD', '1950-01-28', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (130, 100, 2, '2026-03-23 11:48:24', 'Confirmed', 1.00, 'PNR202604161D2120E8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (130, 1398.0, '2026-03-23 11:48:24', 'bKash', 'Completed', 'TXN2026041611482457029F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (131, 100, 14, '2026-04-11 11:48:24', 'Confirmed', 1.00, 'PNR202604163AB7B5D7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (131, 1025.0, '2026-04-11 11:48:24', 'bKash', 'Completed', 'TXN20260416114824FA6136');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (103, 'charles9728425', 'scrypt:32768:8:1$N3jJtzITwCSb6oCF$061fab1da045a64911f9860207f5c4f4a2968cba04310746f0ff84dca71537a7df5af02278283cb0561e4284c02db1209e77a69ac9f4e3f0ae3a661b22a38357', 'cgardner@example.org', '01258841450', 'Teresa Pham', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (101, 103, 'NM5193234', 'Teresa Pham', '1981-12-02', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (104, 'adamskaren65609', 'scrypt:32768:8:1$t1RKLUoovzDeAgzo$9097e9d22768977cf5fe018a9e4e5448826876f6b9bd0d591d5c42f44bf156a95e5682b4854a2309ad8fa656076c6c400f332b228e34b44f14bc30d6aade8bc5', 'katiereyes@example.org', '01512697873', 'Dennis Acevedo', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (102, 104, 'PF9621987', 'Dennis Acevedo', '1959-01-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (132, 102, 17, '2026-04-23 11:48:24', 'Confirmed', 1.00, 'PNR202604165EE88C57');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (132, 1398.0, '2026-04-23 11:48:24', 'Nagad', 'Completed', 'TXN202604161148247BD3C3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (133, 102, 3, '2026-04-07 11:48:24', 'Confirmed', 1.00, 'PNR20260416DF0B1BBD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (133, 855.0, '2026-04-07 11:48:24', 'Nagad', 'Completed', 'TXN2026041611482405A8D7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (134, 102, 6, '2026-04-22 11:48:24', 'Confirmed', 1.00, 'PNR20260416A7B75F23');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (134, 400.0, '2026-04-22 11:48:24', 'Cash', 'Completed', 'TXN20260416114824E1F98E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (105, 'dennispotter33398', 'scrypt:32768:8:1$02sHaMa0Ni5RK6Dj$d19f85e69c1e75b55acfde67051b295b42c40578f1275f2abd8ed1f21bf8c139eb725e070876101dce5c57b79e99d91f405024d1041fcf3273782359848253f8', 'timothy04@example.com', '01664457436', 'James Kim', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (103, 105, 'ZS6322335', 'James Kim', '2003-03-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (135, 103, 17, '2026-03-20 11:48:25', 'Confirmed', 1.00, 'PNR202604160B3DCD3C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (135, 450.0, '2026-03-20 11:48:25', 'bKash', 'Completed', 'TXN20260416114825B82D92');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (106, 'larryhudson68350', 'scrypt:32768:8:1$hIlU8NEUxN62J03y$b83746ba292606fe9e9bb2f033da510d5beaa7fbdd86d8fc262a25e30560616e77f3c40baa534c7a99ded3aa63f9eacb5a3ce4a541e25da73edd66383fa9c94c', 'kennethevans@example.net', '01956042846', 'Danielle Williams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (104, 106, 'YI5231133', 'Danielle Williams', '1994-05-25', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (136, 104, 3, '2026-04-11 11:48:25', 'Confirmed', 1.00, 'PNR20260416B1CF2AC6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (136, 1025.0, '2026-04-11 11:48:25', 'bKash', 'Completed', 'TXN20260416114825858614');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (137, 104, 18, '2026-04-14 11:48:25', 'Cancelled', 1.00, 'PNR20260416136188C6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (137, 265.0, '2026-04-14 11:48:25', 'Nagad', 'Refunded', 'TXN20260416114825B28A95');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (107, 'phillipsgarrett8652', 'scrypt:32768:8:1$mKgwNJEz1KQmdBWv$1dd14fb5169fb9f5c9b79ae5b6a4049fa2c0021c5d0a2bbc294ea5447eef5130d888f6f21aece6f36fe1d6886d4c5ec0017b8c73958e370ff3a164476a9ff4bc', 'ellisamber@example.com', '01763700581', 'Jennifer Weber', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (105, 107, 'XH5399395', 'Jennifer Weber', '1984-04-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (138, 105, 18, '2026-03-19 11:48:25', 'Confirmed', 1.00, 'PNR202604165B611113');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (138, 425.0, '2026-03-19 11:48:25', 'Nagad', 'Completed', 'TXN20260416114825DD532B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (108, 'yeseniastone85063', 'scrypt:32768:8:1$KmZRDYxz7NPmMkbc$c4ae2308924556f3bbd68e6ca82352eb2098611791738e80ffac68b10c1464111a709a9a0247a1dc25463c745600805b340a5c6401fe6760a0efafbc9af661bf', 'robert55@example.net', '01433234076', 'Lauren Valdez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (106, 108, 'PZ3066520', 'Lauren Valdez', '2008-04-12', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (139, 106, 10, '2026-04-14 11:48:25', 'Confirmed', 1.00, 'PNR20260416411AA0E5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (139, 1425.0, '2026-04-14 11:48:25', 'bKash', 'Completed', 'TXN20260416114825E5A0F8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (140, 106, 9, '2026-05-01 11:48:25', 'Confirmed', 1.00, 'PNR20260416CE48E97F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (140, 1050.0, '2026-05-01 11:48:25', 'Nagad', 'Completed', 'TXN20260416114825E3F255');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (141, 106, 7, '2026-04-14 11:48:25', 'Confirmed', 1.00, 'PNR202604166141C895');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (141, 950.0, '2026-04-14 11:48:25', 'bKash', 'Completed', 'TXN20260416114825BEE812');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (109, 'samanthajohnson26009', 'scrypt:32768:8:1$K4b6vYyhnBKOasmh$3f7c32066e5115943d43952316d818ffae6e335905ea0be45c0d6838a1417aaf1f51646de197c4417bec0fedbcd64903e6f163cb409583d24d0418db70160b1f', 'stevenmiller@example.net', '01949037146', 'Jeffrey Ward', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (107, 109, 'XA6084994', 'Jeffrey Ward', '2006-09-30', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (142, 107, 20, '2026-03-17 11:48:25', 'Confirmed', 1.00, 'PNR20260416EECDE835');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (142, 950.0, '2026-03-17 11:48:25', 'Cash', 'Completed', 'TXN20260416114825AFFB09');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (143, 107, 1, '2026-04-18 11:48:25', 'Cancelled', 1.00, 'PNR202604161C450AC3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (143, 855.0, '2026-04-18 11:48:25', 'Nagad', 'Refunded', 'TXN202604161148253497C4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (144, 107, 16, '2026-03-30 11:48:25', 'Confirmed', 1.00, 'PNR20260416A6A52299');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (144, 950.0, '2026-03-30 11:48:25', 'Nagad', 'Completed', 'TXN20260416114825F4E047');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (110, 'rramos65758', 'scrypt:32768:8:1$UfnMQFAYGwbiU0UY$ad00de4d814eda8e8288cb85c783c79e0f71425b9857e44963f9b0dc34651e55e0332e5b14cd7fd635f0bec42d84ccb7a852e9b9c9cd184c70990dffc777c640', 'smithdeanna@example.net', '01727580721', 'Richard Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (108, 110, 'VB6321708', 'Richard Smith', '1989-03-19', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (145, 108, 1, '2026-04-28 11:48:25', 'Confirmed', 1.00, 'PNR2026041648065E99');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (145, 1025.0, '2026-04-28 11:48:25', 'bKash', 'Completed', 'TXN2026041611482586CEB6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (111, 'rogerramirez53292', 'scrypt:32768:8:1$RvL2HMo9K7MMAUcQ$32e8111622503d483a735dd5824c374226e59a92a562f9d8c95b440891b61bef529431ebc23d7455c7dfdc201b8f8b15fad1de37019e096daf5ab7e16fa1c84c', 'james58@example.org', '01953564282', 'Michael Wagner', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (109, 111, 'KC7807634', 'Michael Wagner', '1958-04-19', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (146, 109, 13, '2026-03-24 11:48:25', 'Confirmed', 1.00, 'PNR20260416B7CC4022');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (146, 800.0, '2026-03-24 11:48:25', 'bKash', 'Completed', 'TXN20260416114825E5F1BF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (112, 'mikebaldwin31571', 'scrypt:32768:8:1$1HPiff57P6EFVG7u$5354da679c202d3f73812b8d42938c8817b6baf420ef3de114fcf0692fe610be04c1d41149b43335842dead36b74783b25275da82efde2768c57fd1a67751fb8', 'suzanne37@example.net', '01100182448', 'Rachel Bennett', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (110, 112, 'XS0484558', 'Rachel Bennett', '1956-03-29', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (147, 110, 20, '2026-04-14 11:48:25', 'Confirmed', 1.00, 'PNR20260416AE0DB76C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (147, 400.0, '2026-04-14 11:48:25', 'Cash', 'Completed', 'TXN2026041611482525E1DC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (113, 'piercedonna10127', 'scrypt:32768:8:1$2YAVKwk3heVusoQx$e60818a1965867daf5e6ccf3d80eb4e62013e0c562821e79af208385c88ee2d09863ee40addeb97f1d7f4d5747775095eadc11fa9e5ff08b3bd40f5f66129a7b', 'daniel23@example.com', '01679050946', 'Christopher Mccarthy', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (111, 113, 'KU2191642', 'Christopher Mccarthy', '2002-10-15', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (148, 111, 5, '2026-03-29 11:48:25', 'Confirmed', 1.00, 'PNR2026041646F833DF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (148, 1300.0, '2026-03-29 11:48:25', 'Credit Card', 'Completed', 'TXN20260416114825EF2286');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (114, 'eduardo8980426', 'scrypt:32768:8:1$tnuYixiY6Le4wfjc$f0b1cd99bf641b7947c316f59d577cf62262b3257949b36a5f0ce06336130830c5aa7ba88f5a7af950154bb805e423001250ff9a8024d4e55cb3ccc1e46cde57', 'james27@example.org', '01115010449', 'Destiny Odom', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (112, 114, 'JX8458634', 'Destiny Odom', '1994-08-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (149, 112, 1, '2026-03-21 11:48:26', 'Confirmed', 1.00, 'PNR20260416A796E23F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (149, 1025.0, '2026-03-21 11:48:26', 'bKash', 'Completed', 'TXN202604161148267B9990');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (150, 112, 12, '2026-04-23 11:48:26', 'Confirmed', 1.00, 'PNR2026041685DD80D4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (150, 1025.0, '2026-04-23 11:48:26', 'bKash', 'Completed', 'TXN202604161148264AA21B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (151, 112, 8, '2026-04-15 11:48:26', 'Confirmed', 1.00, 'PNR20260416F5376E38');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (151, 265.0, '2026-04-15 11:48:26', 'Credit Card', 'Completed', 'TXN202604161148260B1E52');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (115, 'justin3010938', 'scrypt:32768:8:1$Jhjc2nFOQ8VeDjit$3cd6e9d1024cd30df1295c54aeeed8808839a8b55ae6b56895de4158f92e4e684f1725a1a2f79544acf67ae8ab7b5d3fec765c68e6021cf3d0683d39ce05adb7', 'jasonsmith@example.org', '01563835537', 'William Miller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (113, 115, 'ZX9954131', 'William Miller', '1992-06-28', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (152, 113, 8, '2026-04-25 11:48:26', 'Confirmed', 1.00, 'PNR202604166C9B8168');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (152, 950.0, '2026-04-25 11:48:26', 'Nagad', 'Completed', 'TXN2026041611482698A696');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (153, 113, 11, '2026-04-23 11:48:26', 'Confirmed', 1.00, 'PNR20260416BB72EC4F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (153, 1398.0, '2026-04-23 11:48:26', 'Cash', 'Completed', 'TXN202604161148265FC4D9');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (154, 113, 15, '2026-04-26 11:48:26', 'Confirmed', 1.00, 'PNR20260416C65FAFFA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (154, 265.0, '2026-04-26 11:48:26', 'Cash', 'Completed', 'TXN202604161148268403B2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (116, 'jeffrey7570011', 'scrypt:32768:8:1$Tg2e7KsCwymgVW8E$0ef0d97fcc6bd29b4c961959796d21618587b5cf8ce3a2b9ee9135ac3b26b85444661d7388e90eef4afafb49a777873ef520574b4e1cd4219e54f29a0a4b557d', 'richard80@example.net', '01591017317', 'Norma Scott', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (114, 116, 'HK3846332', 'Norma Scott', '2008-02-22', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (155, 114, 11, '2026-04-09 11:48:26', 'Confirmed', 1.00, 'PNR20260416A47F364E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (155, 855.0, '2026-04-09 11:48:26', 'Credit Card', 'Completed', 'TXN2026041611482681033B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (156, 114, 6, '2026-04-29 11:48:26', 'Confirmed', 1.00, 'PNR20260416DD0165D7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (156, 400.0, '2026-04-29 11:48:26', 'bKash', 'Completed', 'TXN2026041611482643D48F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (157, 114, 18, '2026-04-14 11:48:26', 'Confirmed', 1.00, 'PNR2026041657B3560D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (157, 425.0, '2026-04-14 11:48:26', 'Cash', 'Completed', 'TXN202604161148265E49A2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (117, 'xwhite60259', 'scrypt:32768:8:1$Y2xpOents0YJL7VN$47f7dbb5327e60144a9da1ef13fe7a753779280d4d54d1397d1cad77bff09e1e3749079fa85adda4e8f0282d8dfff2e5d2d019fcc8d19adecf23d27d1f1c71ad', 'scottrivera@example.net', '01218569272', 'Justin Williams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (115, 117, 'OI6240461', 'Justin Williams', '1964-04-07', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (158, 115, 14, '2026-03-25 11:48:26', 'Confirmed', 1.00, 'PNR20260416977B7A30');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (158, 855.0, '2026-03-25 11:48:26', 'bKash', 'Completed', 'TXN20260416114826A5BA1F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (159, 115, 19, '2026-04-03 11:48:26', 'Confirmed', 1.00, 'PNR20260416FB28FA22');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (159, 870.0, '2026-04-03 11:48:26', 'Cash', 'Completed', 'TXN202604161148264A9D30');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (118, 'fnovak60720', 'scrypt:32768:8:1$TVaff9PGemzC71JC$122af58947dbe89dea2a84fc4391405e5fd808ab07c321a180fdeaafa1844d7240636cc76cb956346c4b9bacd70ede1642ff5d3538c5c59d8817c303cb58c4db', 'thomas89@example.com', '01123937934', 'Dawn Martinez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (116, 118, 'HJ7379551', 'Dawn Martinez', '1960-02-11', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (119, 'kimberly7820607', 'scrypt:32768:8:1$mfDCFTLYfSqOOENs$59b1f6b255f1b83ad5c3c134e806acd5857b6822209e1aa49f4a3c6c52f98424f0331986ace535c1fd59371c7d43e26434c0ff1619b4aeb85ffe9ac9355f9713', 'williamsvictoria@example.org', '01663348004', 'Jerome Oneill', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (117, 119, 'PE3528849', 'Jerome Oneill', '1971-02-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (160, 117, 6, '2026-03-19 11:48:26', 'Confirmed', 1.00, 'PNR20260416F6CDE26C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (160, 250.0, '2026-03-19 11:48:26', 'bKash', 'Completed', 'TXN20260416114826F4E9D4');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (120, 'janet985324', 'scrypt:32768:8:1$iY1AP57mKzz5rNt9$106e2b0a20f93a073eeaa5dc5b267fec794f01c35e8c29314b5d094ce49669fff94418275811edf18efcc10265d4603b6279062320a7a95fdf0e83f0f42191a3', 'laurasilva@example.com', '01627486660', 'Katherine Alvarado', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (118, 120, 'CE4890984', 'Katherine Alvarado', '2005-12-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (161, 118, 9, '2026-04-08 11:48:26', 'Confirmed', 1.00, 'PNR2026041610410817');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (161, 465.0, '2026-04-08 11:48:26', 'Credit Card', 'Completed', 'TXN20260416114826085FFB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (121, 'javier2153915', 'scrypt:32768:8:1$i2xAFxHcg7dDAV3P$5f70febb907fdc8a7ca4d636ec57fbe83e98dc6a7c1b88c8ed0f36167ebdc232d60affd0dd29b447ef681e5e07ba0970bba7a3084f135e1802135776868159db', 'johnsanchez@example.com', '01040954078', 'Stephen Mcdaniel', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (119, 121, 'YM2207940', 'Stephen Mcdaniel', '1990-01-08', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (162, 119, 9, '2026-04-30 11:48:26', 'Confirmed', 1.00, 'PNR2026041656F6AF81');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (162, 1050.0, '2026-04-30 11:48:26', 'bKash', 'Completed', 'TXN2026041611482659DE20');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (163, 119, 2, '2026-03-31 11:48:26', 'Confirmed', 1.00, 'PNR20260416E3DBDADD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (163, 450.0, '2026-03-31 11:48:26', 'Credit Card', 'Completed', 'TXN2026041611482623FB20');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (122, 'nguyennathan25489', 'scrypt:32768:8:1$nR8trqNRIOU1Raqy$9280c4126db5d1e4e197bec2c47237769cfe0fd9782cc4b848c1b8d6255144118b889d2e129cefeefef1467c3a57817f1fb8b3fb1efc85322a67d084bfc359b3', 'john29@example.com', '01010496148', 'Claudia Pham', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (120, 122, 'MI5691166', 'Claudia Pham', '1998-07-10', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (164, 120, 3, '2026-03-20 11:48:26', 'Confirmed', 1.00, 'PNR20260416D1F9C050');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (164, 285.0, '2026-03-20 11:48:26', 'Cash', 'Completed', 'TXN20260416114826D2BE63');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (165, 120, 6, '2026-04-07 11:48:26', 'Confirmed', 1.00, 'PNR20260416968EB10B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (165, 250.0, '2026-04-07 11:48:26', 'Cash', 'Completed', 'TXN2026041611482653C53D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (166, 120, 3, '2026-03-30 11:48:26', 'Cancelled', 1.00, 'PNR202604160B4642E0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (166, 855.0, '2026-03-30 11:48:26', 'Credit Card', 'Refunded', 'TXN2026041611482634E9F2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (123, 'ashley5161832', 'scrypt:32768:8:1$zz3dPOPH34iF0RVp$94270ebf8e832701dbcbc35ca839ed099f99fe0f1c32a8de902a0168d79c3582db11223150cfbbd2dcbcd1cb3e7eca52c254f6af0fc918777fe21c4780ee81a1', 'justinharrison@example.com', '01554836258', 'Roger Campbell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (121, 123, 'UB8688986', 'Roger Campbell', '1955-01-15', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (167, 121, 2, '2026-04-17 11:48:27', 'Cancelled', 1.00, 'PNR20260416957DDFCE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (167, 855.0, '2026-04-17 11:48:27', 'Nagad', 'Refunded', 'TXN2026041611482791E910');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (168, 121, 12, '2026-04-25 11:48:27', 'Confirmed', 1.00, 'PNR20260416961CECD5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (168, 855.0, '2026-04-25 11:48:27', 'bKash', 'Completed', 'TXN202604161148270EE5B0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (124, 'ana4476644', 'scrypt:32768:8:1$o0QVqEZ1bdTkAUs1$37edf1efeddd2943ec034a12feac468a839f36fed2baf8efa2b0a46bf5e86161c416b8eeb6ebf0c84bea20cd48b612fd9830f87adaf77bdc71d9fe16bcec9cfd', 'morganstephen@example.org', '01058794586', 'Jeremy Williams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (122, 124, 'DF1250743', 'Jeremy Williams', '1982-11-22', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (125, 'valentinekaren72853', 'scrypt:32768:8:1$E8I9prH06eUg1zQ9$0bfee01f6d68e8c6aaf74beb7f08046707e8c4c4d47eb8a4baa6286cba8e4d380d69eb866deb7272228d29a1ea7b6181659ce7674d0dd70f5b519497693e9199', 'lorichung@example.com', '01865089626', 'Timothy Thompson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (123, 125, 'IV2721782', 'Timothy Thompson', '2002-04-12', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (169, 123, 16, '2026-04-01 11:48:27', 'Confirmed', 1.00, 'PNR2026041618131C53');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (169, 950.0, '2026-04-01 11:48:27', 'Cash', 'Completed', 'TXN20260416114827EB2A65');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (170, 123, 6, '2026-03-28 11:48:27', 'Confirmed', 1.00, 'PNR202604169CC85477');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (170, 250.0, '2026-03-28 11:48:27', 'Cash', 'Completed', 'TXN20260416114827EFDBDF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (126, 'sherry8870022', 'scrypt:32768:8:1$403QnCvJOqe5yP1u$cf5595f7fea5fd4bb3fa0e74c06f071fcafc8d853a2f24f19e63ba5052e09e3ae6c4f1eb40302c0c276f85eb863e971aee8600aca8668da29fcd73de7515ae9d', 'teresa53@example.net', '01377378523', 'Christopher Rice', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (124, 126, 'YG8021345', 'Christopher Rice', '1978-07-29', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (171, 124, 5, '2026-04-10 11:48:27', 'Cancelled', 1.00, 'PNR20260416D9ABB117');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (171, 950.0, '2026-04-10 11:48:27', 'Credit Card', 'Refunded', 'TXN202604161148272B155D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (172, 124, 5, '2026-03-19 11:48:27', 'Confirmed', 1.00, 'PNR202604164DD52CC8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (172, 1300.0, '2026-03-19 11:48:27', 'Credit Card', 'Completed', 'TXN202604161148270F1D62');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (127, 'michaelwalton74148', 'scrypt:32768:8:1$cf2atOBwcuXZsMSQ$2aa9a59ed6b20be3da3d18057786cbdf6b91064d05798f023be25a18a2e0f9494b8b25287f33a1b383af78a4036211f32973a66c4bba1649ec82f6548d33e253', 'lindaanderson@example.net', '01557589996', 'Christopher Carrillo', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (125, 127, 'VG9170302', 'Christopher Carrillo', '1996-01-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (173, 125, 7, '2026-04-05 11:48:27', 'Confirmed', 1.00, 'PNR20260416D30F9FDE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (173, 425.0, '2026-04-05 11:48:27', 'Credit Card', 'Completed', 'TXN202604161148275DD0B9');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (174, 125, 7, '2026-04-24 11:48:27', 'Confirmed', 1.00, 'PNR2026041678DDBFEA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (174, 265.0, '2026-04-24 11:48:27', 'Nagad', 'Completed', 'TXN20260416114827F2415B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (128, 'nancycarter19650', 'scrypt:32768:8:1$v7W8rqttHn1j8ypo$436057931a8f001ac178b9bf468caec35657c402e8d6b01c32349c8c8ff0652dc9680360dfc607373240f70721addb5826d4acc963bab15b2031ae066bf4ad81', 'wpowell@example.com', '01479142697', 'Justin Tanner', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (126, 128, 'HX7568363', 'Justin Tanner', '1993-08-19', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (175, 126, 15, '2026-03-17 11:48:27', 'Cancelled', 1.00, 'PNR202604166BF5B1E1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (175, 780.0, '2026-03-17 11:48:27', 'bKash', 'Refunded', 'TXN202604161148271A9AC2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (129, 'jacobsdavid69737', 'scrypt:32768:8:1$rezK3UjBJOuiAKMZ$e49eadbea220109d954d2019495fb18c102ae3bea080bdbde36663d1a6bf89475c3dd5f330256ec7062a2a7eacf835e2ee6e001f6735c531cbc1fa12ffc79071', 'ericortiz@example.net', '01428603457', 'Amanda Clark', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (127, 129, 'MB1952857', 'Amanda Clark', '1983-04-02', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (176, 127, 12, '2026-04-07 11:48:27', 'Confirmed', 1.00, 'PNR2026041674017DD9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (176, 1398.0, '2026-04-07 11:48:27', 'Nagad', 'Completed', 'TXN20260416114827175167');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (130, 'dianasmith60945', 'scrypt:32768:8:1$nEzdoYabXkYEFRsE$e08082c05b5f40c132f5f25fe1a389148568937d71ad74a436ec5200c2e0ec9911619e716d434d6b95b33ee6c172bb14fa66b6d131086224f02941528c1c3b34', 'hcraig@example.org', '01471582067', 'Stephen Murphy', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (128, 130, 'PO5810890', 'Stephen Murphy', '1977-04-19', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (177, 128, 16, '2026-04-17 11:48:27', 'Confirmed', 1.00, 'PNR202604162F4AA35C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (177, 425.0, '2026-04-17 11:48:27', 'Nagad', 'Completed', 'TXN2026041611482734FF19');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (131, 'gjohnson3250', 'scrypt:32768:8:1$B7PoLvo9uVE4YBrI$9afdc6ad705b3cef8fce38a688769c0671ae67f546d275908256126a1ba4c3a0de285162e3436bfae5aa649a06b592d4e936a04bbeed67b4d62c8b1e2d828fcc', 'michelle51@example.com', '01014805915', 'Cynthia Hughes', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (129, 131, 'ZG9321329', 'Cynthia Hughes', '1962-06-08', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (178, 129, 5, '2026-03-23 11:48:27', 'Confirmed', 1.00, 'PNR20260416FC71663D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (178, 800.0, '2026-03-23 11:48:27', 'Cash', 'Completed', 'TXN2026041611482720A6D6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (132, 'samuel6549306', 'scrypt:32768:8:1$1okx0Xj8o2KtpE8Q$399184414471fa17b856f3f70aa991d0efe599a3bdae17b02b7fbd861ac2bafe96b5c06ba19718871c47d2b850e8037c29a26a6e28f188db6afbfc3df886fe51', 'kyle76@example.org', '01103805338', 'Henry Bentley', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (130, 132, 'MY1792312', 'Henry Bentley', '2001-08-30', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (179, 130, 11, '2026-03-21 11:48:28', 'Confirmed', 1.00, 'PNR202604169A81D967');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (179, 450.0, '2026-03-21 11:48:28', 'Cash', 'Completed', 'TXN20260416114828A868C2');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (180, 130, 6, '2026-04-04 11:48:28', 'Confirmed', 1.00, 'PNR202604168F499D95');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (180, 400.0, '2026-04-04 11:48:28', 'Nagad', 'Completed', 'TXN2026041611482834313F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (133, 'rcohen64055', 'scrypt:32768:8:1$riVWZnvcdfZ67avI$e1da4ab59d3110de9c0bcbb1592ab66ba06422ab38e300e5e59b0e20b526d15ede389176d8be7ae3d058fc15567a8fff6c4d866aae8b0e937771a8a02a09c3c9', 'johnsondylan@example.net', '01824168248', 'Karen Dawson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (131, 133, 'QC4444045', 'Karen Dawson', '1996-05-02', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (181, 131, 12, '2026-04-29 11:48:28', 'Confirmed', 1.00, 'PNR20260416CBE31A90');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (181, 855.0, '2026-04-29 11:48:28', 'bKash', 'Completed', 'TXN20260416114828825C16');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (134, 'taylorjose50224', 'scrypt:32768:8:1$61CTqB8aCymmCF2n$4d3b9db16f79e322643e2e5bac1590b964d754358c76e6ec898360038ac30d856c5f0b31870dd6d34350a32e84c80e73f09f646c9a652dcb51b1223a1645ca64', 'robertshepard@example.net', '01915752563', 'William Mejia', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (132, 134, 'LL1447475', 'William Mejia', '1971-05-17', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (135, 'kimberlyandrews98382', 'scrypt:32768:8:1$ch3Ny4VSG9OKynKj$4e56cbf6d91c3a7147bfd82526847488d9006d44edcf2f4f606bdfa935cd56cc6926de533d4568e27d0065d7ce6cdc2fa3443232efcb0ed7b68860d7838f9a6c', 'omartin@example.com', '01849098157', 'Bryan Ramsey', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (133, 135, 'NA1151404', 'Bryan Ramsey', '1993-05-15', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (136, 'haydenkimberly23520', 'scrypt:32768:8:1$WuYgQFBVx2j0scNe$a6468613a0f9a6b1b81ef7e0e0f619c161705dd460683692664cd989874d509542ca177814066d8b5a7353e265cafa8d56e174491391aaa0ab56231e49b6d36f', 'smithlawrence@example.com', '01031769319', 'Kenneth Velasquez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (134, 136, 'SP0707353', 'Kenneth Velasquez', '1952-07-14', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (137, 'stephanie2338322', 'scrypt:32768:8:1$RvHiP0oMtSna2LsW$bf68150665a452d4283cbe10e9f81cf90506a8da1ddf8d5d7e793190fe50d94c020053c5e6e26bb0cceb36c71f02be79bec6dd7dfa7084c538e9b9a2d4eb6aa7', 'gerald50@example.net', '01872629241', 'Cathy Stevenson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (135, 137, 'HD8385558', 'Cathy Stevenson', '1987-07-05', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (138, 'gordonbrenda96384', 'scrypt:32768:8:1$k5T32K7VYh3hRXL5$5319c19bad888562f3a999d3e9af1c2e5ebbd1c0fb48c4e2bbdfa410d79179fd8ba3b52ff6133968f8ceba5b54d6b904c7d87be79979403a365d77eeb22471c5', 'charleshernandez@example.org', '01242363727', 'David Ferguson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (136, 138, 'PX8187116', 'David Ferguson', '1966-11-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (182, 136, 17, '2026-04-05 11:48:28', 'Confirmed', 1.00, 'PNR20260416DE9819F5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (182, 450.0, '2026-04-05 11:48:28', 'Cash', 'Completed', 'TXN20260416114828C6A224');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (183, 136, 12, '2026-03-28 11:48:28', 'Cancelled', 1.00, 'PNR202604160BB0CACC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (183, 1025.0, '2026-03-28 11:48:28', 'Credit Card', 'Refunded', 'TXN2026041611482879CF5E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (139, 'hfrancis76324', 'scrypt:32768:8:1$a2pDmkuZokiYBEga$7ea24c2127a38d4599814696490aeefac789713463141d7fdbdb567a42015eaa15c79b0ce4a8b5d909c99cbefbab3b2d8c793dbd01cd2a590cf2e5cff9e29c9c', 'josephboyd@example.org', '01716792004', 'Michael Ortiz', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (137, 139, 'ZC0700648', 'Michael Ortiz', '2003-01-16', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (140, 'frenchrobin79702', 'scrypt:32768:8:1$LBmuI66aJEtST43d$6694640b3d8a71f85a938a182ec5861da022f37857a5a4b271b4bccf49c7cc3734ee49d0e37d76283962927a4f8cb1c89103f3a1af11db6a39477f2691aadd4b', 'moonmichael@example.org', '01743062169', 'Brandon Flores', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (138, 140, 'BK4172543', 'Brandon Flores', '1994-03-22', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (141, 'oarellano10122', 'scrypt:32768:8:1$OxaNxU2YxbbfvaGf$2299f5fe96af8db4b9e02ef3bb50bcbcabc454f5416e736b6e12dbd6d4e2c3667f87ddab9cb8d253c8877b8ab67d82e8064db38ccdcd967ab7370dbcfe8c6e32', 'dianamorris@example.org', '01404795475', 'Jaclyn Bennett', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (139, 141, 'KR2703246', 'Jaclyn Bennett', '1976-11-03', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (184, 139, 7, '2026-04-08 11:48:29', 'Confirmed', 1.00, 'PNR2026041630E5EDFD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (184, 425.0, '2026-04-08 11:48:29', 'bKash', 'Completed', 'TXN202604161148295C0020');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (185, 139, 13, '2026-03-31 11:48:29', 'Confirmed', 1.00, 'PNR202604161180B523');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (185, 250.0, '2026-03-31 11:48:29', 'Cash', 'Completed', 'TXN20260416114829C7A179');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (142, 'chapmansamuel22082', 'scrypt:32768:8:1$GPdzqilXddCfkFuH$544688e22fbe0e1f81fe9d334f2c3744be49fe303653c70ce4d299307841292c6dc8225064dcf28ab7c9d3fa01b84a7146f7481b562f249f8db8c40b76a98e32', 'timothy03@example.org', '01489363232', 'Amber Morgan', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (140, 142, 'BQ4002597', 'Amber Morgan', '1984-10-19', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (186, 140, 6, '2026-04-03 11:48:29', 'Cancelled', 1.00, 'PNR2026041614EDCD4C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (186, 250.0, '2026-04-03 11:48:29', 'Nagad', 'Refunded', 'TXN20260416114829CCC4F3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (187, 140, 16, '2026-04-29 11:48:29', 'Confirmed', 1.00, 'PNR20260416A7DF1FA4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (187, 780.0, '2026-04-29 11:48:29', 'bKash', 'Completed', 'TXN202604161148292A31BC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (143, 'bryanreyes79206', 'scrypt:32768:8:1$i4WkYUTQgYfY9sJj$d6e45e63e4d852413a609933b67f0373f5e1e1d13961ca6e817518264bc6115566604b6db0394c0ee474777cd1fcb2d114fbe3576ccc57d03d5e9f183d0cf701', 'davidlopez@example.com', '01845035276', 'John Garcia', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (141, 143, 'KP0396941', 'John Garcia', '2004-11-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (188, 141, 9, '2026-04-02 11:48:29', 'Confirmed', 1.00, 'PNR202604162388A03C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (188, 295.0, '2026-04-02 11:48:29', 'Cash', 'Completed', 'TXN20260416114829B42E9F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (144, 'cowandavid37237', 'scrypt:32768:8:1$lIcIjPg8s65ezbbV$eecbcbcf2e97dd5416a421623f6d5b59cf91a136381112a20dc8868396c3d4e3a598be800976f1ef802854a51eba36027ce4b54f2a6e80d0e403f152708d0126', 'yrussell@example.net', '01353150925', 'George Thompson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (142, 144, 'DF4620500', 'George Thompson', '1954-09-25', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (189, 142, 8, '2026-04-30 11:48:29', 'Confirmed', 1.00, 'PNR20260416487342F4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (189, 950.0, '2026-04-30 11:48:29', 'Credit Card', 'Completed', 'TXN202604161148296ADB73');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (145, 'charles2524547', 'scrypt:32768:8:1$3M8pZbJfdYBOUS0u$8bdbf79fffd4a274477d143509b5cda93f04a70748330b8238ba1e86ff36a44a70051e0c90e1a2f8410c78afe4e5a21549f35ac0a4e127ba1528acf56490f3a8', 'nelsonnicholas@example.net', '01189551161', 'Shannon Watson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (143, 145, 'VU7330566', 'Shannon Watson', '2001-06-24', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (190, 143, 9, '2026-03-20 11:48:29', 'Confirmed', 1.00, 'PNR20260416D73883AE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (190, 870.0, '2026-03-20 11:48:29', 'bKash', 'Completed', 'TXN20260416114829D59206');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (191, 143, 20, '2026-04-04 11:48:29', 'Confirmed', 1.00, 'PNR20260416BA57E652');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (191, 1300.0, '2026-04-04 11:48:29', 'bKash', 'Completed', 'TXN20260416114829DA45B7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (192, 143, 10, '2026-04-10 11:48:29', 'Cancelled', 1.00, 'PNR20260416B36ED2A9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (192, 870.0, '2026-04-10 11:48:29', 'Nagad', 'Refunded', 'TXN202604161148299B0952');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (146, 'jennifermcintosh71490', 'scrypt:32768:8:1$NEo2zZT7eZFWfMNX$b24a1556c1e898b66601660400d5b395d41be90e99e6ceb108c37ae350683ef3652ede14987ede535a2f9b67ba503d3bd2592033a5a46bb0e6bf7da0b78f3455', 'nancytaylor@example.org', '01519888976', 'Laura Simmons', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (144, 146, 'KK1382212', 'Laura Simmons', '1953-06-04', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (193, 144, 6, '2026-04-06 11:48:29', 'Confirmed', 1.00, 'PNR202604168D4F4139');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (193, 1300.0, '2026-04-06 11:48:29', 'bKash', 'Completed', 'TXN20260416114829B673EB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (194, 144, 5, '2026-03-17 11:48:29', 'Confirmed', 1.00, 'PNR2026041664FA0A4D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (194, 800.0, '2026-03-17 11:48:29', 'Cash', 'Completed', 'TXN202604161148298A547A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (147, 'benjamin1741431', 'scrypt:32768:8:1$UMfZ3gc4tIHYiLxa$2378108db0853d7e367aae7f961ac80fb6d93495882af59eec85c14222e076394b0d8e3f9e48d22635fb8d9ccc22cd044ffb6ecbcc764a1c035063e2efda6168', 'leemichael@example.com', '01467640849', 'Kevin Jones', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (145, 147, 'NB9448216', 'Kevin Jones', '1987-10-16', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (148, 'timothycarter51332', 'scrypt:32768:8:1$JpCZSR5PpAyzm8A7$21de78e6269f432ebd381b2f9cba791b67758f975de9c75d7bbfe8c1691a0c438e529805140f295d48f495201b0075854372fe33f19a7f4024bf606dfdc63afd', 'riverasara@example.com', '01829576594', 'Barbara Hardy', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (146, 148, 'IA1666280', 'Barbara Hardy', '2003-10-02', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (195, 146, 10, '2026-04-17 11:48:29', 'Confirmed', 1.00, 'PNR2026041699B2A0CB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (195, 465.0, '2026-04-17 11:48:29', 'Cash', 'Completed', 'TXN202604161148293BBB86');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (149, 'samanthalopez10735', 'scrypt:32768:8:1$ZPwlRjyfYKdmI3ig$34797b0497c9c8db88a8fc3b315a9e458ee47cd4c28bf71ebd696586511bf40f3c2d2499955380f3b30a8f5d3e82b38e2f69cce146f0cbde35a3271d74fdb498', 'kendra33@example.com', '01637553438', 'Miss Jennifer Pierce MD', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (147, 149, 'RU0702488', 'Miss Jennifer Pierce MD', '1945-10-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (196, 147, 1, '2026-04-05 11:48:29', 'Confirmed', 1.00, 'PNR202604167AFCFB42');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (196, 285.0, '2026-04-05 11:48:29', 'Nagad', 'Completed', 'TXN2026041611482989911C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (197, 147, 17, '2026-04-03 11:48:29', 'Confirmed', 1.00, 'PNR202604163C549034');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (197, 1025.0, '2026-04-03 11:48:29', 'bKash', 'Completed', 'TXN20260416114829BC7E53');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (150, 'theodorebartlett6917', 'scrypt:32768:8:1$GB1qG1oXV8lUnmdf$3acf9aa311be40214e7bc2c44b8a1cda967110aec648e0a3dda9a1911984633f6923c5c578f8ffd2ac43f6e19552a2b8388e65a6a2bff1d334c72139fceb4d44', 'dennis32@example.com', '01788355454', 'Cindy Lynch', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (148, 150, 'LL9549936', 'Cindy Lynch', '1998-10-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (198, 148, 5, '2026-04-17 11:48:30', 'Confirmed', 1.00, 'PNR202604163FA98016');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (198, 400.0, '2026-04-17 11:48:30', 'Nagad', 'Completed', 'TXN20260416114830791EC2');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (199, 148, 11, '2026-04-04 11:48:30', 'Confirmed', 1.00, 'PNR20260416ACBAF60E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (199, 1398.0, '2026-04-04 11:48:30', 'Cash', 'Completed', 'TXN202604161148301BA80A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (151, 'pshaw57832', 'scrypt:32768:8:1$Hy7Wx61VpGQY9UY5$51a6ce27782d2d8d6b61975309ba1127c80760a6ea82635b73728c360d21bf9d6883eb462f286a5e618f4b35bc2667cff6d681c1168c3f01f47c0bd8aec14811', 'qfisher@example.com', '01577473578', 'Amber Lewis', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (149, 151, 'FI4790389', 'Amber Lewis', '1948-07-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (200, 149, 20, '2026-03-17 11:48:30', 'Confirmed', 1.00, 'PNR20260416B9BDD336');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (200, 950.0, '2026-03-17 11:48:30', 'bKash', 'Completed', 'TXN20260416114830005AD7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (152, 'jeffreygoodman62710', 'scrypt:32768:8:1$5K6WohKYIX5Lv8Zk$34d029007ced8d15283a00aa6c3328e73717fa3b8998baaa557a371895e3bc4912f3b37e01f25f0182095c479e073443b3c3a8f510e04c25401ca37cc6aa4abc', 'davidmosley@example.net', '01369262109', 'Colin Garrett', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (150, 152, 'JC9856423', 'Colin Garrett', '1983-05-17', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (153, 'anthony6556206', 'scrypt:32768:8:1$41I9sQxIQbjCMm3S$e0a9b5479702cfe36f28051e41240103b97c10af13c947bef5b902846273353425e1683911c8d425e2f12171785ad19c66fa8cb584446ea8a4068963febb9d21', 'simpsonsabrina@example.net', '01257259722', 'Allen Lopez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (151, 153, 'BE6559590', 'Allen Lopez', '2005-11-19', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (201, 151, 4, '2026-03-30 11:48:30', 'Confirmed', 1.00, 'PNR20260416792560ED');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (201, 285.0, '2026-03-30 11:48:30', 'Cash', 'Completed', 'TXN202604161148308DFEF3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (202, 151, 20, '2026-04-28 11:48:30', 'Confirmed', 1.00, 'PNR202604169F67ACE7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (202, 950.0, '2026-04-28 11:48:30', 'Cash', 'Completed', 'TXN20260416114830B22E3C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (154, 'olivervickie74051', 'scrypt:32768:8:1$6tJkptmb4wNjpSCU$1dece7348501e46e0d7971c3014f21d3cfba4f650075ba1b8fe4abb94b8638c73b469b35137e1453f11a2265a7040558d68ed30786e3a2384b2819e6ab25fe0e', 'mhunt@example.com', '01391477262', 'Lisa Sanchez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (152, 154, 'NT3430796', 'Lisa Sanchez', '1998-02-20', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (203, 152, 16, '2026-03-18 11:48:30', 'Confirmed', 1.00, 'PNR2026041649428B6A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (203, 950.0, '2026-03-18 11:48:30', 'Nagad', 'Completed', 'TXN202604161148309E0D6E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (155, 'lisagallagher30191', 'scrypt:32768:8:1$iQGOOVjLAwnt1vGi$160d6e4bee88398cc1120c912f0d975209a20ef405c032079cec9d51b2ecf99775ec62e694533440fc066b26c5e4ec6be30e13b7624cabaef767fa4f4c69a180', 'wagnernicholas@example.com', '01570508113', 'Tracy Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (153, 155, 'HM2243807', 'Tracy Smith', '1990-05-29', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (156, 'alexandra4586138', 'scrypt:32768:8:1$Nz2h6R6JHEAW94F1$fb676818a5819bb7a4c92cd22e8025e0fae77127db7367baa0a0d1038e39384c31d3098d36608c27e40069caa2418b503a05505ce361277967793b4e28ecac73', 'tiffanyclark@example.org', '01094829462', 'Samantha Baker', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (154, 156, 'OE8747449', 'Samantha Baker', '1996-02-02', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (204, 154, 14, '2026-04-11 11:48:30', 'Confirmed', 1.00, 'PNR2026041630B10B40');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (204, 855.0, '2026-04-11 11:48:30', 'Credit Card', 'Completed', 'TXN202604161148302AEF7D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (205, 154, 16, '2026-03-30 11:48:30', 'Confirmed', 1.00, 'PNR202604168CAB125D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (205, 780.0, '2026-03-30 11:48:30', 'bKash', 'Completed', 'TXN2026041611483057AF91');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (157, 'shermanstephen55334', 'scrypt:32768:8:1$OTpdCV3vwOqG40Rr$66c97c273d734aa31b39be9ca0dbf09c4908ad4df215a8bfb81cb1993f91b3c3528917773c1a2f409b0a22b70ceee18e5ab2fa2e7e02694b6f3d0fcd85aa23b0', 'adkinstanya@example.com', '01824447126', 'Matthew Warren', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (155, 157, 'MT6016099', 'Matthew Warren', '1966-08-02', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (206, 155, 13, '2026-03-17 11:48:30', 'Confirmed', 1.00, 'PNR2026041632B0DD67');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (206, 400.0, '2026-03-17 11:48:30', 'Nagad', 'Completed', 'TXN2026041611483029AF91');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (207, 155, 13, '2026-04-08 11:48:30', 'Confirmed', 1.00, 'PNR20260416FE5EE669');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (207, 1300.0, '2026-04-08 11:48:30', 'Nagad', 'Completed', 'TXN202604161148302FD933');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (158, 'quinnsteven67956', 'scrypt:32768:8:1$f0vP9dvko0zUTK4X$ae070a005e3b670b9c001059b9148f5a02437dbf178e42d5c039b5461ff848f3eed711467d14777b77a2b7a15ad03b6ca2724bf2cc13978e85db916dad35b058', 'ylittle@example.com', '01621843045', 'Evelyn Ford', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (156, 158, 'VR4109797', 'Evelyn Ford', '1958-03-11', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (208, 156, 1, '2026-03-23 11:48:30', 'Confirmed', 1.00, 'PNR20260416FE8CC400');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (208, 1398.0, '2026-03-23 11:48:30', 'Credit Card', 'Completed', 'TXN202604161148305BC4D7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (209, 156, 13, '2026-03-21 11:48:30', 'Confirmed', 1.00, 'PNR20260416152E84AA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (209, 400.0, '2026-03-21 11:48:30', 'Nagad', 'Completed', 'TXN2026041611483058F891');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (159, 'melissamccann25362', 'scrypt:32768:8:1$Qkcu2Rvxyycx7QVo$8ed3c2a897b82793c46f65d20bc93aad0ba82ea43fbd0f4c629358db58b070e00eb9ba8c23fc2fe3858f3f357322257d45f7f89e5139c314c9ccb7e00c098051', 'uflores@example.net', '01519323877', 'Amanda Williams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (157, 159, 'AY9767387', 'Amanda Williams', '2004-03-05', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (210, 157, 6, '2026-04-26 11:48:31', 'Confirmed', 1.00, 'PNR202604164DD33503');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (210, 950.0, '2026-04-26 11:48:31', 'Nagad', 'Completed', 'TXN20260416114831AA9584');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (211, 157, 12, '2026-03-27 11:48:31', 'Confirmed', 1.00, 'PNR2026041676C24599');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (211, 1398.0, '2026-03-27 11:48:31', 'Credit Card', 'Completed', 'TXN20260416114831760A6B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (212, 157, 13, '2026-04-15 11:48:31', 'Confirmed', 1.00, 'PNR2026041611297542');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (212, 400.0, '2026-04-15 11:48:31', 'Cash', 'Completed', 'TXN20260416114831050953');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (160, 'qmiller84630', 'scrypt:32768:8:1$f68g2kkNOGCCz7Zm$7d1d96f24ebc96f8e6518b01fcc8689ac95a81ce59d4e3b3ebc8c3a2526c714fe2c92f9b9913de900f43180d612384384b9fa36a4d7013869e3135459b5df554', 'masonsheila@example.net', '01430135154', 'Meghan Lopez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (158, 160, 'QP2021195', 'Meghan Lopez', '2000-10-08', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (213, 158, 9, '2026-03-28 11:48:31', 'Confirmed', 1.00, 'PNR20260416B255DA14');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (213, 870.0, '2026-03-28 11:48:31', 'bKash', 'Completed', 'TXN20260416114831089298');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (214, 158, 6, '2026-04-22 11:48:31', 'Confirmed', 1.00, 'PNR202604167D031807');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (214, 250.0, '2026-04-22 11:48:31', 'Cash', 'Completed', 'TXN20260416114831FC9AAE');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (161, 'amytucker91096', 'scrypt:32768:8:1$TZUOQ4P1iMjoAHmR$e7768f02aeceb4c2741a89c0210ee96526bdb44735948759d529b2f18426d158154f89b9910fcd7175d7c3717cd08f132dd0ab0c8f470c98d27611e16912c081', 'dbennett@example.org', '01509204484', 'Sarah Bailey', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (159, 161, 'DV1250063', 'Sarah Bailey', '1985-07-25', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (162, 'joshuacarter35838', 'scrypt:32768:8:1$ldDY091TToRMt6GW$c295affca3abbc980f3531c68bbc6dac92049ea841b8aaa3daf37c3ccaf142f5c56f349cc6f61a735e2c236c9204491203cc216fc83101fdf7ae5d7c0df31e55', 'elizabeth24@example.org', '01809197651', 'Kimberly Wilkinson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (160, 162, 'GP1227763', 'Kimberly Wilkinson', '1955-05-19', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (215, 160, 9, '2026-04-30 11:48:31', 'Cancelled', 1.00, 'PNR202604161D9C7D5A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (215, 465.0, '2026-04-30 11:48:31', 'Nagad', 'Refunded', 'TXN2026041611483168352C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (216, 160, 8, '2026-03-24 11:48:31', 'Confirmed', 1.00, 'PNR20260416CB8CBE53');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (216, 265.0, '2026-03-24 11:48:31', 'Credit Card', 'Completed', 'TXN20260416114831FD67DC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (163, 'blackburnandrew44764', 'scrypt:32768:8:1$Jd5dXaZTLkHwN9fp$96ee730d2be21a6fa27e48abcb7e3043fa4f94584246a3c581051ea807a76b65cf1f76d8bece42cc8eb0a368ca2de7f7b2bc5a2a4901fc56b008de00334c0b8c', 'davidford@example.com', '01356596611', 'Michelle Jennings', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (161, 163, 'PC7192327', 'Michelle Jennings', '1966-08-27', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (217, 161, 9, '2026-04-26 11:48:31', 'Confirmed', 1.00, 'PNR202604164DB57375');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (217, 295.0, '2026-04-26 11:48:31', 'bKash', 'Completed', 'TXN2026041611483104D8C2');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (218, 161, 14, '2026-04-26 11:48:31', 'Confirmed', 1.00, 'PNR20260416A07FD89C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (218, 855.0, '2026-04-26 11:48:31', 'Cash', 'Completed', 'TXN202604161148312D923D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (219, 161, 6, '2026-04-08 11:48:31', 'Confirmed', 1.00, 'PNR20260416D96223D9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (219, 950.0, '2026-04-08 11:48:31', 'Credit Card', 'Completed', 'TXN20260416114831077367');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (164, 'robertagray71656', 'scrypt:32768:8:1$t4rMMxTWUVJAtw9U$d5b70137f9b845b1ddffc0e75d3026ec8dcb138ce3501d8b22d24ef02ef561f084647dcdbfbd7d4bd75ef39c95bb039f70e23b863cf855e3fa2737e1d0b395f4', 'kevin23@example.net', '01807871329', 'Mrs. Sara Valencia', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (162, 164, 'VL0967594', 'Mrs. Sara Valencia', '1991-01-29', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (220, 162, 13, '2026-03-20 11:48:31', 'Confirmed', 1.00, 'PNR202604163BBE91F5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (220, 400.0, '2026-03-20 11:48:31', 'Cash', 'Completed', 'TXN20260416114831057D27');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (221, 162, 1, '2026-04-08 11:48:31', 'Confirmed', 1.00, 'PNR2026041602943E2A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (221, 285.0, '2026-04-08 11:48:31', 'Cash', 'Completed', 'TXN202604161148313EAE72');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (222, 162, 1, '2026-03-27 11:48:31', 'Confirmed', 1.00, 'PNR20260416096E29D2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (222, 285.0, '2026-03-27 11:48:31', 'bKash', 'Completed', 'TXN2026041611483148B056');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (165, 'michealbryan58043', 'scrypt:32768:8:1$IR6Ni789Cifzvwmx$4367d6daf9b5b3245de64357a9c5bc3192b6eaa1427f66f2bd4336cae6341dd284c0349072e2d69ab6016a131f97cdffa482e91169ed02f9cab44b84c8e02df1', 'ywilson@example.com', '01275863832', 'Joan Porter', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (163, 165, 'NZ4531125', 'Joan Porter', '1983-03-25', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (223, 163, 10, '2026-04-26 11:48:31', 'Confirmed', 1.00, 'PNR20260416F40E8542');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (223, 1425.0, '2026-04-26 11:48:31', 'bKash', 'Completed', 'TXN202604161148311B0C08');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (224, 163, 18, '2026-03-25 11:48:31', 'Confirmed', 1.00, 'PNR20260416B7ABD819');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (224, 265.0, '2026-03-25 11:48:31', 'Credit Card', 'Completed', 'TXN202604161148313832F5');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (225, 163, 2, '2026-03-24 11:48:31', 'Confirmed', 1.00, 'PNR20260416D9F5F06E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (225, 1398.0, '2026-03-24 11:48:31', 'Nagad', 'Completed', 'TXN20260416114831F6076C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (166, 'jconrad43131', 'scrypt:32768:8:1$2A6Eunuwsdztq5B1$17883885a06bef8ca7551d71793dc01a91672b784b3d7a55c1341ab3daf03f76a6d1c46447df7caf8bb3f63283b1b493950246c40dda2d98f98ee5b9e3d55d27', 'julie83@example.net', '01010932173', 'Evan Schultz', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (164, 166, 'WH1120022', 'Evan Schultz', '1954-11-13', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (226, 164, 13, '2026-04-07 11:48:31', 'Confirmed', 1.00, 'PNR2026041640126581');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (226, 1300.0, '2026-04-07 11:48:31', 'Cash', 'Completed', 'TXN20260416114831F8904B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (227, 164, 11, '2026-03-20 11:48:31', 'Confirmed', 1.00, 'PNR202604163CFE9006');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (227, 855.0, '2026-03-20 11:48:31', 'Cash', 'Completed', 'TXN20260416114831A2D55C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (228, 164, 5, '2026-04-08 11:48:31', 'Confirmed', 1.00, 'PNR20260416288225B4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (228, 250.0, '2026-04-08 11:48:31', 'bKash', 'Completed', 'TXN2026041611483131F9B7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (167, 'thomas7942229', 'scrypt:32768:8:1$XIsF0PEZteZ1MW6M$db02c48dc9caa81e118982a44f0db956fcea2d9d6f02d8604281d2cc9792a034c3b3780f2a17d51f0ee7a8b63781c0528e19300fe75581b76605fe9ac75cec8b', 'reynoldscarrie@example.net', '01403664811', 'Brenda Wise', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (165, 167, 'GI7647753', 'Brenda Wise', '1965-04-14', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (229, 165, 6, '2026-04-13 11:48:31', 'Confirmed', 1.00, 'PNR2026041677932537');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (229, 950.0, '2026-04-13 11:48:31', 'bKash', 'Completed', 'TXN2026041611483132BCBD');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (230, 165, 13, '2026-04-17 11:48:31', 'Confirmed', 1.00, 'PNR20260416078CE08A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (230, 950.0, '2026-04-17 11:48:31', 'Nagad', 'Completed', 'TXN202604161148310955CC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (168, 'watsonjason48573', 'scrypt:32768:8:1$fhlXlznmeJSjqDbv$d72a834ccf7d3fd288a66069221b71f270691e74761218b8ebf1b7ea0d2beb46944a1945ffad3ce595392bd9b80cafb719e831d3b0708468a115fe288c6405ef', 'jasminesimon@example.net', '01156141831', 'Brooke Barnett', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (166, 168, 'ZK8864620', 'Brooke Barnett', '1965-08-09', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (169, 'andrewskevin48941', 'scrypt:32768:8:1$PgB9gXKELjctGamB$56b36237ce18bd1dd87eb9103f70201bbe6bbf7bbc20cbfe523085cdf9887afc254ec977b56156862beceee9d4fb70eb485fddd855a362c8a42f0a4985ef0b03', 'eric58@example.net', '01431337318', 'Shannon Bradford', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (167, 169, 'QN4509772', 'Shannon Bradford', '1950-05-08', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (170, 'woodsvanessa7014', 'scrypt:32768:8:1$1Ki2MCEqlEoKK0p7$d9eb0bafe0541d70f885b8beb7cb04c7049991331a38fdfc54d5a3b6eceb7690d7c41cc683411ff6673a891af4e22a26cfbec03d9c475c73bc5cfb064e9d10d4', 'loganscott@example.org', '01490873875', 'Ashley Campbell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (168, 170, 'OU8529960', 'Ashley Campbell', '1992-02-12', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (231, 168, 3, '2026-04-25 11:48:32', 'Confirmed', 1.00, 'PNR2026041619F9BA7C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (231, 855.0, '2026-04-25 11:48:32', 'Cash', 'Completed', 'TXN202604161148329607BE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (232, 168, 19, '2026-03-23 11:48:32', 'Confirmed', 1.00, 'PNR202604164B713C7D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (232, 870.0, '2026-03-23 11:48:32', 'Nagad', 'Completed', 'TXN20260416114832802894');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (171, 'sallen59860', 'scrypt:32768:8:1$gysas1s3TsqA6IbY$83fbdc3ec6e132a433c5848d33292c502449dfa12918957f0b6a4a4ab760a9f36e3994eb19f8e92c7e6d144d82f4bce1487da4eb9387f273e095cac068aac3b8', 'ybishop@example.org', '01808351201', 'Austin Huffman', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (169, 171, 'LU9366907', 'Austin Huffman', '1954-05-05', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (172, 'beckymoore95407', 'scrypt:32768:8:1$EtHqJqvnycvyLItM$f345cf77081b289435797a0e83c4cadfd3aeb4ba0199166cf71bdc53de87e211f00466241e81f5a16846b39d97ac089697bfd29b758f3e16833b01ac35bd98bc', 'fostermonique@example.com', '01188485572', 'Wesley Johnson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (170, 172, 'BK1917951', 'Wesley Johnson', '1955-09-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (233, 170, 13, '2026-04-27 11:48:32', 'Confirmed', 1.00, 'PNR20260416238B863B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (233, 950.0, '2026-04-27 11:48:32', 'Cash', 'Completed', 'TXN20260416114832F8F17A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (234, 170, 2, '2026-03-17 11:48:32', 'Confirmed', 1.00, 'PNR20260416BFD1F2EC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (234, 285.0, '2026-03-17 11:48:32', 'Nagad', 'Completed', 'TXN20260416114832B1A75D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (235, 170, 19, '2026-04-15 11:48:32', 'Confirmed', 1.00, 'PNR20260416C025D7B5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (235, 465.0, '2026-04-15 11:48:32', 'bKash', 'Completed', 'TXN20260416114832B562B4');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (173, 'bmooney23952', 'scrypt:32768:8:1$u4io0x2Xzb0cgtCx$7ece040784e2e5aa0d1c4857af89a2add0dd7e34a971dac5d36269af7748cb287d89daa0776bf4fd9d909f0802ed5a28f3a41bc88d7d52a2a7f7630f892d0c33', 'hendersonkarina@example.com', '01301236283', 'Autumn Lopez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (171, 173, 'NJ5387306', 'Autumn Lopez', '2007-11-12', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (174, 'andrew9327959', 'scrypt:32768:8:1$spvg4oMczrkzn8F4$c95462bed257bed12b2a6e0c5af3c1f13d93ecdd2cfff623f204e9809dda2219955ffd84f8b41bfd0436ad381c9db4bff73b707cb00fc7e98e379c2597ac6fd4', 'donna79@example.org', '01848741210', 'Dana Miller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (172, 174, 'LL6387458', 'Dana Miller', '1984-08-13', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (236, 172, 5, '2026-03-30 11:48:32', 'Confirmed', 1.00, 'PNR20260416709028C6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (236, 400.0, '2026-03-30 11:48:32', 'Nagad', 'Completed', 'TXN2026041611483234A76B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (237, 172, 17, '2026-04-03 11:48:32', 'Confirmed', 1.00, 'PNR20260416058F0C41');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (237, 285.0, '2026-04-03 11:48:32', 'bKash', 'Completed', 'TXN202604161148326FCFBC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (238, 172, 7, '2026-04-26 11:48:32', 'Confirmed', 1.00, 'PNR2026041640BBA7E0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (238, 265.0, '2026-04-26 11:48:32', 'Credit Card', 'Completed', 'TXN202604161148325A2F87');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (175, 'kenneth9942680', 'scrypt:32768:8:1$0rNjJcxftFJZL5h6$651d88909746c36c98d4ad75096979919eee0f7f2563ce899b93ad5c372863cc7cf48ded6ebae15fd954c6584b5edae6dd66640195a6b33a252d530e7313597c', 'cwade@example.org', '01025236458', 'Glenn Carter', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (173, 175, 'BL2767999', 'Glenn Carter', '1954-12-17', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (239, 173, 17, '2026-04-20 11:48:32', 'Cancelled', 1.00, 'PNR2026041645510345');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (239, 1025.0, '2026-04-20 11:48:32', 'bKash', 'Refunded', 'TXN202604161148327AA06E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (176, 'jsullivan13382', 'scrypt:32768:8:1$BJZV5namwZYyqxzN$8d7d67871e5de2145a6d26777ee04f47ccf32c937d2d79b785fc3a7564e451499d1010d26e8eb87d5965ba7e4c11369c043f973851c31ba6c2c9b26b83d7d4b4', 'nherring@example.net', '01633818646', 'Tamara Shaw', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (174, 176, 'EZ4351566', 'Tamara Shaw', '1956-03-24', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (240, 174, 3, '2026-03-31 11:48:32', 'Confirmed', 1.00, 'PNR20260416C55BA0E5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (240, 855.0, '2026-03-31 11:48:32', 'Nagad', 'Completed', 'TXN20260416114832875C51');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (241, 174, 3, '2026-04-05 11:48:32', 'Confirmed', 1.00, 'PNR2026041631593DFF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (241, 855.0, '2026-04-05 11:48:32', 'bKash', 'Completed', 'TXN2026041611483256A3B1');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (242, 174, 4, '2026-03-30 11:48:32', 'Confirmed', 1.00, 'PNR20260416977DCF4B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (242, 285.0, '2026-03-30 11:48:32', 'Nagad', 'Completed', 'TXN2026041611483276EB63');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (177, 'dwells31636', 'scrypt:32768:8:1$XPej22ZwEtATFRB3$8d36b88f6aa6a028b7aed42ceb1048cab3dd16d1eb0879ba494017a11da8ee60598037f9983c9e7e33372fd0908e76f178aaac33c88d32c43d6bb1ef8120596b', 'suzanne08@example.com', '01052546476', 'Tracy Lawrence PhD', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (175, 177, 'VY4034843', 'Tracy Lawrence PhD', '1949-06-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (243, 175, 19, '2026-04-01 11:48:32', 'Confirmed', 1.00, 'PNR20260416F005AB05');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (243, 870.0, '2026-04-01 11:48:32', 'bKash', 'Completed', 'TXN2026041611483263EDD8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (244, 175, 10, '2026-04-21 11:48:32', 'Confirmed', 1.00, 'PNR2026041601F8B1CF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (244, 870.0, '2026-04-21 11:48:32', 'Cash', 'Completed', 'TXN20260416114832F135D6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (178, 'dmelton15084', 'scrypt:32768:8:1$OyijvgQXE4uZvHoQ$7ed0547c382254c4e5fd8bce6e3425f621b5c5878deb0c4ed50e2380c2e9548bbe16ec7769bf39d3d7923603989bdcbded6c892632fc473b8866b1087e381e27', 'rwebb@example.org', '01072500649', 'Tammy Collins', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (176, 178, 'CX4794964', 'Tammy Collins', '1999-09-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (245, 176, 5, '2026-04-06 11:48:32', 'Confirmed', 1.00, 'PNR20260416FB09E03B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (245, 400.0, '2026-04-06 11:48:32', 'Cash', 'Completed', 'TXN20260416114832512E5C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (179, 'smithjohn21050', 'scrypt:32768:8:1$g5vdFcLuAjNTxUDc$9e217aab406a0c8cc7fb14e5e8f98e1b47c4acd86862178c7cb2c14e9b43ec587b97c3107913eafd5423553c7a0f43059cfd39f58c2ddcd0d181d4901ebf0577', 'apatterson@example.org', '01045845395', 'Katrina Kramer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (177, 179, 'FS3571296', 'Katrina Kramer', '2001-10-05', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (180, 'wheelermichael966', 'scrypt:32768:8:1$qVwxLcO0dkeSwSE6$291fd6d2ec8ffd7eb213ddcd0b84d47541db9ec0d702e9d9f3c81556cddb148077d0be55da223cf165b8f6bba3ec3200016e704c1c3f291fb160f6aba3f46080', 'dcline@example.com', '01410351382', 'Chloe Aguilar', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (178, 180, 'GR8754103', 'Chloe Aguilar', '1948-09-13', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (246, 178, 11, '2026-03-23 11:48:33', 'Confirmed', 1.00, 'PNR20260416B14D2B1B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (246, 450.0, '2026-03-23 11:48:33', 'Cash', 'Completed', 'TXN2026041611483310406D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (181, 'kelly1648041', 'scrypt:32768:8:1$TIPJ5kbI7bTaeE8q$78326b18cf483970f577c630e6faf7f6c6ee8dd2bd69ca2045ed480f61d9902da0a865d622195bc5384b517de66e05c5d0b2294730d867a5089b0f87b92f397a', 'justin52@example.net', '01967511205', 'Erica Miller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (179, 181, 'BR7154778', 'Erica Miller', '1998-05-18', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (182, 'reginaldjones67433', 'scrypt:32768:8:1$BZByTXrJYPbGOqfM$c602972baf13aec7498d0dd2d8f788fb39003436808443ece8bd2cb1d2f6e369fa841b33a94d5b4eba20c1b87274a1a702bbab1d0f506078c9352982960e5249', 'jeremy09@example.com', '01521891087', 'Connie Farmer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (180, 182, 'TI0093286', 'Connie Farmer', '1971-09-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (247, 180, 6, '2026-04-08 11:48:33', 'Confirmed', 1.00, 'PNR2026041639E3B7A4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (247, 250.0, '2026-04-08 11:48:33', 'Credit Card', 'Completed', 'TXN202604161148337C134A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (183, 'carolynmyers27340', 'scrypt:32768:8:1$dzEAAgwVBeXeoh23$dda15bbf11492b64ab15bef088e99fb8db7d6c7d3abcf553c81c29690e6074f914dc6dff42e6f8e4d7d72065eaf87ca45dd1c01140395d96554136372b321f3e', 'mitchellpeter@example.net', '01349943210', 'Jody Brown', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (181, 183, 'OC3308838', 'Jody Brown', '1977-10-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (248, 181, 4, '2026-03-19 11:48:33', 'Confirmed', 1.00, 'PNR2026041658579E4F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (248, 1025.0, '2026-03-19 11:48:33', 'Credit Card', 'Completed', 'TXN20260416114833988E86');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (184, 'daniellopez99199', 'scrypt:32768:8:1$0838ijD2XPjapKEJ$9a4650852ee924b4572ebe2000629e8d39203b7dea637fc9070784eecc84a601fab212c225d239a340c9b099f55b1d3cf22737d915cc64d29d54ecf07123dba0', 'thomaserin@example.com', '01308180438', 'Susan Lynch', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (182, 184, 'DF2737311', 'Susan Lynch', '1970-04-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (249, 182, 12, '2026-04-07 11:48:33', 'Confirmed', 1.00, 'PNR2026041693C28E3E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (249, 285.0, '2026-04-07 11:48:33', 'Nagad', 'Completed', 'TXN2026041611483351B936');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (185, 'megan0235011', 'scrypt:32768:8:1$sjnDNdiNm5AqlbYA$c0342196ba8334d8da3ae90f113f2901a7631c819f0cbef2689b824c9f6a921b1b8cf94d7e1fec7500f1368e6b97ef08593cdf46cf9b41f8abe7a11e09aa7bb5', 'clester@example.net', '01364478756', 'Michael Wilson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (183, 185, 'JH0734256', 'Michael Wilson', '1962-11-03', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (186, 'tiffanygreen45716', 'scrypt:32768:8:1$WpvF7iuKE40oVDgr$81f55daab3c2a0c6b3474951bd323a967e32b77971372b7026b216fec0c2885da2ee135b7aae8e8c7411c599991bfd288204aab353d23080e297a965a3600e9c', 'pcobb@example.net', '01461096973', 'Ronald Gonzalez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (184, 186, 'RM6697788', 'Ronald Gonzalez', '1948-12-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (250, 184, 3, '2026-04-15 11:48:33', 'Confirmed', 1.00, 'PNR20260416C279929D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (250, 1398.0, '2026-04-15 11:48:33', 'Nagad', 'Completed', 'TXN202604161148331B3194');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (251, 184, 16, '2026-03-22 11:48:33', 'Confirmed', 1.00, 'PNR202604161D2941DB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (251, 950.0, '2026-03-22 11:48:33', 'Cash', 'Completed', 'TXN202604161148336F94A9');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (252, 184, 14, '2026-04-10 11:48:33', 'Confirmed', 1.00, 'PNR202604167A0D530C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (252, 450.0, '2026-04-10 11:48:33', 'Nagad', 'Completed', 'TXN202604161148335C566F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (187, 'hunter4066134', 'scrypt:32768:8:1$pd5LhZiaO52q8QYp$fd497582221ab9af9af82d25e095f4c4ac8ffa66e1ea021b606bbf8e532e5b86677959c77df9ad07a330f1a5ac6bb00a52d99a4d33c4950d4f9403e8f2a0f6eb', 'juanperry@example.org', '01445136381', 'Morgan Green', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (185, 187, 'YB8772650', 'Morgan Green', '1992-10-08', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (253, 185, 12, '2026-03-22 11:48:33', 'Confirmed', 1.00, 'PNR2026041641DCE579');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (253, 450.0, '2026-03-22 11:48:33', 'Nagad', 'Completed', 'TXN20260416114833DD8E35');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (188, 'alexandracoleman40633', 'scrypt:32768:8:1$yJ2EJY7ldrixHen4$8b8e28dfd08778b9090abf63b3b5e8aa0485d64d92cc42acb04da2e2d307d91fd60087da8e26df12766f99330c7ea39d1719ac7dd452a5582cb72bdcbd68ba48', 'garciarussell@example.org', '01802822948', 'Amanda Ramirez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (186, 188, 'CE5487326', 'Amanda Ramirez', '2004-01-25', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (254, 186, 12, '2026-04-15 11:48:33', 'Cancelled', 1.00, 'PNR20260416037B5300');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (254, 1025.0, '2026-04-15 11:48:33', 'Credit Card', 'Refunded', 'TXN2026041611483317BA6B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (255, 186, 3, '2026-03-29 11:48:33', 'Confirmed', 1.00, 'PNR20260416C94237F6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (255, 450.0, '2026-03-29 11:48:33', 'Credit Card', 'Completed', 'TXN2026041611483321C639');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (256, 186, 11, '2026-04-27 11:48:33', 'Cancelled', 1.00, 'PNR2026041627F7E32C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (256, 855.0, '2026-04-27 11:48:33', 'Credit Card', 'Refunded', 'TXN202604161148337F4135');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (189, 'carolyn8821759', 'scrypt:32768:8:1$EwEEy5C6gCVvJ01o$dc7ac1c18eb85cb6d94b10a2c13de926550fd7bedacde445fe8e994c4c370c3c806661728d24af8ba836af0fcf62ed69a38a6b376ecdc0955ff9c139d2fd0fa0', 'melissagates@example.net', '01221235567', 'Kelsey Carter', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (187, 189, 'AY6531115', 'Kelsey Carter', '1996-11-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (257, 187, 2, '2026-03-17 11:48:34', 'Confirmed', 1.00, 'PNR20260416D97D8F07');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (257, 1025.0, '2026-03-17 11:48:34', 'bKash', 'Completed', 'TXN202604161148348B7143');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (258, 187, 12, '2026-04-16 11:48:34', 'Confirmed', 1.00, 'PNR20260416590BBAA8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (258, 855.0, '2026-04-16 11:48:34', 'Credit Card', 'Completed', 'TXN202604161148344A18D2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (190, 'luiswallace43133', 'scrypt:32768:8:1$ecO0JNfHpGguPUid$f4eb6a5a32500261ce344f6544c56763573d19a45336c1d3eefdcf02d87ca8a02c7edde21e713a6c3d27851a7186a8ea94c3037ca69cf63a7848f481074b3b1e', 'emendez@example.com', '01477321915', 'Benjamin Baldwin', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (188, 190, 'XM6080315', 'Benjamin Baldwin', '2004-12-12', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (259, 188, 2, '2026-04-01 11:48:34', 'Confirmed', 1.00, 'PNR202604169D3F6D4B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (259, 450.0, '2026-04-01 11:48:34', 'Nagad', 'Completed', 'TXN20260416114834D27509');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (191, 'robert4345671', 'scrypt:32768:8:1$lUJC6MjNfbRusvi6$727117ede251ff6e693b4e027218d964614fd47002cf7838576b2bcd0097febba50b00d565714dfba6dd16f760d035ad9f800c772443a3377e76326fec814e6a', 'torrestraci@example.org', '01423123960', 'Andrew Allen', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (189, 191, 'UD5361073', 'Andrew Allen', '1989-01-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (260, 189, 9, '2026-05-01 11:48:34', 'Confirmed', 1.00, 'PNR20260416C69E5828');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (260, 465.0, '2026-05-01 11:48:34', 'Cash', 'Completed', 'TXN20260416114834735DF4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (261, 189, 19, '2026-04-14 11:48:34', 'Confirmed', 1.00, 'PNR2026041619835E5B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (261, 295.0, '2026-04-14 11:48:34', 'Nagad', 'Completed', 'TXN2026041611483491E2C0');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (262, 189, 12, '2026-04-08 11:48:34', 'Cancelled', 1.00, 'PNR2026041691D345C0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (262, 285.0, '2026-04-08 11:48:34', 'Nagad', 'Refunded', 'TXN20260416114834873F38');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (192, 'juliebrown33401', 'scrypt:32768:8:1$z3wsnMK4nwmS14Rf$47cea0329428e5fbe916d03cefbc4a430fa83cea8c403799ac11e4a8c4b71aff818522c73471133ee0633d35779f778504d251bc157b638d61207a3d25d5202d', 'carterpatrick@example.org', '01384227393', 'Robert Meza', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (190, 192, 'LU8444647', 'Robert Meza', '1987-03-02', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (263, 190, 3, '2026-04-17 11:48:34', 'Confirmed', 1.00, 'PNR202604169004F916');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (263, 285.0, '2026-04-17 11:48:34', 'Cash', 'Completed', 'TXN2026041611483428998C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (264, 190, 14, '2026-04-26 11:48:34', 'Cancelled', 1.00, 'PNR20260416230A0CC5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (264, 1025.0, '2026-04-26 11:48:34', 'Nagad', 'Refunded', 'TXN20260416114834AF9ADB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (265, 190, 5, '2026-03-20 11:48:34', 'Confirmed', 1.00, 'PNR20260416AAD90DAB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (265, 400.0, '2026-03-20 11:48:34', 'bKash', 'Completed', 'TXN2026041611483486EE0F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (193, 'jimmyallen82269', 'scrypt:32768:8:1$K1PuSd7jT3mAIDyd$fef798a20b11abfec413342b181a14a316bf30e6f2261585fb7857e33260cfb487f4484119ff5d0d6dcbda23e275af267739f7d84be54f59ac33d8f08ea59a1b', 'harrisonwilliam@example.net', '01363359748', 'Jeanne Adams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (191, 193, 'WY2034594', 'Jeanne Adams', '1997-08-07', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (194, 'kimberlysmith7380', 'scrypt:32768:8:1$ZSQ5VHvEDMlmWgWV$630d4efc698138ea0bcfdc7d28b61cd57f5b3ff82d2932b8f4339cb9e15912fc4a2f6787c1d4457d9f4cc27c2d180321774adc787cca24752ff456b6a458171b', 'swilson@example.org', '01840316063', 'Joshua Lopez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (192, 194, 'MC7286150', 'Joshua Lopez', '1976-11-17', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (195, 'ywilliams64186', 'scrypt:32768:8:1$oQODhexdkk9AGmE8$d2303bdd4d67b722dd83bf416c0cece1cb3d8bc7f4344a9d2ff44a646ccf9a987fa7a29c1e2460454344d0f0686af4344ffaf5c54ba45f50ddafdcc0376465f7', 'kelly81@example.org', '01535214866', 'Natasha Brown', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (193, 195, 'JR3535403', 'Natasha Brown', '2000-09-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (266, 193, 18, '2026-04-20 11:48:34', 'Cancelled', 1.00, 'PNR20260416E22E20AE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (266, 265.0, '2026-04-20 11:48:34', 'bKash', 'Refunded', 'TXN20260416114834215189');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (267, 193, 17, '2026-04-18 11:48:34', 'Confirmed', 1.00, 'PNR2026041674EB9143');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (267, 1025.0, '2026-04-18 11:48:34', 'Cash', 'Completed', 'TXN2026041611483440E0DE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (268, 193, 9, '2026-03-27 11:48:34', 'Confirmed', 1.00, 'PNR202604161A87BDA8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (268, 870.0, '2026-03-27 11:48:34', 'Cash', 'Completed', 'TXN202604161148347F4BF7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (196, 'kevincooper83622', 'scrypt:32768:8:1$OmtrBpsBCdf32QSs$ed8225146461287f22951493d317bdfd7c55eaa1993951618b3d3890a589206ee4665b14321c6e4a3fae6c10429d71fcfe91470d1ae1d7fa15c0c3532fb3c451', 'rickypaul@example.net', '01633281817', 'Denise Serrano', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (194, 196, 'DS0310126', 'Denise Serrano', '1950-02-09', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (197, 'sheiladavis19385', 'scrypt:32768:8:1$gy7edn2yuBzL83CD$3e71905f3f63e45ed88cf8c47319d4c68d92521dc76641cc4aa3fc9ef2c02b761b12046756fd4f34c6604c35275822b5a6a66dfb3fe1a42efecc1ad0521675ba', 'james72@example.org', '01484299742', 'Kelly Williamson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (195, 197, 'ZX7814677', 'Kelly Williamson', '1961-03-14', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (198, 'jhowell45242', 'scrypt:32768:8:1$dorjRn5eOJqaLk4e$537e5db59e2674fbb4f24099fe78f21d1622fd2a15d1a4f23d6ab30f3419c3f83a5f19645ef03f9742d78b3525c17027d5ec4c017d945ec99ad765bec32737a2', 'pearsonleslie@example.com', '01728959053', 'Vincent Castillo', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (196, 198, 'HW9512692', 'Vincent Castillo', '1972-06-07', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (199, 'jessica3422649', 'scrypt:32768:8:1$GNxVSdUpuIOqWH4Z$acb35fc34ed63c952737353d87f565605073c49cb2ce8b9f0eede2bdaae26966189d89ec021d0457503801f1cd84829b652feaf539588308f00762d1003fa67f', 'vsweeney@example.org', '01680272854', 'Timothy Cunningham', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (197, 199, 'LV7417424', 'Timothy Cunningham', '2002-08-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (269, 197, 13, '2026-03-30 11:48:34', 'Confirmed', 1.00, 'PNR20260416C703B04E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (269, 400.0, '2026-03-30 11:48:34', 'Nagad', 'Completed', 'TXN20260416114834A71C62');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (270, 197, 20, '2026-05-01 11:48:34', 'Confirmed', 1.00, 'PNR202604164DACAD4C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (270, 800.0, '2026-05-01 11:48:34', 'Credit Card', 'Completed', 'TXN20260416114834F9810E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (200, 'jmelton58915', 'scrypt:32768:8:1$jnEbA2COCGMp7srw$98f4232b70de4ae85ed66bbf0ab31e208a08e99f508d9f68e7480ad67c6bbd16f0551ca46b1192f169295cfe06d710b50e0d4f72b46d51c6391c4aef05e1fc8c', 'loganjones@example.com', '01022284600', 'Heather Brandt', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (198, 200, 'QK8358166', 'Heather Brandt', '1992-04-17', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (271, 198, 5, '2026-04-28 11:48:35', 'Confirmed', 1.00, 'PNR202604166C6009D3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (271, 1300.0, '2026-04-28 11:48:35', 'bKash', 'Completed', 'TXN20260416114835DBB67C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (201, 'tom098574', 'scrypt:32768:8:1$nj2BugOA5KWK87g6$58835524ce3926bc04e6c4d491f3f980a70d767c46e454c61bce27dd41e4f6f19d17c5fca0387717268e860575b3c59b83202a6fccac3ba682c21e1828989d33', 'orichards@example.net', '01638982687', 'Shannon Davies', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (199, 201, 'FX7326754', 'Shannon Davies', '1983-12-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (272, 199, 13, '2026-03-26 11:48:35', 'Confirmed', 1.00, 'PNR202604165B0CD803');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (272, 800.0, '2026-03-26 11:48:35', 'Credit Card', 'Completed', 'TXN20260416114835E52D55');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (273, 199, 11, '2026-04-12 11:48:35', 'Confirmed', 1.00, 'PNR20260416F4C24EDD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (273, 855.0, '2026-04-12 11:48:35', 'bKash', 'Completed', 'TXN20260416114835A6772A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (202, 'smithtammy28812', 'scrypt:32768:8:1$9wkQRAQRWVhDO1Xg$1e5b0415580ff23c656be248f856e50d924f2aed01adb0cc7968583328ccd7f8fcf2c4d4694b7a350998a9d06dd2f4548e3e8c1c261eec8b85d9d597c4404160', 'tweaver@example.org', '01113791077', 'Dawn White', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (200, 202, 'GF3211848', 'Dawn White', '1984-10-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (274, 200, 2, '2026-03-27 11:48:35', 'Confirmed', 1.00, 'PNR20260416F2B4EC01');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (274, 1398.0, '2026-03-27 11:48:35', 'Credit Card', 'Completed', 'TXN2026041611483567D452');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (203, 'christophercooper32368', 'scrypt:32768:8:1$kFjM6L2MQ4p41wkp$6e699a6456c536791006332f53cc6cf26fa593f9e6ead2fa5da2902ed13e2d6bc53065d3b00b5c3ad681a30f6fc4ba901471336be1a2c3d3a9396d93ccb2aa8b', 'sarasmith@example.net', '01069725806', 'Christine Clark', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (201, 203, 'IU0945060', 'Christine Clark', '1991-02-28', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (275, 201, 7, '2026-04-04 11:48:35', 'Confirmed', 1.00, 'PNR2026041669C47876');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (275, 950.0, '2026-04-04 11:48:35', 'bKash', 'Completed', 'TXN20260416114835223CC3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (276, 201, 5, '2026-04-15 11:48:35', 'Confirmed', 1.00, 'PNR2026041638D21A8C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (276, 800.0, '2026-04-15 11:48:35', 'Credit Card', 'Completed', 'TXN20260416114835752602');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (277, 201, 13, '2026-04-04 11:48:35', 'Confirmed', 1.00, 'PNR2026041604AD9436');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (277, 950.0, '2026-04-04 11:48:35', 'bKash', 'Completed', 'TXN202604161148355191B8');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (204, 'jenniferpace31915', 'scrypt:32768:8:1$FZrCAzFTpJPSMUOl$92a85628bf8f8418cadb904db07ccd55063594b0d458b47a1e08e48107c7bcd9e9fef2c4ca302506aad76255a65a2ffd534a85a2cdd93d2eafce861e4196f11f', 'johnsonandrew@example.org', '01930775984', 'Lisa Gutierrez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (202, 204, 'SX9547025', 'Lisa Gutierrez', '1989-05-27', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (278, 202, 19, '2026-04-21 11:48:35', 'Confirmed', 1.00, 'PNR202604169B13033A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (278, 1050.0, '2026-04-21 11:48:35', 'Credit Card', 'Completed', 'TXN202604161148350B3D9F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (279, 202, 10, '2026-03-28 11:48:35', 'Confirmed', 1.00, 'PNR202604167FD8BD09');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (279, 1050.0, '2026-03-28 11:48:35', 'Cash', 'Completed', 'TXN202604161148355C3107');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (280, 202, 9, '2026-03-22 11:48:35', 'Confirmed', 1.00, 'PNR20260416C2902470');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (280, 1425.0, '2026-03-22 11:48:35', 'Nagad', 'Completed', 'TXN202604161148355D0109');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (205, 'joseph8237715', 'scrypt:32768:8:1$u1GOzc6LufdyOb1G$03a179be7596f3630a7d8906a0aad130bc54f39b2a0ebf373780d948e830ba3fa910e747ade29f000639af77d01eb60def856e56461d679f065c481e9cd7430b', 'elizabethenglish@example.net', '01371893283', 'Kevin Bradley', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (203, 205, 'BP7018089', 'Kevin Bradley', '1996-11-08', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (281, 203, 13, '2026-04-03 11:48:35', 'Confirmed', 1.00, 'PNR202604162A3A65BC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (281, 950.0, '2026-04-03 11:48:35', 'bKash', 'Completed', 'TXN20260416114835281892');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (282, 203, 15, '2026-03-24 11:48:35', 'Confirmed', 1.00, 'PNR2026041665D27ACC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (282, 265.0, '2026-03-24 11:48:35', 'bKash', 'Completed', 'TXN202604161148359D4136');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (206, 'gadkins35558', 'scrypt:32768:8:1$pdPyoNz5TdQukgMW$93c5317c01dd8c113b9c2f503534c5ea594de0fb1a357fb66ba242906e92cea3fdd8e5099d3743ff8ca3b89514154a0aa8f54457e78b46eb88c7b97fa83a6579', 'brandonduncan@example.org', '01270724361', 'Lawrence Franklin', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (204, 206, 'UN8911148', 'Lawrence Franklin', '1947-08-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (283, 204, 10, '2026-03-29 11:48:35', 'Confirmed', 1.00, 'PNR2026041606E6C58F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (283, 870.0, '2026-03-29 11:48:35', 'Nagad', 'Completed', 'TXN20260416114835EE5575');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (207, 'sarah5056756', 'scrypt:32768:8:1$1HT8gS07YSbIohy8$abe4063d99d58ae9ece06d537ad55140beb8af295dce27f949f4ee8abfb9eef4f6a800eca230664e082a6748f62c3a1a9bc99d0b7cb04470c5c661989c7abd24', 'simpsonapril@example.net', '01879883940', 'Kristin Mcdonald', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (205, 207, 'NU8754628', 'Kristin Mcdonald', '1975-02-04', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (284, 205, 7, '2026-03-21 11:48:35', 'Confirmed', 1.00, 'PNR20260416EF41D6B4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (284, 780.0, '2026-03-21 11:48:35', 'Nagad', 'Completed', 'TXN20260416114835C237B7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (285, 205, 13, '2026-04-06 11:48:35', 'Confirmed', 1.00, 'PNR202604164061BA61');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (285, 950.0, '2026-04-06 11:48:35', 'Nagad', 'Completed', 'TXN20260416114835E81039');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (286, 205, 12, '2026-05-01 11:48:35', 'Confirmed', 1.00, 'PNR20260416FE868F83');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (286, 450.0, '2026-05-01 11:48:35', 'Nagad', 'Completed', 'TXN20260416114835C94F9A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (208, 'kellygarcia1720', 'scrypt:32768:8:1$0zDXKK2uabl9G11o$c5c1adaa70eddbde04865ee0fa5e674ce82dc9d53b8aefc6e0bff85461575f677adba7cdc0e5fd707536ae782cc43851a2d661d7f648d5a6511e8b953d9904f6', 'laurenwilliams@example.net', '01794250616', 'Sandra Boyd', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (206, 208, 'NX8919243', 'Sandra Boyd', '1983-10-17', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (287, 206, 8, '2026-04-23 11:48:35', 'Cancelled', 1.00, 'PNR20260416CD871DB1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (287, 780.0, '2026-04-23 11:48:35', 'Nagad', 'Refunded', 'TXN20260416114835345DAD');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (209, 'nrios8216', 'scrypt:32768:8:1$5MlfO2UTjrAQohup$a28426e057c5b96c8e058759814cf0e3536bcd1ec974c9102849fe449c0f74e6775b78f26d0ac9c710be0d9b8a7dd9fb269f9c89476dc7ea2a0ac97e6c5b762c', 'jacobsgeorge@example.com', '01546922147', 'Andrew Anderson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (207, 209, 'QF0666242', 'Andrew Anderson', '1976-06-11', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (288, 207, 15, '2026-04-03 11:48:36', 'Cancelled', 1.00, 'PNR202604169C16AC77');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (288, 265.0, '2026-04-03 11:48:36', 'Credit Card', 'Refunded', 'TXN20260416114836200E23');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (289, 207, 7, '2026-03-27 11:48:36', 'Confirmed', 1.00, 'PNR20260416BCBD8992');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (289, 425.0, '2026-03-27 11:48:36', 'Credit Card', 'Completed', 'TXN20260416114836455B3E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (210, 'omcguire60486', 'scrypt:32768:8:1$OJ6lPOyqAm6UwzVG$b25ca59a335c62cc0f00651732fb7984534a62042e83cc40d8301003d7a69edaae5116bad2d3b2c75465e726d81dad7ff2b1a690d7c460516e030c799318e550', 'kathleen71@example.net', '01705263020', 'Sandra Carpenter', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (208, 210, 'XW5355893', 'Sandra Carpenter', '1948-03-05', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (290, 208, 20, '2026-04-20 11:48:36', 'Confirmed', 1.00, 'PNR20260416A0411735');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (290, 950.0, '2026-04-20 11:48:36', 'Nagad', 'Completed', 'TXN202604161148368855E6');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (291, 208, 18, '2026-04-05 11:48:36', 'Confirmed', 1.00, 'PNR2026041658AEB97F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (291, 780.0, '2026-04-05 11:48:36', 'Cash', 'Completed', 'TXN202604161148365DEBE2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (211, 'ycochran10269', 'scrypt:32768:8:1$EWBci4l4Kvtfxo6r$a9a3a06bb3a150fd37f8f9bd476f6aeda4c811745bd8c0b1ee0f60a972891fa168fd71b6f958ce79a2be462a66aab14467637c3f28ead49ecfbea30dec9badb1', 'huberjimmy@example.com', '01754592946', 'Kelly Rivera', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (209, 211, 'GZ7876364', 'Kelly Rivera', '1982-08-30', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (292, 209, 11, '2026-03-22 11:48:36', 'Confirmed', 1.00, 'PNR20260416394ADD34');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (292, 855.0, '2026-03-22 11:48:36', 'Credit Card', 'Completed', 'TXN2026041611483626F6C2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (212, 'wosborne1208', 'scrypt:32768:8:1$MSpy4pOf5yAnQxhx$49cd0b802dfd0be06870db3b8e00a3727c8f9a4d65cd24d1ba70b1b8a5abb92325704406f1fc38767b01e358a7d8a48172d0e8779701226a2ac0318cbc47f7d5', 'ejohnson@example.org', '01001942830', 'Mary Hays', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (210, 212, 'YY2765852', 'Mary Hays', '1987-05-01', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (293, 210, 7, '2026-04-06 11:48:36', 'Confirmed', 1.00, 'PNR20260416C62A1655');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (293, 265.0, '2026-04-06 11:48:36', 'bKash', 'Completed', 'TXN20260416114836C50BE6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (213, 'kmeyer90314', 'scrypt:32768:8:1$MO8nAMAqmkk3qll3$a10d33dc894d979db4ceb9390dd88b34d70e850bb6f1c93946e75eb1b987c873059d0d0083eaa2b7d75d3e1b4c2f1a46ffd80f3b88e08d1219711e7daf67a5de', 'bryantamy@example.org', '01232827349', 'Lauren Clark', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (211, 213, 'DE7839185', 'Lauren Clark', '1997-06-01', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (294, 211, 4, '2026-04-13 11:48:36', 'Confirmed', 1.00, 'PNR2026041691378D61');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (294, 1398.0, '2026-04-13 11:48:36', 'Cash', 'Completed', 'TXN20260416114836A5913A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (295, 211, 20, '2026-04-02 11:48:36', 'Confirmed', 1.00, 'PNR20260416FAF677CF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (295, 950.0, '2026-04-02 11:48:36', 'Cash', 'Completed', 'TXN2026041611483644E758');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (296, 211, 4, '2026-03-21 11:48:36', 'Confirmed', 1.00, 'PNR202604166E24B28C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (296, 285.0, '2026-03-21 11:48:36', 'Cash', 'Completed', 'TXN2026041611483673AC33');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (214, 'juliewhite49757', 'scrypt:32768:8:1$rMNdoDPfUyICuwVy$cae1c52b3a6a694838aa5606d1ba72d454fadf7530de0b955915ec2fa43d73a32eea75d8fe728ecd5471d399254c399b408d659a9c11eb6bfb1c8abc118ec813', 'leahmitchell@example.net', '01272078936', 'Rebecca Osborne', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (212, 214, 'MC7419993', 'Rebecca Osborne', '1961-04-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (297, 212, 4, '2026-03-24 11:48:36', 'Confirmed', 1.00, 'PNR20260416C90A2285');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (297, 450.0, '2026-03-24 11:48:36', 'Cash', 'Completed', 'TXN20260416114836CCB195');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (298, 212, 13, '2026-04-13 11:48:36', 'Confirmed', 1.00, 'PNR20260416C97B1708');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (298, 950.0, '2026-04-13 11:48:36', 'Credit Card', 'Completed', 'TXN2026041611483605A855');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (215, 'flittle14469', 'scrypt:32768:8:1$WzXxmuSg59ujGe5Z$3f66fdc91fc4732f808f2a822a12a5a83115ff81ae2c164aec7e2faa7a70a2631ce61d08338b4aebcd150d25bc2d45ff6c942796740daadca71e5dc785ef47bb', 'catherinebender@example.com', '01930304328', 'Ryan Lamb', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (213, 215, 'FF3883761', 'Ryan Lamb', '1949-04-14', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (299, 213, 18, '2026-04-16 11:48:36', 'Confirmed', 1.00, 'PNR2026041615C9A026');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (299, 265.0, '2026-04-16 11:48:36', 'Nagad', 'Completed', 'TXN202604161148365A430A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (300, 213, 7, '2026-04-05 11:48:36', 'Confirmed', 1.00, 'PNR2026041664ADBE67');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (300, 950.0, '2026-04-05 11:48:36', 'Credit Card', 'Completed', 'TXN20260416114836738FC8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (301, 213, 15, '2026-04-14 11:48:36', 'Confirmed', 1.00, 'PNR2026041682DAFCAD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (301, 265.0, '2026-04-14 11:48:36', 'bKash', 'Completed', 'TXN20260416114836DBA594');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (216, 'danielle8313297', 'scrypt:32768:8:1$dn5DpZqAM5orzyVm$291ad91f48b307672a4117ae411a4c6bc21f5a0ad9d989c91ea6c847c81fa991aba57b83f94db4e085b375187af12f5c9d0f6854c98f0135a0088ba2b96dd18c', 'eric00@example.net', '01609800408', 'Jeremiah French', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (214, 216, 'IM5624118', 'Jeremiah French', '1973-05-05', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (217, 'rodriguezashley20241', 'scrypt:32768:8:1$EIUuf7FYR25b6ISS$aeab46f276528b2d0b2be0fe42170b30f60df1ff5ecdf9f56eb66fd76414e4fa433cd0bda9cfaa10502fa63ee04304b9e7e3bb85dc99c984a3bd85ea3946600c', 'uwatson@example.net', '01235268380', 'Marcus Humphrey', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (215, 217, 'HH9819780', 'Marcus Humphrey', '1973-01-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (302, 215, 4, '2026-04-27 11:48:36', 'Confirmed', 1.00, 'PNR2026041662DEAAAB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (302, 450.0, '2026-04-27 11:48:36', 'Credit Card', 'Completed', 'TXN2026041611483614D459');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (303, 215, 7, '2026-03-23 11:48:36', 'Confirmed', 1.00, 'PNR20260416C27F6738');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (303, 265.0, '2026-03-23 11:48:36', 'Cash', 'Completed', 'TXN2026041611483605EFA7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (218, 'jeffrey8366902', 'scrypt:32768:8:1$4eT6ZfiI1C1GQHHh$9154c410035a4393298be7eaf5ef68f655743d1ccb0c7b81943419b24fa3801cfc2e68fdc95e51f21f19cdf5298497c27a0389116f2c3f4f328a996c28a92582', 'smithcarol@example.net', '01487175921', 'Tanya Wilson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (216, 218, 'MM9042728', 'Tanya Wilson', '1954-01-24', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (219, 'jeffreystout84942', 'scrypt:32768:8:1$NxAaFE5IdgnRjQod$4c4eb372ff70cea44e4a76809048f5a16cf7a14885fc152fc39c4c1bcf312da4146dc355c63db7ee48b65d0f7090d9cc65a36cad27e20166b7aadbc7a549b6ed', 'lauriekline@example.net', '01906905164', 'Daniel White', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (217, 219, 'UG4713939', 'Daniel White', '1977-01-23', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (304, 217, 14, '2026-04-05 11:48:37', 'Confirmed', 1.00, 'PNR20260416B2CF8B7B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (304, 285.0, '2026-04-05 11:48:37', 'bKash', 'Completed', 'TXN20260416114837F570E7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (305, 217, 9, '2026-04-30 11:48:37', 'Confirmed', 1.00, 'PNR202604167C0C7DDD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (305, 1050.0, '2026-04-30 11:48:37', 'bKash', 'Completed', 'TXN20260416114837DCFF93');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (306, 217, 20, '2026-03-27 11:48:37', 'Confirmed', 1.00, 'PNR20260416E791DAF0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (306, 400.0, '2026-03-27 11:48:37', 'bKash', 'Completed', 'TXN20260416114837F244B7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (220, 'kkerr66071', 'scrypt:32768:8:1$ExxM3AOvN3gB3ZMY$372a078669fe24f16b43b61d8d8b64dfd0e271f667fd9b85f835080bdb9e3f0c9bd85b9e167468f87e598031edc7f4ebae695e1250abc0b30b4254f5ad184276', 'gbryant@example.com', '01165163841', 'James French', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (218, 220, 'IV2376254', 'James French', '1982-03-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (307, 218, 9, '2026-04-26 11:48:37', 'Confirmed', 1.00, 'PNR20260416FE5315D2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (307, 1050.0, '2026-04-26 11:48:37', 'bKash', 'Completed', 'TXN20260416114837B16D8A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (221, 'michele3653050', 'scrypt:32768:8:1$Q7f2W1tizqFLLTXl$ed5351b52824cd9a146db1dd3766c35dd68f890e734c3adae5d7c5f1e2aa46234fbdb719ae0e769b9f8df02e67f72777ff2f1a90f38086cee5ec77417ce161b3', 'oowens@example.net', '01257274423', 'Nicholas Dunn', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (219, 221, 'BB9351590', 'Nicholas Dunn', '1965-03-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (308, 219, 8, '2026-04-23 11:48:37', 'Confirmed', 1.00, 'PNR2026041698B55F9E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (308, 425.0, '2026-04-23 11:48:37', 'Cash', 'Completed', 'TXN20260416114837B9E926');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (309, 219, 17, '2026-04-14 11:48:37', 'Confirmed', 1.00, 'PNR20260416AC84E135');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (309, 1398.0, '2026-04-14 11:48:37', 'Cash', 'Completed', 'TXN20260416114837819E18');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (222, 'anitaroach64710', 'scrypt:32768:8:1$8WyCOSzO3u5ZW91W$7d5f38aac2ecd9eb0e73870d4d22d029807651bb474aaadcb1f72a69077ee989bbf23d6aba0849d7a60a3df3bf4df6dde97d04b862c2da800f3da06ff343b749', 'erinstout@example.org', '01843419178', 'Amy Serrano', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (220, 222, 'FW6784262', 'Amy Serrano', '1952-10-04', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (223, 'anthonylloyd71331', 'scrypt:32768:8:1$U8WLNuGU29a51gUm$2852d7f20c750194ec01a3c42881660b6df3927e84a9ce7b7bcefbdafa65b389308748e09ca69947bac6f61f9f974a7d7397880f1b1e6d84ca171a17813dc417', 'ksanders@example.org', '01722164504', 'Aaron Craig', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (221, 223, 'AW2618639', 'Aaron Craig', '1958-01-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (310, 221, 1, '2026-03-23 11:48:37', 'Confirmed', 1.00, 'PNR20260416B8283AF9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (310, 285.0, '2026-03-23 11:48:37', 'Nagad', 'Completed', 'TXN202604161148377D34B8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (311, 221, 13, '2026-04-03 11:48:37', 'Confirmed', 1.00, 'PNR202604162F440F8E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (311, 250.0, '2026-04-03 11:48:37', 'Credit Card', 'Completed', 'TXN20260416114837439282');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (312, 221, 3, '2026-04-08 11:48:37', 'Confirmed', 1.00, 'PNR2026041687494C92');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (312, 450.0, '2026-04-08 11:48:37', 'Nagad', 'Completed', 'TXN20260416114837B63E74');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (224, 'emilysmith83997', 'scrypt:32768:8:1$qsi04V7jYgPFyG1k$8b823c62336be3572a114c73b537463a92c62312383fdcb67ea5b02666e1a86d6e387cb0d95ceaab0a05dc799f386fd5b06752ebd1a71e555d031f6d58719a1a', 'rharris@example.org', '01743193327', 'James Miller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (222, 224, 'VJ4862667', 'James Miller', '1956-07-23', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (313, 222, 15, '2026-04-10 11:48:37', 'Confirmed', 1.00, 'PNR20260416E638699D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (313, 425.0, '2026-04-10 11:48:37', 'Nagad', 'Completed', 'TXN202604161148376F30AC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (314, 222, 9, '2026-04-30 11:48:37', 'Confirmed', 1.00, 'PNR202604169B991B0C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (314, 870.0, '2026-04-30 11:48:37', 'Nagad', 'Completed', 'TXN20260416114837FCF9FA');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (315, 222, 10, '2026-04-15 11:48:37', 'Confirmed', 1.00, 'PNR202604165BE53D01');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (315, 465.0, '2026-04-15 11:48:37', 'Credit Card', 'Completed', 'TXN20260416114837097BB9');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (225, 'jamiegutierrez52670', 'scrypt:32768:8:1$A5b0DshFieuFhHLX$18b0cc3dc9c3fd849e06c683f9beee60c11b0acac474438b41497e2783eda95ce085c77844153ba62e51daf468df6974192c5e8948d988729365365518943a50', 'fergusongilbert@example.com', '01813873180', 'Ernest Cortez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (223, 225, 'LS8755496', 'Ernest Cortez', '1998-06-12', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (316, 223, 14, '2026-04-15 11:48:37', 'Confirmed', 1.00, 'PNR20260416F0F8B887');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (316, 285.0, '2026-04-15 11:48:37', 'bKash', 'Completed', 'TXN202604161148372606E1');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (317, 223, 10, '2026-04-02 11:48:37', 'Confirmed', 1.00, 'PNR202604166E1866A6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (317, 295.0, '2026-04-02 11:48:37', 'bKash', 'Completed', 'TXN20260416114837C1D614');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (226, 'tiffany2810052', 'scrypt:32768:8:1$wTX9L1ZSZngmKfB5$60a3d90709ffee19751bef92e11d05e2c067fcc11f9804892c7621de29c74e630eb4874a086571455a10fef78305a1eba7b357f397dfc9c93d631e67b9272723', 'jeffery28@example.net', '01737451530', 'Tanner Stephens', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (224, 226, 'EJ9065239', 'Tanner Stephens', '1945-10-28', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (227, 'turnerhenry47495', 'scrypt:32768:8:1$dHHok8yYKaLzdEUe$2b05d232403fe5e4dddebaedfd8fdd7bec4c4b2a0181cd0516030e2b6e8ad49ca9343bcc39e7a18fc5b10e6346e3b6b9dfec1554d548e7b0da059a96b818c572', 'michaeldiaz@example.org', '01267686069', 'Billy Perez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (225, 227, 'KZ5351271', 'Billy Perez', '1986-02-24', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (228, 'kstafford55511', 'scrypt:32768:8:1$VZo2HFngB4ZsKKDo$01b13b579f8960014a70398957427eef919077ca66eab4890807abb79349de11f5b88d4764ad2049700502a9fb74fccd1f7dd49efcf9049efd19be3afb416cd6', 'thomasstephen@example.org', '01763758894', 'Sergio Young', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (226, 228, 'QF1829110', 'Sergio Young', '1992-12-20', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (318, 226, 4, '2026-04-10 11:48:37', 'Confirmed', 1.00, 'PNR2026041682FBF4EF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (318, 285.0, '2026-04-10 11:48:37', 'Cash', 'Completed', 'TXN202604161148379D918C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (319, 226, 2, '2026-03-31 11:48:37', 'Confirmed', 1.00, 'PNR20260416FF623170');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (319, 1025.0, '2026-03-31 11:48:37', 'Cash', 'Completed', 'TXN202604161148372F5834');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (229, 'robbinsjames19086', 'scrypt:32768:8:1$4ybLPEkvucHpaOZ6$076b4db560f05cfc37565f3f233e8e912d2537cd410f05f95319cfc7e943e4f856171ae63f1a4f8327df5452059c041e97aed20c4424e7d20e9292d2847169d9', 'jamesjordan@example.org', '01756329943', 'Carlos Taylor', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (227, 229, 'RF9481328', 'Carlos Taylor', '2002-05-06', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (230, 'james2214544', 'scrypt:32768:8:1$bdmxa6lGht9L4HUO$be492e40c69b4242c9c45e25e3e577dfa52dd544270dda4b9743122090d2147bd71f54291be7ff1bbfaeb3795b45a1ec79940504705b55f50df89bbd2c01a070', 'bterrell@example.net', '01111401245', 'Linda Maxwell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (228, 230, 'JH2176092', 'Linda Maxwell', '1964-01-13', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (320, 228, 2, '2026-04-28 11:48:38', 'Confirmed', 1.00, 'PNR20260416338186BA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (320, 1398.0, '2026-04-28 11:48:38', 'Nagad', 'Completed', 'TXN20260416114838E29235');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (321, 228, 3, '2026-03-23 11:48:38', 'Confirmed', 1.00, 'PNR202604164E95D230');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (321, 450.0, '2026-03-23 11:48:38', 'Nagad', 'Completed', 'TXN20260416114838F70EC0');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (322, 228, 6, '2026-04-18 11:48:38', 'Confirmed', 1.00, 'PNR202604163DABEFA7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (322, 950.0, '2026-04-18 11:48:38', 'Nagad', 'Completed', 'TXN202604161148388F88FA');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (231, 'lopezcynthia93132', 'scrypt:32768:8:1$9qCAfTW6OYRDipdQ$1fa5be07688bd9ef13a79e70ef8e76652c633b4eca49edc860f75c70e94a654466e339132a9dcdea394908689b18d5ef4fee401e1e52a1b6ae66cc9f7fc01529', 'clarkbradley@example.com', '01165681248', 'Linda Anderson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (229, 231, 'DV3285893', 'Linda Anderson', '1966-08-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (323, 229, 2, '2026-04-13 11:48:38', 'Confirmed', 1.00, 'PNR20260416E4DDFC30');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (323, 1398.0, '2026-04-13 11:48:38', 'Nagad', 'Completed', 'TXN20260416114838956C97');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (324, 229, 17, '2026-03-19 11:48:38', 'Confirmed', 1.00, 'PNR202604161E1D00AE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (324, 855.0, '2026-03-19 11:48:38', 'Cash', 'Completed', 'TXN20260416114838B281E6');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (325, 229, 12, '2026-03-23 11:48:38', 'Confirmed', 1.00, 'PNR202604160D77A1BC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (325, 1025.0, '2026-03-23 11:48:38', 'Cash', 'Completed', 'TXN20260416114838F9D23B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (232, 'svance42772', 'scrypt:32768:8:1$ieo17K3ihmMYjGMe$d060fe63f4ee6d3b3254dffc3887dd37c518c7806b9d28b129a719646fd7422b85d2cb7ac4f6461fad9d66ca4a80792f024b881bb84e043962308ffda100bf66', 'carriewagner@example.net', '01405365929', 'Janet Meadows', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (230, 232, 'OA9153315', 'Janet Meadows', '1992-12-17', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (233, 'jason1960340', 'scrypt:32768:8:1$aNfhXqofv0ysQl6V$f93f68ec4da961874152667ced5fa869295e87f464d4139f3c85a03f9d91abea280cfa1af5f66359e7c830deae229b274581245a9f277b3d0445d31d79e651bf', 'hawkinstyler@example.net', '01092752712', 'Melissa Parks', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (231, 233, 'WQ7466688', 'Melissa Parks', '1947-06-17', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (234, 'brownryan64300', 'scrypt:32768:8:1$JDZXGeFNqJgzgQnZ$530265886ac29811a6764cdeae0cb171a553a494b5dcb418a44b0e8bc17c8f190e01f32960a2f70d55b624d417a16f818057822b28c15f588edb643bdb722bd2', 'qbarnes@example.com', '01435338573', 'Fred Dixon', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (232, 234, 'JO9983151', 'Fred Dixon', '1977-03-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (326, 232, 14, '2026-03-31 11:48:38', 'Confirmed', 1.00, 'PNR2026041637983CCE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (326, 450.0, '2026-03-31 11:48:38', 'Cash', 'Completed', 'TXN202604161148383F7D8D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (327, 232, 20, '2026-04-23 11:48:38', 'Confirmed', 1.00, 'PNR202604166CDFD7E7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (327, 1300.0, '2026-04-23 11:48:38', 'Credit Card', 'Completed', 'TXN202604161148382ACBBC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (328, 232, 18, '2026-04-18 11:48:38', 'Confirmed', 1.00, 'PNR20260416B39F5A2A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (328, 950.0, '2026-04-18 11:48:38', 'Nagad', 'Completed', 'TXN20260416114838F34A95');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (235, 'eturner50562', 'scrypt:32768:8:1$WcsTVaPYspYaB7jk$a7b4314b093b17193a3d1c14e438f60d6d282c3da6e8dc0db42ed51aa86140f29129543d1113a2bb9320a7dd1fc8f496a153b7a98955b8066416f237633e25db', 'walkerarthur@example.net', '01637403590', 'Sarah Ramos', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (233, 235, 'UT9882449', 'Sarah Ramos', '1959-03-29', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (329, 233, 20, '2026-04-24 11:48:38', 'Confirmed', 1.00, 'PNR20260416F34851C7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (329, 950.0, '2026-04-24 11:48:38', 'Nagad', 'Completed', 'TXN2026041611483811D006');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (330, 233, 2, '2026-04-27 11:48:38', 'Confirmed', 1.00, 'PNR20260416AFD7E3FC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (330, 1398.0, '2026-04-27 11:48:38', 'Credit Card', 'Completed', 'TXN2026041611483888DF77');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (236, 'pamelawright48871', 'scrypt:32768:8:1$67JimiqsRw3EUFjn$9b031d99e2f87c1141629e92fbecbf521f8a837e55361342862d94a9d97eeef64708d47491085b80633305e34d8bf2f2c22f8a2b705ed72eac285c78fc082a4f', 'tjuarez@example.net', '01659835888', 'Mary Fields', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (234, 236, 'IQ5740665', 'Mary Fields', '1978-06-17', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (331, 234, 11, '2026-03-21 11:48:38', 'Confirmed', 1.00, 'PNR202604163F2DCB01');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (331, 450.0, '2026-03-21 11:48:38', 'Credit Card', 'Completed', 'TXN20260416114838370F10');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (332, 234, 20, '2026-04-06 11:48:38', 'Confirmed', 1.00, 'PNR202604161502C5B7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (332, 250.0, '2026-04-06 11:48:38', 'Credit Card', 'Completed', 'TXN202604161148384915B7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (237, 'velezjonathan23677', 'scrypt:32768:8:1$GsxZhQcFkIpgp2qB$dd5c4538643aa2e9dd7886c024f35e4e2dd74af98a776cb2351bc40eb0cbbcc2396b13de3182a84e30f84a31c1863ed651f66a92b628e5aa6bd60f1cb26035ba', 'vwebb@example.org', '01627267838', 'Dana Lee', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (235, 237, 'JD7123989', 'Dana Lee', '1986-12-14', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (238, 'hooperryan95649', 'scrypt:32768:8:1$jYuFkNqJTk4RzqxR$0df6828098a77b4655559f9084c0acbec2ca77ddc3c969bce8f890398425c8f5156352bca5867519b68ca40fda3d924ba15872fe108f069574959f2fb685f472', 'charles37@example.net', '01798936095', 'Jennifer Hansen', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (236, 238, 'PY9654744', 'Jennifer Hansen', '1953-02-22', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (333, 236, 4, '2026-04-22 11:48:39', 'Confirmed', 1.00, 'PNR2026041630BF8CE0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (333, 450.0, '2026-04-22 11:48:39', 'Cash', 'Completed', 'TXN20260416114839EDEC1F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (239, 'yrobinson81645', 'scrypt:32768:8:1$JPagkYLQbwsZGgXa$b5600f35be8241e2f0ddd6f2a28ccd380c74982d17ac6dbdf3544ad0bd84ab6024967b5e58c811be78eccc32724de3dc11e32634fbc7ffc9dd16eaaac4b051c0', 'hendricksvincent@example.net', '01499126261', 'Lisa Stevens', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (237, 239, 'RE6853306', 'Lisa Stevens', '1986-04-12', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (334, 237, 10, '2026-03-24 11:48:39', 'Confirmed', 1.00, 'PNR20260416C1842EAD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (334, 1050.0, '2026-03-24 11:48:39', 'Nagad', 'Completed', 'TXN20260416114839759917');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (335, 237, 10, '2026-03-21 11:48:39', 'Confirmed', 1.00, 'PNR20260416480603CB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (335, 870.0, '2026-03-21 11:48:39', 'Cash', 'Completed', 'TXN20260416114839036C1E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (336, 237, 12, '2026-03-17 11:48:39', 'Confirmed', 1.00, 'PNR20260416E6744863');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (336, 1025.0, '2026-03-17 11:48:39', 'bKash', 'Completed', 'TXN20260416114839F5C8DC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (240, 'jessica9865618', 'scrypt:32768:8:1$0Jq8mVHLUzrKKxTG$ae699d68ba6e45065d86f0383fbad7a591e264e2945eef494b5e331c534eb773de43fc38a513c86d1f0cb3f7a4af499b5e7edad168aa0cbd55a04b634bf08586', 'bwright@example.com', '01125799743', 'Jason Thomas MD', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (238, 240, 'PC4233752', 'Jason Thomas MD', '1975-05-15', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (337, 238, 1, '2026-04-13 11:48:39', 'Confirmed', 1.00, 'PNR2026041647A61DED');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (337, 855.0, '2026-04-13 11:48:39', 'Credit Card', 'Completed', 'TXN20260416114839AE41A9');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (338, 238, 20, '2026-03-31 11:48:39', 'Confirmed', 1.00, 'PNR20260416D8CB963B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (338, 400.0, '2026-03-31 11:48:39', 'Credit Card', 'Completed', 'TXN20260416114839C648CD');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (339, 238, 17, '2026-04-01 11:48:39', 'Confirmed', 1.00, 'PNR2026041639579144');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (339, 855.0, '2026-04-01 11:48:39', 'Credit Card', 'Completed', 'TXN2026041611483911EB33');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (241, 'robert9377707', 'scrypt:32768:8:1$YWm8wZsWySI7EUev$0fe08bde4ec2f0ed81227e71d206a68232843f5d8481d1d6eb8a406888702ad8d60d8448835eb421a63b9903710fc48626cfb346bbaca853398b072c3c7bc9f7', 'ryanvasquez@example.com', '01595279272', 'Denise Holmes', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (239, 241, 'JB2022444', 'Denise Holmes', '2006-01-15', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (242, 'robertjuarez18290', 'scrypt:32768:8:1$0RA2HXVbyPI8O4wc$461d965f1f7cda32a709686dfdd94bbf0fdec064c00bdadc369e1ced9e4b56536cc70484214404d9ccbb4ee741b7a0ff004d929875cc714d1ec6f14373df1a63', 'holtpeter@example.com', '01204125096', 'Melinda Snyder', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (240, 242, 'BY1610394', 'Melinda Snyder', '1956-07-07', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (243, 'waltersjoshua91841', 'scrypt:32768:8:1$ysS3nzGEcMRROcvB$e2619d1ad168c81f7bebe2f1f36c184be19c94720f407133ac04417f4a63c3ebac044b730225e45add678f5d6e956d6ff2dc1b5798f5f6b7388f0856d707680a', 'thomas62@example.com', '01523159158', 'William Montoya', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (241, 243, 'PE8886522', 'William Montoya', '1986-09-18', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (244, 'hamiltonjessica70476', 'scrypt:32768:8:1$AvEORKEN48oG9Pki$894feaea127c7b662d65df34c92be1de069e488ad1a4aa260e9d3832427e2085a92ba3e548dc4f7e5eba25e7d7c6ff8cc51696ff7d171d94c239b4a57e30ae37', 'keithhuffman@example.net', '01669906592', 'Cynthia Long', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (242, 244, 'CE5895695', 'Cynthia Long', '1963-06-07', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (245, 'abray5731', 'scrypt:32768:8:1$K63D1QBBRV4B6p7P$0c94abe052cacdf43c417f3ac85dd770f8aedc34dfb065f620dad114eedac9dfe565710609c7980cb43d26fde40c1f30bc3608dec061a83f0c66632d8bb38109', 'tina93@example.net', '01024019484', 'Roy Stewart', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (243, 245, 'AC1213547', 'Roy Stewart', '2001-05-23', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (340, 243, 15, '2026-04-14 11:48:40', 'Confirmed', 1.00, 'PNR202604160488428A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (340, 265.0, '2026-04-14 11:48:40', 'Cash', 'Completed', 'TXN202604161148403CD410');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (246, 'smiththomas80627', 'scrypt:32768:8:1$kyn5hx1qjEO5CVmr$f623526d9dc88035bfdca95dfe497c58dcc5ec3165c0c26db2b4b2bf7ce3877a88bc6089d5bf458a25e21e9c97f14b3c5c6a0bebabdd615a8d2049c695fdd637', 'lynnjuan@example.org', '01692954514', 'Christopher Ellis', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (244, 246, 'OT1445531', 'Christopher Ellis', '2004-12-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (341, 244, 1, '2026-04-04 11:48:40', 'Confirmed', 1.00, 'PNR20260416E15267D9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (341, 285.0, '2026-04-04 11:48:40', 'Cash', 'Completed', 'TXN2026041611484020F9C8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (342, 244, 8, '2026-04-03 11:48:40', 'Confirmed', 1.00, 'PNR2026041662018514');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (342, 950.0, '2026-04-03 11:48:40', 'Credit Card', 'Completed', 'TXN20260416114840DE90B3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (247, 'ericgoodman20507', 'scrypt:32768:8:1$3eMizZm6k9dM5JOh$01f713df28fbf1f6dd37c22a5b28525fe58f7b45db4325d022aa55a638b28fb85c34a0e14c92c78860ae452f4481da01e71c276f4f8f1ed4faa93532cc620ebf', 'michael71@example.net', '01851831144', 'Paul Johnson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (245, 247, 'YR1992239', 'Paul Johnson', '1959-09-08', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (343, 245, 19, '2026-03-25 11:48:40', 'Confirmed', 1.00, 'PNR20260416B6C8FDD0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (343, 465.0, '2026-03-25 11:48:40', 'Nagad', 'Completed', 'TXN202604161148405ACBEF');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (344, 245, 18, '2026-04-24 11:48:40', 'Confirmed', 1.00, 'PNR202604169691C561');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (344, 780.0, '2026-04-24 11:48:40', 'Nagad', 'Completed', 'TXN202604161148403C5A29');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (345, 245, 1, '2026-04-02 11:48:40', 'Confirmed', 1.00, 'PNR20260416813A202F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (345, 450.0, '2026-04-02 11:48:40', 'Nagad', 'Completed', 'TXN2026041611484044B779');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (248, 'hmyers31471', 'scrypt:32768:8:1$NavbMlvrGxCLUpOf$ab2af9656146682c8d13323798da6b455bafc5c0401be247054bc500290e233148034f7cb1e6b631ffb4c6dc71f9c75d2c80a6f06971766b53ab65f90d6db242', 'lambertjoel@example.org', '01288000183', 'Ms. Diane Gay PhD', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (246, 248, 'WR4162620', 'Ms. Diane Gay PhD', '1991-07-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (346, 246, 16, '2026-04-08 11:48:40', 'Confirmed', 1.00, 'PNR202604167CA69A22');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (346, 265.0, '2026-04-08 11:48:40', 'bKash', 'Completed', 'TXN20260416114840875A4E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (347, 246, 9, '2026-04-08 11:48:40', 'Confirmed', 1.00, 'PNR2026041689F3F9A2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (347, 1050.0, '2026-04-08 11:48:40', 'Credit Card', 'Completed', 'TXN20260416114840BF00CE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (348, 246, 4, '2026-04-28 11:48:40', 'Confirmed', 1.00, 'PNR20260416A9292DDC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (348, 855.0, '2026-04-28 11:48:40', 'Cash', 'Completed', 'TXN20260416114840A11B78');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (249, 'mezasandra95008', 'scrypt:32768:8:1$k8bdniyCTxOwNEbC$22135d1d18d952d6847e34624e6d87fa13f8d85c7f46e48204fd4ef275539863eec644ba11136d1029ebffe7f4d03d1b16f800182df3cbddf994d95e605edd81', 'brian10@example.org', '01857489554', 'Timothy Pollard', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (247, 249, 'XJ7000094', 'Timothy Pollard', '1999-04-19', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (349, 247, 18, '2026-03-21 11:48:40', 'Confirmed', 1.00, 'PNR2026041647AA5323');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (349, 265.0, '2026-03-21 11:48:40', 'Cash', 'Completed', 'TXN202604161148405A722B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (250, 'harold9247843', 'scrypt:32768:8:1$MhW4CvGEJECQ63YP$7f79c3b179762353aee2d44ef2b7a3955d2640aeecb1d29d4aa55f5484aea55f0121f8fa5c310b474a30e7c88f35b8866f893771aa1ad6ec5edc2112de4b9b1e', 'cwilliams@example.com', '01171236698', 'Nathan Sanford', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (248, 250, 'RR0592717', 'Nathan Sanford', '1999-03-17', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (350, 248, 5, '2026-03-23 11:48:40', 'Cancelled', 1.00, 'PNR202604169806DEC6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (350, 800.0, '2026-03-23 11:48:40', 'bKash', 'Refunded', 'TXN202604161148402D1B02');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (351, 248, 20, '2026-03-27 11:48:40', 'Confirmed', 1.00, 'PNR20260416889775FE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (351, 950.0, '2026-03-27 11:48:40', 'Nagad', 'Completed', 'TXN202604161148407AC903');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (352, 248, 18, '2026-03-26 11:48:40', 'Confirmed', 1.00, 'PNR20260416F60CF475');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (352, 265.0, '2026-03-26 11:48:40', 'Credit Card', 'Completed', 'TXN20260416114840223971');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (251, 'hclay64942', 'scrypt:32768:8:1$Xbm5L91AwYzzJTeE$8948790e97fcf5cf5b54f06d9c33ee624b82c300741e8ce0947c9bad1d19b3da7fa85d8d17ba617b972bd932fd3edb013eddfd9fc3c462f42f22994543d0e0e7', 'owenskevin@example.com', '01537435445', 'Christian Pruitt', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (249, 251, 'ZP1268144', 'Christian Pruitt', '1970-04-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (353, 249, 12, '2026-04-10 11:48:40', 'Confirmed', 1.00, 'PNR20260416F014602C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (353, 1398.0, '2026-04-10 11:48:40', 'Nagad', 'Completed', 'TXN202604161148408C4A68');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (354, 249, 6, '2026-04-20 11:48:40', 'Confirmed', 1.00, 'PNR2026041695A21D92');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (354, 250.0, '2026-04-20 11:48:40', 'Credit Card', 'Completed', 'TXN202604161148406C3516');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (252, 'larsonmelissa59292', 'scrypt:32768:8:1$lhgqD91ewPdGdXdk$0300a0efaa95855637b32cee601d602f9512e35c01800740964527ae83b5c8da402e9b8adbd11fc444bd62aec88c1167bc0a2bd21fe280f76fb286378d887b2e', 'walterslisa@example.org', '01231645917', 'Sharon Martinez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (250, 252, 'NO2393930', 'Sharon Martinez', '1988-10-03', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (355, 250, 1, '2026-04-17 11:48:40', 'Confirmed', 1.00, 'PNR202604162A0342AB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (355, 285.0, '2026-04-17 11:48:40', 'Nagad', 'Completed', 'TXN20260416114840A743B1');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (253, 'rford3174', 'scrypt:32768:8:1$mXMTeYFrjPsKtrDQ$02bc09b7954be17e9bd4bcf9977b0e8237e758b2fb7c20db29c6a4dfa87b9033129495610396dc3d64328cb2d0b80516d0153a4736dbc05d2abc3278d6713783', 'elliottjessica@example.org', '01277562697', 'Timothy Hardy', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (251, 253, 'OX7515227', 'Timothy Hardy', '1997-07-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (356, 251, 10, '2026-04-03 11:48:41', 'Confirmed', 1.00, 'PNR2026041680639A6A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (356, 1425.0, '2026-04-03 11:48:41', 'Credit Card', 'Completed', 'TXN20260416114841395151');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (357, 251, 4, '2026-04-20 11:48:41', 'Confirmed', 1.00, 'PNR2026041613A33A1A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (357, 1398.0, '2026-04-20 11:48:41', 'Nagad', 'Completed', 'TXN20260416114841CC6A53');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (358, 251, 8, '2026-03-26 11:48:41', 'Confirmed', 1.00, 'PNR20260416793CD05B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (358, 780.0, '2026-03-26 11:48:41', 'Credit Card', 'Completed', 'TXN202604161148418EC8CD');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (254, 'trevor7060144', 'scrypt:32768:8:1$Ihjfm6DPZGSvhEig$9d357f59d102898fad6a7fc83c4c8528d6338095daa2325e284e2d1d83eaf683835710a126a9a12966620c0382fdd39e2455478d66c47bf5c0275cd978beb332', 'williamscaroline@example.net', '01988245302', 'Tammy Alvarez MD', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (252, 254, 'DQ0339953', 'Tammy Alvarez MD', '1980-10-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (359, 252, 17, '2026-04-24 11:48:41', 'Confirmed', 1.00, 'PNR20260416A47FF193');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (359, 450.0, '2026-04-24 11:48:41', 'bKash', 'Completed', 'TXN202604161148415DA5BB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (360, 252, 6, '2026-04-19 11:48:41', 'Cancelled', 1.00, 'PNR20260416491F49DE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (360, 800.0, '2026-04-19 11:48:41', 'bKash', 'Refunded', 'TXN202604161148413E010D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (255, 'martinshane24513', 'scrypt:32768:8:1$XnMpcYktXV7ysYDu$c37141ce811f3aabf2021f2dda411d513a32e0ec3843ab1328b29fa27f40b7177650a36ab0388b99aebd3813714edd5a2e63e758050f2205c89f92456e12f052', 'scottgary@example.net', '01036334617', 'Erika Scott', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (253, 255, 'RF4872313', 'Erika Scott', '1994-09-29', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (256, 'reidapril45234', 'scrypt:32768:8:1$smWyySv9vhBkEDT5$298f0c45daebac8d21bd16495f82a1f1ab66375df4df7705a24589459736ffe59614eb5ba952994777d9da345f8793c6845c5274622c6a50be95a184040da053', 'smithgregory@example.net', '01130805040', 'Jason Davis', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (254, 256, 'DD1836561', 'Jason Davis', '2002-04-10', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (361, 254, 15, '2026-04-06 11:48:41', 'Confirmed', 1.00, 'PNR202604161EA3DD62');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (361, 265.0, '2026-04-06 11:48:41', 'bKash', 'Completed', 'TXN202604161148410FEB75');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (362, 254, 6, '2026-04-06 11:48:41', 'Confirmed', 1.00, 'PNR20260416E526609D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (362, 250.0, '2026-04-06 11:48:41', 'Cash', 'Completed', 'TXN202604161148411DDE5A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (257, 'carlos3637035', 'scrypt:32768:8:1$lrivTG1XTQUl09Ij$c0974fc8785b25d340334b52509d10445eb6c00959b91e2aec4ed1a36fb45f8f592347c0d16c3fbeffc927eb43a2c2407b3ea5fd985255758bd95fefc54abc2c', 'paulterrell@example.org', '01449678392', 'Christopher Medina', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (255, 257, 'XH3852035', 'Christopher Medina', '1955-08-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (363, 255, 20, '2026-04-30 11:48:41', 'Confirmed', 1.00, 'PNR2026041677624940');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (363, 800.0, '2026-04-30 11:48:41', 'Nagad', 'Completed', 'TXN202604161148410D3709');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (258, 'christopher8693988', 'scrypt:32768:8:1$5xuRR2CITdMRFtxV$377ebee24485164f61e72e37ac4e90ba9a0f69d3183c9fbb33b168fbaa1dfd49fb741e4cc7e841069e99e910471ba53a5f5664d92193bd9f0b1549cfa6c274e0', 'alexanderjenkins@example.org', '01200084559', 'Joe Miller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (256, 258, 'EP4155066', 'Joe Miller', '1998-03-31', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (364, 256, 6, '2026-03-29 11:48:42', 'Confirmed', 1.00, 'PNR20260416083E8EE2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (364, 400.0, '2026-03-29 11:48:42', 'Nagad', 'Completed', 'TXN202604161148427CD641');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (259, 'rushpeter46401', 'scrypt:32768:8:1$TAXjNcgUBIkxqXOz$cbe1545b500aa5a946ded8f9f8c815ded090da29991dcbef6fce5122994ce44eefaf44b2ee990b0aa0eb361cc76a422005f308ad0beb847d383a7373f3362443', 'megan42@example.com', '01008071988', 'Toni Stewart', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (257, 259, 'DW1326622', 'Toni Stewart', '1978-07-21', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (365, 257, 14, '2026-04-10 11:48:42', 'Confirmed', 1.00, 'PNR20260416E9DDC11F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (365, 1398.0, '2026-04-10 11:48:42', 'Credit Card', 'Completed', 'TXN20260416114842AEC98A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (366, 257, 5, '2026-03-18 11:48:42', 'Confirmed', 1.00, 'PNR20260416C25A31F5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (366, 400.0, '2026-03-18 11:48:42', 'bKash', 'Completed', 'TXN20260416114842D8823C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (260, 'cturner94045', 'scrypt:32768:8:1$AxeiGqQYR8JmSDLH$d28b7ce28e219f3cc19e18afdf600be97442fc67ab724b75f751bcbf3bc15bb830f4b1aa8e448e0ec2e1e9a9a76a61f8b740a86f2503e82f3645a9722b59acc8', 'clintonhenderson@example.org', '01613596475', 'Ashlee Mcmillan', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (258, 260, 'UP2347396', 'Ashlee Mcmillan', '1972-05-04', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (367, 258, 9, '2026-03-28 11:48:42', 'Confirmed', 1.00, 'PNR202604166643E065');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (367, 295.0, '2026-03-28 11:48:42', 'bKash', 'Completed', 'TXN20260416114842B05727');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (368, 258, 9, '2026-04-30 11:48:42', 'Confirmed', 1.00, 'PNR20260416E38A64C4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (368, 465.0, '2026-04-30 11:48:42', 'Nagad', 'Completed', 'TXN2026041611484249700E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (261, 'brent6170141', 'scrypt:32768:8:1$LQE3dLcoNwJgaOjR$180e761e8717d40cc40e48196097e8245f3afc5e1ca8642ed612bd2f83026f8fd426a331ab93531f73ac53044f8811276dad17a73d1f7c650335cd088128b77e', 'ericbennett@example.com', '01695843553', 'Katie Stokes', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (259, 261, 'JB8844315', 'Katie Stokes', '1946-05-03', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (369, 259, 17, '2026-04-12 11:48:42', 'Confirmed', 1.00, 'PNR20260416AA7DB782');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (369, 285.0, '2026-04-12 11:48:42', 'bKash', 'Completed', 'TXN20260416114842F0283E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (370, 259, 15, '2026-03-24 11:48:42', 'Confirmed', 1.00, 'PNR2026041671D7C10D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (370, 425.0, '2026-03-24 11:48:42', 'bKash', 'Completed', 'TXN202604161148422376A3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (371, 259, 16, '2026-04-29 11:48:42', 'Confirmed', 1.00, 'PNR2026041698E237DF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (371, 425.0, '2026-04-29 11:48:42', 'bKash', 'Completed', 'TXN202604161148423BF900');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (262, 'barbara3174477', 'scrypt:32768:8:1$nbkI8UgM6E4BQgf3$c65531db4e3b04fb55805c239de95cca2dbb118af2d294bb7297665c93f31b4f9d2ef42f6eb99405bb3be02f79d4cce8ba51886830092da5b201afa6225a5c0d', 'aalexander@example.com', '01238918843', 'Daniel Rush', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (260, 262, 'KQ4619854', 'Daniel Rush', '1949-08-01', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (263, 'mlee8832', 'scrypt:32768:8:1$Elukfa1z1v2ZmhMc$d57908dac5191af4c17a2814a7cae45351280dbba403715552708f6f0f332be57be72f8d69e2195427cb30ca0c00955c12319753db228a2026cabd525f363744', 'robertbanks@example.org', '01178361765', 'Andrew Lee', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (261, 263, 'PE3534043', 'Andrew Lee', '1985-09-11', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (372, 261, 19, '2026-04-27 11:48:43', 'Confirmed', 1.00, 'PNR2026041674BA5235');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (372, 870.0, '2026-04-27 11:48:43', 'Nagad', 'Completed', 'TXN20260416114843B4C8DB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (373, 261, 7, '2026-04-21 11:48:43', 'Confirmed', 1.00, 'PNR20260416AF6088CE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (373, 950.0, '2026-04-21 11:48:43', 'Cash', 'Completed', 'TXN202604161148434F720F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (374, 261, 7, '2026-03-25 11:48:43', 'Confirmed', 1.00, 'PNR2026041669F8AF3A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (374, 780.0, '2026-03-25 11:48:43', 'bKash', 'Completed', 'TXN2026041611484330B9A1');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (264, 'katherine3441013', 'scrypt:32768:8:1$ubZ8MONZRgqOodyk$c05b59240488bfdca504791ce5ed1fbfadf3e9d35450da4d3fab416918635d88dfc715defb867c3f7408b29348a6a9c860353f8e06bcabef1ed29ec1f0621bf8', 'jessica57@example.net', '01240094578', 'Karen Moore', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (262, 264, 'SX4648965', 'Karen Moore', '1976-06-21', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (375, 262, 9, '2026-04-01 11:48:43', 'Confirmed', 1.00, 'PNR202604168CD408F0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (375, 1425.0, '2026-04-01 11:48:43', 'Nagad', 'Completed', 'TXN20260416114843DC3DE4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (376, 262, 7, '2026-04-26 11:48:43', 'Confirmed', 1.00, 'PNR202604169766C263');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (376, 950.0, '2026-04-26 11:48:43', 'bKash', 'Completed', 'TXN20260416114843FCAFA3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (265, 'mccarthydonna21891', 'scrypt:32768:8:1$2AMjFjs4lzGyiFBx$9e5f2954456e39b2adb628e8fba0227eb00b22b60112fbba075afc020e1cfe97785ef139fa2e992ac83ac7bb9744195b6a9b0bff3b07ca2bf644c26f0c381844', 'plee@example.com', '01061162746', 'Jamie Floyd', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (263, 265, 'WS6317653', 'Jamie Floyd', '1960-08-20', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (266, 'joshua7742400', 'scrypt:32768:8:1$PYv3pXhtauvQIwEi$a32c8b90e42844f2b658806e562b847775cb0d29cd14d4615a79d44f753224c9a64e8314b1d4b88afa9171eefb6fec736f5baa78aff12bd01ef498a56c00d976', 'schmidtfrederick@example.org', '01541744346', 'Mr. David Lewis', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (264, 266, 'NR2746079', 'Mr. David Lewis', '1958-11-20', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (267, 'hanthony20942', 'scrypt:32768:8:1$ZU6ywGLGqOvb30g1$f4d035dea2cdedec728d0aa3692f8de995bbe910343304459f40933a243e2531ed1c2f0a5ee07e728591d3dd36ddf069c4dccf29635ba4933210a8b7d54b60a7', 'jesusblanchard@example.org', '01229709837', 'Pamela Wright', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (265, 267, 'XL6667840', 'Pamela Wright', '1997-05-04', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (268, 'victoriaduffy55882', 'scrypt:32768:8:1$5em7Bic7L3k2IfjD$9b933444833c61fec2a69cfc938bbf6a7eda5a071a43c1df1fb447874eaf8f6dc8811971608852d18c9dd231f2f48b0e36a2030d8538e74d9570e09192f456fb', 'ashley61@example.org', '01684564500', 'Jeffrey Gordon', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (266, 268, 'VF6073275', 'Jeffrey Gordon', '1978-12-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (377, 266, 5, '2026-03-17 11:48:43', 'Confirmed', 1.00, 'PNR20260416D0F161B4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (377, 800.0, '2026-03-17 11:48:43', 'Credit Card', 'Completed', 'TXN20260416114843869A77');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (269, 'gdavidson63548', 'scrypt:32768:8:1$19uQWfsFd8bf9O3i$1d09ff7969bd9fb4ea38331db072660c1a06bf01c5073d59dc07c410e7989badda9cae73ed7945823c051a5275164e419d38254424f60346a06b482b37129794', 'spencer36@example.net', '01975953329', 'Lauren Moss', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (267, 269, 'BV1123036', 'Lauren Moss', '2005-02-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (378, 267, 11, '2026-03-21 11:48:43', 'Confirmed', 1.00, 'PNR2026041634B191DB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (378, 450.0, '2026-03-21 11:48:43', 'bKash', 'Completed', 'TXN20260416114843A9B283');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (270, 'kevinbond59217', 'scrypt:32768:8:1$hKJeSvTVn6jv44W8$f1f35f06d0d5e347ce0aebadffa96aaf8d3935812663091f1ba98d8826253c2e609a9ff5dd551e2e0f1079ae68f4e79dd7f19d10fb6b8c60a8f0d2d9d74be258', 'schmittmatthew@example.org', '01657574615', 'Charles Fischer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (268, 270, 'IF7441315', 'Charles Fischer', '1965-04-20', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (379, 268, 17, '2026-04-05 11:48:44', 'Confirmed', 1.00, 'PNR2026041650B4E439');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (379, 855.0, '2026-04-05 11:48:44', 'Nagad', 'Completed', 'TXN20260416114844DAABC6');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (380, 268, 13, '2026-03-30 11:48:44', 'Confirmed', 1.00, 'PNR202604169F7AAFBC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (380, 1300.0, '2026-03-30 11:48:44', 'bKash', 'Completed', 'TXN202604161148445EDDD4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (381, 268, 9, '2026-04-28 11:48:44', 'Confirmed', 1.00, 'PNR20260416EA004F41');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (381, 870.0, '2026-04-28 11:48:44', 'Cash', 'Completed', 'TXN2026041611484439B3A2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (271, 'dustinmora31916', 'scrypt:32768:8:1$FVQqFdt8tFqMwqs0$4ad884b8dcfb974c258b76ef1ab0bfa1056ddeb3a26c00aeaaabf227a9db3666a8c5c55d12bcd354151fb4b139eb46f8022ef313f8d9384a062a3b2e4d840308', 'jeffmeyer@example.com', '01966594401', 'Patrick Reid', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (269, 271, 'ZL3171224', 'Patrick Reid', '1999-12-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (382, 269, 7, '2026-04-05 11:48:44', 'Confirmed', 1.00, 'PNR20260416A48A0FD3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (382, 780.0, '2026-04-05 11:48:44', 'Cash', 'Completed', 'TXN20260416114844C37AB7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (272, 'huertabrittany67905', 'scrypt:32768:8:1$euoy4znOxGZWukQW$0d3ac2a865295d771c095fdd32b80f8f40bef5e2b4c9a545d027ed31fc1969f7bc7adcfb3de0547c3668f5a7f88603d32794f4876540d91d85c8014b66dead76', 'garywatkins@example.net', '01368467434', 'Kaylee Daugherty', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (270, 272, 'AL5478274', 'Kaylee Daugherty', '1953-03-14', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (273, 'ahernandez7510', 'scrypt:32768:8:1$syDD7gh7thUtMegs$570331f44914604edbf0f3f91a07aa53a696e23c07c3462a21fc1bccd05ef94d53998aa3eb7a20ab21d0e2d5d85ee89ce994c4c8474c06af72a92f1ca9241ed8', 'christophergeorge@example.org', '01165615595', 'Robert Perez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (271, 273, 'YN5046779', 'Robert Perez', '2000-11-17', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (274, 'martin4341659', 'scrypt:32768:8:1$teY9yBkOgwmJmeGK$0f663865ac3ee890083cd59b4df4e933e9eff6c4f510df73659ac11d36706d715cad135329813dfc2e9de9829386997172ad771cff4c0856fc50fd82171fda38', 'xporter@example.net', '01030283646', 'Ashley Ortiz', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (272, 274, 'SM1911152', 'Ashley Ortiz', '1961-08-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (383, 272, 3, '2026-04-02 11:48:44', 'Confirmed', 1.00, 'PNR20260416C5EBED17');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (383, 1398.0, '2026-04-02 11:48:44', 'Cash', 'Completed', 'TXN20260416114844491D49');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (275, 'billy4373399', 'scrypt:32768:8:1$exXQ1md8AZyBJOv8$acce4845936e7ce16d5f412184f20fc8f90d806f5ba2f3a34d58e487e0ad360282f3762f47a8a4a174d1d89c8a3f5666ee9be9efee3e05bad30f37ef3327d528', 'daniel22@example.com', '01537379731', 'Robert Washington', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (273, 275, 'EE6514979', 'Robert Washington', '1989-05-02', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (384, 273, 3, '2026-04-30 11:48:44', 'Confirmed', 1.00, 'PNR20260416FD86BD72');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (384, 1025.0, '2026-04-30 11:48:44', 'Credit Card', 'Completed', 'TXN202604161148440A98C5');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (385, 273, 20, '2026-03-30 11:48:44', 'Confirmed', 1.00, 'PNR202604163B51215C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (385, 1300.0, '2026-03-30 11:48:44', 'bKash', 'Completed', 'TXN202604161148443AC6B1');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (386, 273, 9, '2026-03-28 11:48:44', 'Confirmed', 1.00, 'PNR20260416A4D8D396');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (386, 870.0, '2026-03-28 11:48:44', 'Cash', 'Completed', 'TXN20260416114844D824E9');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (276, 'tashamatthews75168', 'scrypt:32768:8:1$vbvoe0ifKg0BWgqh$988cb9bb7787bfd66acd2a6e3fbf05e02a6dfc9a7aa85f9b9f31af545e25b6189b5ac992fce5b121e8ee40aca9c43e7f2fed9de4eb5635e19a604b254b88ab87', 'berryjames@example.net', '01128357034', 'Stacie Anderson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (274, 276, 'RT3668510', 'Stacie Anderson', '1969-08-06', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (277, 'tapialucas38776', 'scrypt:32768:8:1$YYv7nWIi3BV5XVfL$c26b05c844a3e7e57ee6f1c530c19772fafb39ad6b1079231d9dc0001350f06e613b0fdfae85417e8e1ca02f552e4cd38e12aff6563142f188f1d577fc9874d0', 'fyoder@example.com', '01220578461', 'Kellie Patel', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (275, 277, 'TH3271065', 'Kellie Patel', '1948-04-19', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (387, 275, 2, '2026-04-07 11:48:44', 'Confirmed', 1.00, 'PNR202604166EAB92D5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (387, 285.0, '2026-04-07 11:48:44', 'bKash', 'Completed', 'TXN2026041611484434A81A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (388, 275, 6, '2026-04-27 11:48:44', 'Confirmed', 1.00, 'PNR20260416F928B9DF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (388, 950.0, '2026-04-27 11:48:44', 'Credit Card', 'Completed', 'TXN20260416114844BFC27A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (389, 275, 11, '2026-04-30 11:48:44', 'Confirmed', 1.00, 'PNR20260416458E3D17');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (389, 285.0, '2026-04-30 11:48:44', 'Cash', 'Completed', 'TXN2026041611484471F817');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (278, 'lisarodgers31930', 'scrypt:32768:8:1$ka9OXUfVEHpA8EFM$90013e0d2b8101816b420a0897917ce3ed830c6835ba7285493e51a18efa55ae04b2db465ab24b673af4df9081e47221ba859e1616e65bcb7b9227072404342c', 'snyderlisa@example.org', '01450347917', 'Nathan Johnston', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (276, 278, 'OI1180829', 'Nathan Johnston', '1967-11-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (390, 276, 8, '2026-04-01 11:48:44', 'Confirmed', 1.00, 'PNR202604160F00AA2A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (390, 425.0, '2026-04-01 11:48:44', 'Nagad', 'Completed', 'TXN20260416114844290C99');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (391, 276, 2, '2026-03-26 11:48:44', 'Confirmed', 1.00, 'PNR202604166B9AE55A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (391, 855.0, '2026-03-26 11:48:44', 'bKash', 'Completed', 'TXN202604161148448B8540');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (392, 276, 19, '2026-03-29 11:48:44', 'Confirmed', 1.00, 'PNR20260416E2ECC273');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (392, 1425.0, '2026-03-29 11:48:44', 'Cash', 'Completed', 'TXN20260416114844695EA0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (279, 'zsimon87589', 'scrypt:32768:8:1$8FGMPMO7XPIMjLLx$5f1aa334aa9c712923746535ebf17ac50ecfecf2fbf758945a3f05f11a9227f86671eaaa6ce2240afab42f6de7084b620242f6c6817131db17e42a4f1d8286e7', 'jacobmcconnell@example.net', '01619231307', 'Jose Burke', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (277, 279, 'XI2122304', 'Jose Burke', '1998-07-01', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (393, 277, 10, '2026-03-23 11:48:45', 'Confirmed', 1.00, 'PNR20260416A9B5B83C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (393, 870.0, '2026-03-23 11:48:45', 'Nagad', 'Completed', 'TXN2026041611484594F76A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (280, 'robertgarza59510', 'scrypt:32768:8:1$bsQrYr6AOFfgY7WC$dba2e1200c293c9d2022216879be23ce8aaab98ab6689343f4c3cd9b3e4c32a98f80a870f7f569a19c67027fb8f1de6ed61eca53f6eced25266ffca0e7d06e40', 'dianerose@example.com', '01631083796', 'Steven Bridges', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (278, 280, 'YR7496445', 'Steven Bridges', '1952-04-17', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (281, 'jillian4415304', 'scrypt:32768:8:1$Gow0i1z7gQhsDo9w$1fcde28e771760c8badbe3397277dd03d113b5b2ec082ccfd7ddf1b397a5bee0104099c0acb3ba6385b9be879cc1997a3e1968fbf4aa125d4871800fd802031c', 'edwin21@example.com', '01032160737', 'Anthony Acosta', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (279, 281, 'OU2354609', 'Anthony Acosta', '1962-08-17', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (394, 279, 11, '2026-04-23 11:48:45', 'Confirmed', 1.00, 'PNR20260416696B0122');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (394, 285.0, '2026-04-23 11:48:45', 'Credit Card', 'Completed', 'TXN20260416114845D4D83E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (282, 'xjohnson7184', 'scrypt:32768:8:1$0bT62ONv0Jiz8I1S$99e2447218b8f1500ff5e5582a38daa85a86747aa28b0eee74af806c6ece41ae5effc71cdb3bfadb69637158f7325d59f64d83d58e5120e5701a58710e5e7a84', 'ulin@example.org', '01871497000', 'Lacey Diaz', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (280, 282, 'FP5557234', 'Lacey Diaz', '1998-03-29', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (395, 280, 20, '2026-04-14 11:48:45', 'Confirmed', 1.00, 'PNR20260416248B966C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (395, 950.0, '2026-04-14 11:48:45', 'bKash', 'Completed', 'TXN2026041611484539A6FE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (396, 280, 20, '2026-04-16 11:48:45', 'Cancelled', 1.00, 'PNR2026041666DB139F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (396, 950.0, '2026-04-16 11:48:45', 'Credit Card', 'Refunded', 'TXN2026041611484558D6D7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (283, 'glenn7246996', 'scrypt:32768:8:1$fC451l4RkxqpoRAj$87ce5941b866bdb912a3bec2a86a39ca83fed772e410a0e76a8ddb9289f2728ab0d3dcc15e629695899331aa7f5dff86c528b659ffbaf7ff29f7e28e84a9ba22', 'aaronstanley@example.net', '01061553201', 'David Garcia', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (281, 283, 'NL5719838', 'David Garcia', '1990-04-23', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (284, 'pruittalexis86791', 'scrypt:32768:8:1$991h7krYIjQBjz4t$b22c0ee82c99039dfcfc1bcb21eaac5b43c4f24bf6cfa2d8cd8946a42289dedb2aad1d071e9724b353577f47e3b720d47c6e8342e6f8ce82b700276c38d8acc8', 'jasonthornton@example.com', '01280780877', 'Monica Jenkins', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (282, 284, 'NO3060621', 'Monica Jenkins', '1973-10-27', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (285, 'downstyrone37678', 'scrypt:32768:8:1$jSakkSWt5ZHGstj7$90a79c72a040b539382f18c74dbb773f5d983773e99773dbfc606b0f0fd1391ff144edd13e573c863f99e1d1bb924af081f1870d717425ea0f7c4904f774d614', 'alishahansen@example.net', '01785827751', 'Kenneth Green IV', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (283, 285, 'SC5217339', 'Kenneth Green IV', '1977-04-06', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (397, 283, 7, '2026-04-12 11:48:45', 'Confirmed', 1.00, 'PNR2026041638640220');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (397, 780.0, '2026-04-12 11:48:45', 'bKash', 'Completed', 'TXN202604161148450444C0');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (398, 283, 5, '2026-04-06 11:48:45', 'Confirmed', 1.00, 'PNR202604168AD4CEA3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (398, 800.0, '2026-04-06 11:48:45', 'bKash', 'Completed', 'TXN20260416114845E29A7D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (399, 283, 6, '2026-04-05 11:48:45', 'Confirmed', 1.00, 'PNR202604160C439C79');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (399, 1300.0, '2026-04-05 11:48:45', 'bKash', 'Completed', 'TXN202604161148453FAC75');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (286, 'brownjohn97736', 'scrypt:32768:8:1$FWhJ6PJvjcfazT0y$db91cb1c2e64bc36e001b3bf17c55d5f28fef085903dae6139a9d0b4f2aa69b72af80aeb2d7b1d499bb40e634d2875defc1d778af837b205123f83550950bbfd', 'garrett38@example.com', '01962446061', 'Sara Sims', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (284, 286, 'TW3716033', 'Sara Sims', '1958-01-14', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (400, 284, 20, '2026-03-26 11:48:45', 'Confirmed', 1.00, 'PNR20260416DDF46D6D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (400, 800.0, '2026-03-26 11:48:45', 'Cash', 'Completed', 'TXN20260416114845B8502B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (401, 284, 11, '2026-03-31 11:48:45', 'Confirmed', 1.00, 'PNR20260416A135155F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (401, 1025.0, '2026-03-31 11:48:45', 'bKash', 'Completed', 'TXN2026041611484554E3FF');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (402, 284, 17, '2026-04-26 11:48:45', 'Confirmed', 1.00, 'PNR202604161D244A54');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (402, 1398.0, '2026-04-26 11:48:45', 'Cash', 'Completed', 'TXN20260416114845928608');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (287, 'kim7132342', 'scrypt:32768:8:1$ROjQrSTHbzIQqqMp$c9a4e752a8d1fdd5f7c78a32eb5835d1521c8cfd22c4616ecf208e2cdaab3e99a4b20e81a3f1e8daf884a78d4a8054629d072177e5682849ca453327bc00f257', 'shawjon@example.org', '01837427463', 'Stephen Alexander', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (285, 287, 'ER9690421', 'Stephen Alexander', '1956-08-27', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (288, 'jamescalhoun56716', 'scrypt:32768:8:1$qLEV67QvcsDhXLSz$a11d761c8195859c2c171bdd7e2549b00466d38583657862180f84719f32c2b19288501d03e1f19d2df0daf97dd708ffe512ebcd5a479fe6c7c9d3387e8b44e8', 'hboyer@example.net', '01217642274', 'Pamela Walker', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (286, 288, 'EG3465653', 'Pamela Walker', '1981-08-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (403, 286, 12, '2026-04-23 11:48:45', 'Confirmed', 1.00, 'PNR20260416607B39CC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (403, 1398.0, '2026-04-23 11:48:45', 'Credit Card', 'Completed', 'TXN20260416114845EFD998');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (289, 'tiffany593917', 'scrypt:32768:8:1$FXCmC0wfcI9bkzjT$2acdbbd7585ceaeba370206f0f4d29966c62f29276e8f428be7b0101ca71e1c82757e721d5cfa902aa710788e8d9cb06a2bf81137bb6f893f9ab9f2e8bb3bc53', 'seansmith@example.com', '01213740185', 'Thomas Bennett', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (287, 289, 'ZF6403384', 'Thomas Bennett', '1982-08-11', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (290, 'vstephens29152', 'scrypt:32768:8:1$n3hC42OP0zdw7ARp$944c169bd26292768b22f3512cf9bea3a652b84888af9f4732031587ab8fccd2d6578b59d78c185dd119425148a1eaf6a72df0379b71ed175911b47a9101d9fb', 'shawnbass@example.org', '01871366381', 'Kristen Stewart', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (288, 290, 'IG1006038', 'Kristen Stewart', '1994-07-23', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (291, 'kayers8172', 'scrypt:32768:8:1$EEForxh84A0TEVwa$3793724aeaefa5096d0cf304a6f769da277d8d3e7bbf640270ec76d29a8ecfefdcfcb5abff9d9d5f8dbff58bdaa1674540bb65c8266ab408f7dfe53b75fdee7b', 'brianna60@example.com', '01135355761', 'Kevin Thomas', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (289, 291, 'TU9175648', 'Kevin Thomas', '1994-03-27', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (404, 289, 14, '2026-04-26 11:48:46', 'Confirmed', 1.00, 'PNR20260416A999B474');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (404, 285.0, '2026-04-26 11:48:46', 'Credit Card', 'Completed', 'TXN20260416114846C3C8AD');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (405, 289, 5, '2026-04-23 11:48:46', 'Confirmed', 1.00, 'PNR202604161010EF8F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (405, 1300.0, '2026-04-23 11:48:46', 'Cash', 'Completed', 'TXN202604161148462371AC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (406, 289, 2, '2026-04-22 11:48:46', 'Confirmed', 1.00, 'PNR20260416B90DF181');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (406, 1398.0, '2026-04-22 11:48:46', 'bKash', 'Completed', 'TXN202604161148468EE852');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (292, 'paigeknapp85357', 'scrypt:32768:8:1$I9rM4q4G9pr3gMJv$d9d074579a43fa77c9120a6018bc6e179b4733613f0096d459ffd14adff1bc03dc9ecf8e87e3eae5bd20f783dffcdb22e0c49bbdd4407420c38f99670502aae2', 'imay@example.net', '01346624849', 'Michael Barber', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (290, 292, 'NV9348007', 'Michael Barber', '1948-02-25', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (407, 290, 7, '2026-04-18 11:48:46', 'Confirmed', 1.00, 'PNR20260416FE35E47A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (407, 780.0, '2026-04-18 11:48:46', 'bKash', 'Completed', 'TXN20260416114846587E85');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (408, 290, 16, '2026-04-02 11:48:46', 'Confirmed', 1.00, 'PNR20260416B88F8F3B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (408, 425.0, '2026-04-02 11:48:46', 'Cash', 'Completed', 'TXN20260416114846F3A045');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (409, 290, 6, '2026-04-03 11:48:46', 'Confirmed', 1.00, 'PNR2026041628CF218B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (409, 400.0, '2026-04-03 11:48:46', 'Credit Card', 'Completed', 'TXN20260416114846234C36');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (293, 'tprice12623', 'scrypt:32768:8:1$cZqYyf68Uy8VHfLx$8f9d7bb4e2cac9ef3fa7e1afcf01b2110addda7a4b10ed5a9d838eee5b06bb57950e82d099d7312282c6899e007d00897cfb4caa5b8f8dd6dc168b074852b54d', 'ewalters@example.net', '01528566696', 'Timothy Cooper', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (291, 293, 'OC9348850', 'Timothy Cooper', '1984-10-29', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (410, 291, 17, '2026-04-07 11:48:46', 'Confirmed', 1.00, 'PNR202604164DE59A7B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (410, 285.0, '2026-04-07 11:48:46', 'bKash', 'Completed', 'TXN202604161148460E0517');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (411, 291, 17, '2026-04-09 11:48:46', 'Confirmed', 1.00, 'PNR20260416288E24FC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (411, 285.0, '2026-04-09 11:48:46', 'Credit Card', 'Completed', 'TXN2026041611484661E475');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (294, 'otran34824', 'scrypt:32768:8:1$s4f4GMPIT95ydV0i$2ff0d57b5e3d0757b32681c77ec64922a8da9f570b97ea24d746274b3c5782a7b2e25b2b4914d914822e3038e702ea64351449be9ed686f01acd9b66284bd0ee', 'bdavila@example.com', '01798318770', 'Jill Roberts', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (292, 294, 'HN0008696', 'Jill Roberts', '1971-05-21', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (295, 'washingtontara16273', 'scrypt:32768:8:1$TyBxrGjZHoRmOdAd$60e31a41f955b1fb5d119aa5aa84df87df9bfb8056cc3c13d6a7dda13ccd49043894d2c2d928cc628cf75a08ddc08942978bfa8540e5c5de49aa6263930db5e5', 'amydaniels@example.net', '01010455517', 'James Harrison', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (293, 295, 'CN6575511', 'James Harrison', '1947-10-30', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (412, 293, 19, '2026-03-31 11:48:46', 'Confirmed', 1.00, 'PNR20260416E74A2E52');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (412, 295.0, '2026-03-31 11:48:46', 'bKash', 'Completed', 'TXN2026041611484621193C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (296, 'ibarrajennifer70755', 'scrypt:32768:8:1$EwfyQYCMpyTAzwOp$081c4c9f6d47423070cbe3e680a2c50ef0ffb40ddb77dc76bc7c90eeff45678b710c2e4e05ce46848acf26fbcdefc251a4bdf197853b480827807fb47179c8b7', 'wellsjames@example.org', '01804060395', 'Kristina Dickerson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (294, 296, 'LU1379484', 'Kristina Dickerson', '1953-05-18', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (413, 294, 19, '2026-04-01 11:48:46', 'Confirmed', 1.00, 'PNR20260416C2BA70F7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (413, 295.0, '2026-04-01 11:48:46', 'bKash', 'Completed', 'TXN20260416114846CF2DE4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (414, 294, 11, '2026-03-26 11:48:46', 'Confirmed', 1.00, 'PNR20260416B736CE11');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (414, 450.0, '2026-03-26 11:48:46', 'Nagad', 'Completed', 'TXN202604161148460B15C2');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (415, 294, 13, '2026-03-25 11:48:46', 'Cancelled', 1.00, 'PNR2026041622B8F23B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (415, 250.0, '2026-03-25 11:48:46', 'Nagad', 'Refunded', 'TXN20260416114846D8DB73');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (297, 'umcmillan77991', 'scrypt:32768:8:1$eoHoNMc3sSg8Gd4P$ce004fcf7f86dc673d6ce5e61af45c8f4a7686cbc0cc0b5bd8c01b962e13215990b2e507846709c228117360c6601508e619fffe41bd37becd828fbaef3fec05', 'cindy16@example.com', '01431603150', 'Christopher Baldwin', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (295, 297, 'ZR6239832', 'Christopher Baldwin', '1969-09-30', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (416, 295, 11, '2026-04-10 11:48:46', 'Confirmed', 1.00, 'PNR20260416C05CFE17');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (416, 1398.0, '2026-04-10 11:48:46', 'Nagad', 'Completed', 'TXN202604161148464163C7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (417, 295, 20, '2026-04-26 11:48:46', 'Confirmed', 1.00, 'PNR20260416678C6864');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (417, 800.0, '2026-04-26 11:48:46', 'Credit Card', 'Completed', 'TXN2026041611484649C1AA');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (298, 'ruizkevin22215', 'scrypt:32768:8:1$yxPEHQTwlsd9RtH4$d5e533b8550cb69164924a5bb53c58eb287bdaa295fa651a33a17b6db092df85d5775d59f5e2ce46d6701130bc487a927490bb19b67dfea589e99676b8cd36df', 'wdavis@example.org', '01942739656', 'Connie Gray', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (296, 298, 'RG8232709', 'Connie Gray', '1945-11-17', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (418, 296, 1, '2026-04-18 11:48:46', 'Confirmed', 1.00, 'PNR20260416412790F4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (418, 285.0, '2026-04-18 11:48:46', 'Cash', 'Completed', 'TXN2026041611484612CDCF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (299, 'amandawade61880', 'scrypt:32768:8:1$iG94MiiTaCmHoXPz$d84faeac40c311aedc1720cec643afb5e1d480775ebe3d00f599711c12b3394876241af89e4dd818098790a27e27704ceea90699cbb1b228814bb2907bfd2d44', 'ufuller@example.net', '01273243321', 'Jeremy Alvarado', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (297, 299, 'FA0460690', 'Jeremy Alvarado', '1968-01-10', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (300, 'warrennicole63682', 'scrypt:32768:8:1$Axg9mW4pewFq5KRX$0b7522b699ab5e557aa9436b416bffecf5c0c36daedd7ba944574ac89c1cbdd5873a4d62d3819bed04869a77ed80988dac95ac6464382cdf3c2fdd766ac788f0', 'adamriggs@example.org', '01378362560', 'Andrea Baldwin', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (298, 300, 'GR5794012', 'Andrea Baldwin', '1956-12-09', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (301, 'christopher4150191', 'scrypt:32768:8:1$zcLUMYkqhgnPXIXK$56c31bcaac15e808c9ebe0fadc7ee5205bae7e890162d12ab4bf0828f4d5cd7aa8178555d77614493a245f7f703c517356c6e8d5c270fa6304b8ab50cc92498f', 'michael03@example.com', '01427926690', 'Richard Hayes', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (299, 301, 'WL6687381', 'Richard Hayes', '1950-02-15', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (419, 299, 3, '2026-04-28 11:48:47', 'Confirmed', 1.00, 'PNR20260416FAF9FE6B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (419, 1025.0, '2026-04-28 11:48:47', 'bKash', 'Completed', 'TXN202604161148476BB277');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (420, 299, 12, '2026-04-24 11:48:47', 'Confirmed', 1.00, 'PNR20260416563C4DA7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (420, 285.0, '2026-04-24 11:48:47', 'Cash', 'Completed', 'TXN20260416114847D6C668');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (302, 'ljohnson78493', 'scrypt:32768:8:1$0FEq4yNPI0WoD098$1e6db2a1410eb52ec8ec51b832512d692bbe5a7947ec66f00b3ba64317fbe95badb102e6f688995b39bae3e6693546f99c5e09b9dd000cb778debfd3b5c8a835', 'judith75@example.com', '01948084473', 'Jerry Brown', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (300, 302, 'FZ4181909', 'Jerry Brown', '1996-10-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (421, 300, 8, '2026-03-27 11:48:47', 'Confirmed', 1.00, 'PNR20260416721406A6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (421, 950.0, '2026-03-27 11:48:47', 'Credit Card', 'Completed', 'TXN20260416114847D0E409');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (422, 300, 16, '2026-04-10 11:48:47', 'Confirmed', 1.00, 'PNR202604162BE31EED');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (422, 950.0, '2026-04-10 11:48:47', 'Credit Card', 'Completed', 'TXN202604161148472CAF55');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (303, 'courtney9677682', 'scrypt:32768:8:1$DgDNOsucOF6z6BKU$97cd2a174973474e17753290a5811f1a3d433b1ced0adb6a4626d22aa2d62706b617d486367819bf92fc148be655d764d5974a1c5986cd022289d36cc804579f', 'smithlisa@example.com', '01935261883', 'William Mcdonald', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (301, 303, 'BW1858232', 'William Mcdonald', '1974-07-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (423, 301, 13, '2026-04-07 11:48:47', 'Confirmed', 1.00, 'PNR20260416FB3CD7D3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (423, 950.0, '2026-04-07 11:48:47', 'Nagad', 'Completed', 'TXN202604161148474C6F4B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (424, 301, 4, '2026-04-13 11:48:47', 'Confirmed', 1.00, 'PNR20260416719BD794');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (424, 285.0, '2026-04-13 11:48:47', 'bKash', 'Completed', 'TXN20260416114847D693AE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (425, 301, 7, '2026-03-27 11:48:47', 'Confirmed', 1.00, 'PNR202604168FD29E0B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (425, 950.0, '2026-03-27 11:48:47', 'Cash', 'Completed', 'TXN20260416114847AC7669');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (304, 'prestonross59369', 'scrypt:32768:8:1$Uv2SJsyJyxiCOz9u$1e64707fe10ec732091dad5c6c1f9d41b32d1e1588fdcf917e9baf8e14755d33e5a76b8524466f068faad0a8af025502ff1b7584e2a27bc1f3d14a345f46faee', 'wheelerrebecca@example.net', '01822246959', 'Sharon Hamilton', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (302, 304, 'ZL4316772', 'Sharon Hamilton', '1980-07-27', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (426, 302, 18, '2026-03-22 11:48:47', 'Confirmed', 1.00, 'PNR20260416F83B959F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (426, 950.0, '2026-03-22 11:48:47', 'Cash', 'Completed', 'TXN2026041611484712F3E8');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (305, 'frank7625314', 'scrypt:32768:8:1$1E0tZbRoghELGQcG$ed58e740dec6e637d3479a66c199ae0d6ad80fae3df16422239f6e017d23112cee15802d892e7516adb8e1f8fca3cad1c6517b0078aa2ecc8b47aa27061c5dfa', 'phunter@example.com', '01062957433', 'Brandon Phillips', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (303, 305, 'OC3219565', 'Brandon Phillips', '1948-04-19', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (427, 303, 8, '2026-04-23 11:48:47', 'Confirmed', 1.00, 'PNR202604167C9696B6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (427, 265.0, '2026-04-23 11:48:47', 'Nagad', 'Completed', 'TXN20260416114847B39CF2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (306, 'clarkjessica87477', 'scrypt:32768:8:1$Ya9sbw1QfOHIvenp$a5a093f576eb1cbde4edee1c71cf6cd23657a858dc0126697ac989e858915a99bf1200c4e461fc6de907b68740ecbd5e53b07ef0da181ded1893bb280cdef978', 'tabithaacevedo@example.org', '01978144776', 'Sherri Porter', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (304, 306, 'AW9309036', 'Sherri Porter', '1974-06-06', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (307, 'uhart3863', 'scrypt:32768:8:1$YLndXQQu2BcZyitm$4c420ee982b62ccd3b6cdc1ed3ac846ea473cfd5b4f94f36d079aa017b20e0370f132ba728e51cacd6376b57382e97abb703040f781eff138c506147a0907812', 'thomas78@example.org', '01762509025', 'Christine Frazier', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (305, 307, 'ZO7550575', 'Christine Frazier', '2007-05-11', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (428, 305, 14, '2026-03-18 11:48:47', 'Confirmed', 1.00, 'PNR20260416488860B5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (428, 285.0, '2026-03-18 11:48:47', 'bKash', 'Completed', 'TXN2026041611484715B9D9');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (429, 305, 12, '2026-04-08 11:48:47', 'Confirmed', 1.00, 'PNR20260416BE453549');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (429, 855.0, '2026-04-08 11:48:47', 'Nagad', 'Completed', 'TXN20260416114847064EE2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (308, 'zsmith50054', 'scrypt:32768:8:1$3YAlDEKLdRISAy0d$29f2531c1ba2fac9da8ba066779c2d9289d86f2f98b89c3d598a16b279e3f0990f1ed4693351c3c96218e5b4aabf36f69f7efdbcdfbd19a15f55c2687eddab26', 'stevenross@example.org', '01327657413', 'Melissa Baldwin', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (306, 308, 'KE3077465', 'Melissa Baldwin', '1973-11-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (430, 306, 13, '2026-04-15 11:48:47', 'Cancelled', 1.00, 'PNR202604166CF2BDDB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (430, 1300.0, '2026-04-15 11:48:47', 'Nagad', 'Refunded', 'TXN20260416114847878EA4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (431, 306, 17, '2026-03-29 11:48:47', 'Confirmed', 1.00, 'PNR202604167C007323');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (431, 450.0, '2026-03-29 11:48:47', 'Cash', 'Completed', 'TXN2026041611484710A984');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (432, 306, 16, '2026-03-23 11:48:47', 'Confirmed', 1.00, 'PNR202604169D5695E0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (432, 780.0, '2026-03-23 11:48:47', 'Nagad', 'Completed', 'TXN20260416114847324596');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (309, 'cooperjessica71764', 'scrypt:32768:8:1$DEwidpUTtiWY7yhx$3c7574d1385a30f92a421d5ab9664197f001e49b0155dfed1b1cab4f7a23ba6691e7c1ba6ec497d103d2272b8554df8dafc7f482577e1754f789e2e6c77180cf', 'scottchavez@example.net', '01480465978', 'Joseph Hayes', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (307, 309, 'KN2802656', 'Joseph Hayes', '1970-06-14', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (310, 'brownzachary94079', 'scrypt:32768:8:1$YltCxyhTqryYWyxn$12ffb29a8d4138e7db8e0c38e986f6c1488ca0156dbed7b90f16e82530b696c8116f0761882894724c2de09c233ed1bb48aa4c8077d0360f58bfbc478b5cf978', 'hunter62@example.net', '01053892327', 'Michael Brown', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (308, 310, 'LP6181814', 'Michael Brown', '1978-09-28', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (433, 308, 9, '2026-04-16 11:48:48', 'Confirmed', 1.00, 'PNR20260416AB2BB786');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (433, 1425.0, '2026-04-16 11:48:48', 'Cash', 'Completed', 'TXN20260416114848207BE6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (311, 'paula9813231', 'scrypt:32768:8:1$VaGZ7G3KOjG7m7BE$0ba544ff7d518c6a87b44b2acd15990219b27607f7772070ef91aa9068c57f095ad9b18bf101be74853c9f3ef8b8d918717db9e712e709c132eb29532d4f031d', 'antonioedwards@example.org', '01128769569', 'Kendra Hansen', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (309, 311, 'AN8634373', 'Kendra Hansen', '1966-07-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (434, 309, 11, '2026-04-30 11:48:48', 'Confirmed', 1.00, 'PNR2026041644600CDD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (434, 285.0, '2026-04-30 11:48:48', 'Cash', 'Completed', 'TXN202604161148488A1348');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (435, 309, 9, '2026-04-18 11:48:48', 'Cancelled', 1.00, 'PNR202604160AD351B8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (435, 1050.0, '2026-04-18 11:48:48', 'Cash', 'Refunded', 'TXN20260416114848D05259');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (312, 'lisaelliott21811', 'scrypt:32768:8:1$WioKOMxckLzZyIps$3005c4378036ab0321a32e6474ae30f9cb8bf81b965e187fa51e62448a3604ed63165c2a0ac240b0ebd3dcfd6858fe2496884027b638b81f2272f4df97c5d094', 'gmontoya@example.com', '01992528874', 'Joshua Martinez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (310, 312, 'PT1373560', 'Joshua Martinez', '1977-12-14', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (313, 'wilkinsonsara75780', 'scrypt:32768:8:1$o2w1YzZJxquvS1Ke$6299e04c04d6b6215c0bc1dea95236f22a814078eace8b9cd0753594aba59252a526aaf12671d23ab777d36ab37f5409de14a67820480331f3556a0bc522e50d', 'ismith@example.net', '01484799682', 'David Green', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (311, 313, 'LY5403521', 'David Green', '1961-05-08', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (314, 'tyler3228322', 'scrypt:32768:8:1$EUrAoGyBsFtz39S7$2e9b5919524d546db9713f910e8ac8637b8aabdc97747ceda4358b848fa0d4a872332a3faa29e7278e2f00ab0dd592c6c176fa5cc864163316063cfd69a650b7', 'hbrown@example.com', '01162581916', 'Anthony Campbell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (312, 314, 'PA6284534', 'Anthony Campbell', '1991-03-20', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (436, 312, 11, '2026-04-25 11:48:48', 'Confirmed', 1.00, 'PNR202604164661E873');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (436, 855.0, '2026-04-25 11:48:48', 'Cash', 'Completed', 'TXN20260416114848D381F5');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (315, 'willietaylor87685', 'scrypt:32768:8:1$wQlnlTWxZUw4bZTw$7992be67d2fe33cbe8bc3b22f65defaeebe82918001f1bff1df890deefe8d82e8d544683cdc7d4f5373f1adf27b92fcfb163b320054e585551e2b73b7bc09391', 'calebjohnson@example.net', '01338456650', 'Alejandro Lloyd', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (313, 315, 'OK4241842', 'Alejandro Lloyd', '1967-12-16', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (437, 313, 5, '2026-04-09 11:48:48', 'Confirmed', 1.00, 'PNR2026041600A0F6E1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (437, 250.0, '2026-04-09 11:48:48', 'Credit Card', 'Completed', 'TXN2026041611484816D151');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (438, 313, 17, '2026-03-27 11:48:48', 'Confirmed', 1.00, 'PNR202604169E91F73F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (438, 1398.0, '2026-03-27 11:48:48', 'Credit Card', 'Completed', 'TXN20260416114848232DF7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (316, 'hansonerin89554', 'scrypt:32768:8:1$L0aBLarkp2uOtDcU$d833ba44837fc8649d1fee06eada2b841b743026c5e85b69f14fb7f1ed4fd0d5f2a8e111314963a0a2f77c4af82f3fba852d3f15e5f3ffa16f2ba47563c44caa', 'ewagner@example.com', '01888501145', 'Anthony Levy', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (314, 316, 'GK5249033', 'Anthony Levy', '1988-10-30', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (439, 314, 1, '2026-03-29 11:48:48', 'Confirmed', 1.00, 'PNR20260416190BC428');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (439, 285.0, '2026-03-29 11:48:48', 'Credit Card', 'Completed', 'TXN202604161148489C6DD1');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (440, 314, 12, '2026-04-03 11:48:48', 'Confirmed', 1.00, 'PNR20260416399053D1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (440, 1025.0, '2026-04-03 11:48:48', 'bKash', 'Completed', 'TXN20260416114848C89525');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (441, 314, 6, '2026-04-17 11:48:48', 'Confirmed', 1.00, 'PNR2026041629D6219A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (441, 1300.0, '2026-04-17 11:48:48', 'Cash', 'Completed', 'TXN20260416114848C2B5F0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (317, 'pfloyd94379', 'scrypt:32768:8:1$4Ypy1EVRbDDTTJWU$4e005f7fa0d5176eef02a18bd28f9e2955721684642d60401da9c10ba15d1c20af52837291efa9778bb079af57d8b72812c5aed16ff09183a47f1024248b9c66', 'ptaylor@example.net', '01153987351', 'Mary Scott', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (315, 317, 'EP7884785', 'Mary Scott', '1992-12-11', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (442, 315, 19, '2026-04-06 11:48:48', 'Confirmed', 1.00, 'PNR2026041699006950');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (442, 295.0, '2026-04-06 11:48:48', 'Credit Card', 'Completed', 'TXN20260416114848EDFD5F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (318, 'arthur8312427', 'scrypt:32768:8:1$0taR3kDzyYNH1LA4$8c02044f5d6a455f6968a79d793dfb1369e88b1ab238d8812199b81386a24f8ca5cfafa2e4a6817012fd17d46d496e297ee9dd56bf59fbc5946c752e33ddd411', 'marychapman@example.org', '01252520358', 'Alexa Jones', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (316, 318, 'PK6893067', 'Alexa Jones', '1957-01-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (443, 316, 12, '2026-04-14 11:48:48', 'Confirmed', 1.00, 'PNR2026041643480B6F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (443, 1398.0, '2026-04-14 11:48:48', 'bKash', 'Completed', 'TXN202604161148480A9313');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (319, 'shawnahogan78700', 'scrypt:32768:8:1$YrngCaZBPR6Qk39f$52e5a0842bc2323b204dbd3f53b968d2861ad377a630e74bd717121a213dc3aebb401301d5616256e513840ba9ab9444d658bf1227179697a9d8b0a596f07a90', 'amy24@example.org', '01248047817', 'Melissa Hicks', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (317, 319, 'GZ5174494', 'Melissa Hicks', '1957-11-27', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (320, 'lisa8380932', 'scrypt:32768:8:1$5uB11pZbj4rApPxu$c466001a287d2501952ccd37dd025025e65cf3cce46cabe502e7f2ada40d60d6cfe7b0b9d42882a6fbd872544f3c3e29eab3de40ff1f35fe09cad2e72d8243da', 'johnsonjesse@example.com', '01004704938', 'David Scott', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (318, 320, 'YH1863599', 'David Scott', '1969-11-05', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (444, 318, 3, '2026-04-21 11:48:49', 'Confirmed', 1.00, 'PNR20260416D9A91048');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (444, 855.0, '2026-04-21 11:48:49', 'Cash', 'Completed', 'TXN202604161148491761A3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (445, 318, 2, '2026-04-30 11:48:49', 'Confirmed', 1.00, 'PNR202604168AFD1187');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (445, 1025.0, '2026-04-30 11:48:49', 'Credit Card', 'Completed', 'TXN20260416114849B7C103');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (321, 'zadams85167', 'scrypt:32768:8:1$AWK3gMe7PMxSPWdq$ed34d1afed70c156c43a9728484e09db2647f4951afebc0cef9be834e55b45b184440c9ca88e5def7bfc28ced4eadb1e9400c10c745c26c7a0e56841ec1462cc', 'christina82@example.org', '01426718221', 'Justin Delgado', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (319, 321, 'IM5609574', 'Justin Delgado', '1968-12-31', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (446, 319, 1, '2026-04-27 11:48:49', 'Confirmed', 1.00, 'PNR2026041620D667D7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (446, 1398.0, '2026-04-27 11:48:49', 'Credit Card', 'Completed', 'TXN202604161148497F35D1');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (322, 'kyle1452994', 'scrypt:32768:8:1$N9c6KUbGziSEP7Z4$86c5486e20e1cd9ae02dbb4703d31a74c43e8aa982e13697f84f6ff21b085d2cb4267f73a458723e836d0d07705be2b302dab6d7de5343b508ee78a57fc8a7a1', 'dylanthompson@example.com', '01759680283', 'Jennifer Boyd', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (320, 322, 'YN3663827', 'Jennifer Boyd', '1959-01-19', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (447, 320, 16, '2026-04-03 11:48:49', 'Confirmed', 1.00, 'PNR20260416F934A27A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (447, 425.0, '2026-04-03 11:48:49', 'bKash', 'Completed', 'TXN20260416114849041295');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (448, 320, 1, '2026-04-22 11:48:49', 'Confirmed', 1.00, 'PNR202604162EA03549');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (448, 1025.0, '2026-04-22 11:48:49', 'Credit Card', 'Completed', 'TXN2026041611484994F08F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (449, 320, 14, '2026-03-27 11:48:49', 'Confirmed', 1.00, 'PNR202604165152929A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (449, 450.0, '2026-03-27 11:48:49', 'bKash', 'Completed', 'TXN20260416114849A01734');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (323, 'hancockcourtney74970', 'scrypt:32768:8:1$7KfIek2vhIznuwRN$f0fb77f934516c3112996bffa26c0ff52d80351dec2c830b2f2cae3b2c1743a2371d8673fce32f08523dfb0d3d6be43a7b982cf28ba6545925f20d521d202efd', 'xcole@example.com', '01015032140', 'Michael Graves', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (321, 323, 'NZ2192426', 'Michael Graves', '1967-06-28', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (324, 'wilsonmonica70485', 'scrypt:32768:8:1$NKpNfDcRPoxPeW5U$28cec8eb69aa1c1e7ebeacce15dcf7e5c54b32d2e3a8d734fc0707563b50acb4aced60cc70246f410d098ba288c951641ea292f539337e93d51262b2bdecf279', 'prestontonya@example.com', '01661206663', 'Kim Malone', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (322, 324, 'KS1158032', 'Kim Malone', '2002-11-13', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (325, 'catherine3524304', 'scrypt:32768:8:1$3pZ0CejwR778KQWs$5bfef5129ee107c35931c093fad12fe33b3408ef1395d0de2a7e69696f7bf02384a60e8a8202e6810a41f8cd543ec909e5df52e91d98c03eb794769418057197', 'trowe@example.com', '01714467105', 'Erin Orr', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (323, 325, 'YQ0370692', 'Erin Orr', '1974-01-13', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (450, 323, 13, '2026-04-05 11:48:49', 'Confirmed', 1.00, 'PNR20260416AEFC8D19');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (450, 250.0, '2026-04-05 11:48:49', 'Cash', 'Completed', 'TXN2026041611484999C338');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (326, 'flittle9100', 'scrypt:32768:8:1$zSbyoIiJ7YaW1PqW$b720b1db2e35e3162f3d8439b5988bd61cfffcc3b989cf02dd47b1a712528016b4d79f07abf9c451491580e871e1e319475c773495ebaf21e5b159440e963191', 'andrewmoore@example.net', '01271086758', 'Lindsay Torres', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (324, 326, 'RO0149882', 'Lindsay Torres', '1973-07-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (451, 324, 16, '2026-04-05 11:48:49', 'Confirmed', 1.00, 'PNR2026041697DC8691');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (451, 425.0, '2026-04-05 11:48:49', 'Nagad', 'Completed', 'TXN20260416114849EF50E0');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (452, 324, 14, '2026-03-21 11:48:49', 'Confirmed', 1.00, 'PNR2026041673B016B7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (452, 855.0, '2026-03-21 11:48:49', 'bKash', 'Completed', 'TXN20260416114849B846DC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (327, 'richardrios35849', 'scrypt:32768:8:1$LDLZUYTAv82m6IUJ$a3023ab27b5b9c4d60232a4dd90e5b0a783db60431e7b05bca08b5390e26eaeb66e0e8695dcd8ee2717edc98c1af444a60b8b121f7b54980f50d0b4c1f212e32', 'nicholas29@example.net', '01126976728', 'Amy Bell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (325, 327, 'JT3887947', 'Amy Bell', '1980-06-04', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (453, 325, 11, '2026-04-15 11:48:49', 'Confirmed', 1.00, 'PNR2026041653588551');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (453, 1398.0, '2026-04-15 11:48:49', 'Cash', 'Completed', 'TXN202604161148495DDDBF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (328, 'danielle4790076', 'scrypt:32768:8:1$Fb8J5DBmPrXj7seB$d7a3fba0816558a2cd1075d19a6ec8fa8348a7c050f17bac634d4c28350897605a150026b163807f28df60ab39f47bcfdb663ee33e27a0d16bed89816863a402', 'melissa66@example.com', '01085143956', 'Alicia Ortiz', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (326, 328, 'RN4105541', 'Alicia Ortiz', '1963-03-05', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (329, 'joel3744181', 'scrypt:32768:8:1$niVwK53RsCY0xgd8$41cde6263039017024e49a5710b2ecddca052c7e421ef78486180f8a9c058c7d3e07354e8c3a3eaedf3934df28ac2245c695ef4162b987328ebe9a7214208829', 'zherrera@example.org', '01987694401', 'Devon Henson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (327, 329, 'FI4708856', 'Devon Henson', '1948-02-13', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (454, 327, 9, '2026-04-26 11:48:49', 'Confirmed', 1.00, 'PNR202604165BE34760');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (454, 465.0, '2026-04-26 11:48:49', 'Cash', 'Completed', 'TXN2026041611484930C7DD');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (330, 'georgewilson73524', 'scrypt:32768:8:1$blwdw3bp9BiSgrQK$a9327ac0a052893e6788b364d9fd6cfca4a09785d598975b4950c405e9a3272a836f371b0fca9925e76d50a790d398e59b24fcad8f86fbe3bef0f7cd69c6e649', 'darren37@example.org', '01501638042', 'Jerry Bailey', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (328, 330, 'FK3787505', 'Jerry Bailey', '2003-08-06', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (455, 328, 5, '2026-04-09 11:48:50', 'Cancelled', 1.00, 'PNR20260416FD23F771');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (455, 250.0, '2026-04-09 11:48:50', 'Credit Card', 'Refunded', 'TXN20260416114850FFCEE5');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (331, 'jonesbrooke76682', 'scrypt:32768:8:1$x2mqZGFm2LB5qjeB$57bb73d2393843bf4ef0325f5ef6e4c98a74b66b79dc9df0dcb8f052d15a6dcbb7d0e4d4d894993f1740c3abc28e46c1aea9945be2ee2ce674cb4bc05cd8734c', 'hubbardkevin@example.net', '01477166165', 'Tara Stafford', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (329, 331, 'XB2291514', 'Tara Stafford', '2002-12-29', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (456, 329, 20, '2026-04-26 11:48:50', 'Confirmed', 1.00, 'PNR202604160DE7989B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (456, 250.0, '2026-04-26 11:48:50', 'bKash', 'Completed', 'TXN202604161148502CCB07');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (457, 329, 16, '2026-04-01 11:48:50', 'Confirmed', 1.00, 'PNR20260416BAF3374D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (457, 425.0, '2026-04-01 11:48:50', 'Nagad', 'Completed', 'TXN202604161148504E4DD2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (332, 'laura3363138', 'scrypt:32768:8:1$Mg0K2VIQZ8EFhqsp$df49c0f4ef111a0871b48bd9dea6f2f334f4e4a2f2927b4b034f19a08ba99d33a2b8ed554e7165f44e98dec2a3052d046f764a2631eeb9666b4a4162b1813a61', 'dgregory@example.com', '01240334080', 'Alicia Johnston', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (330, 332, 'BO5867730', 'Alicia Johnston', '1951-08-15', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (458, 330, 18, '2026-04-24 11:48:50', 'Confirmed', 1.00, 'PNR2026041620F1AFC4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (458, 950.0, '2026-04-24 11:48:50', 'Credit Card', 'Completed', 'TXN20260416114850636E18');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (459, 330, 20, '2026-04-28 11:48:50', 'Confirmed', 1.00, 'PNR202604165C924EE4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (459, 950.0, '2026-04-28 11:48:50', 'Credit Card', 'Completed', 'TXN20260416114850F4E040');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (333, 'ucain67392', 'scrypt:32768:8:1$GJL0RFGrsAlpjPSR$70a78ad90ce93f49a90b73591ab8a074c393a75b96e6562fbb6fa736c944f7d17f76e1cadacf89efcaeb3cb15ba01849e51229f68932c9bafd04c1d3720a45aa', 'rmedina@example.org', '01149429355', 'Jason Davis', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (331, 333, 'CR8057618', 'Jason Davis', '1968-03-08', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (460, 331, 5, '2026-04-05 11:48:50', 'Confirmed', 1.00, 'PNR20260416FD4BC8F8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (460, 800.0, '2026-04-05 11:48:50', 'Cash', 'Completed', 'TXN20260416114850E9FBA6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (334, 'john2555715', 'scrypt:32768:8:1$cl1rpG48D3sGj1dx$4087e5bf7d93db10d54f0982921ef63c177b0bf1517217806fb644fadb5497cd3cbf91cb3255049bccee1badc638fb61931eab1de530b60fd29ec32fccefe2fa', 'willieroberts@example.net', '01354807803', 'Kristopher Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (332, 334, 'WL2638068', 'Kristopher Smith', '1953-05-29', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (461, 332, 6, '2026-04-30 11:48:50', 'Cancelled', 1.00, 'PNR20260416A22B96AE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (461, 950.0, '2026-04-30 11:48:50', 'Nagad', 'Refunded', 'TXN20260416114850855E0D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (462, 332, 11, '2026-04-01 11:48:50', 'Confirmed', 1.00, 'PNR202604167EE74492');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (462, 1398.0, '2026-04-01 11:48:50', 'bKash', 'Completed', 'TXN20260416114850EA91DE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (463, 332, 1, '2026-03-26 11:48:50', 'Confirmed', 1.00, 'PNR202604161E07646D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (463, 1025.0, '2026-03-26 11:48:50', 'Cash', 'Completed', 'TXN202604161148500922B5');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (335, 'cynthiagillespie35047', 'scrypt:32768:8:1$BX2b4zoqr0yUnDQz$f49ea87fc8946306c12563827c4430dc09f989eab821eed5e5c6a717f2d770cdabecbdc1fd6b3706d7cb3a5f710b58446416a88412120d7c0e8240a2da09c6db', 'brandon09@example.org', '01046062967', 'Daniel Cooper', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (333, 335, 'OT2685192', 'Daniel Cooper', '1983-07-12', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (464, 333, 14, '2026-04-23 11:48:50', 'Confirmed', 1.00, 'PNR20260416AC8B1390');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (464, 855.0, '2026-04-23 11:48:50', 'Credit Card', 'Completed', 'TXN20260416114850E81C39');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (465, 333, 6, '2026-04-19 11:48:50', 'Confirmed', 1.00, 'PNR20260416C4582210');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (465, 800.0, '2026-04-19 11:48:50', 'Credit Card', 'Completed', 'TXN20260416114850408150');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (336, 'ryan8846184', 'scrypt:32768:8:1$g3uI6lXNi5DWgevw$2936ed8991fe2bcd8284273045440e0c686ec3cd5052611d8e319b6cd3d7c06ca5cc8451bc0485eb06c73e0a6f49fd651c9253a326234d5d653109f71523ae4c', 'christopher47@example.net', '01531457401', 'Renee Cook', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (334, 336, 'KI6063411', 'Renee Cook', '1950-10-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (466, 334, 9, '2026-04-08 11:48:50', 'Confirmed', 1.00, 'PNR202604161A02B1E8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (466, 295.0, '2026-04-08 11:48:50', 'Cash', 'Completed', 'TXN2026041611485018F655');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (467, 334, 3, '2026-04-03 11:48:50', 'Confirmed', 1.00, 'PNR20260416F8F74781');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (467, 1398.0, '2026-04-03 11:48:50', 'bKash', 'Completed', 'TXN2026041611485076F090');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (337, 'yatesdavid94910', 'scrypt:32768:8:1$Gv4q16V6wrPGd0ac$ef851783518af0aed3654cc0aba9ef45c100600193f1e0bc564ac34ea901e5d04d20f7efe7492eae8473adb6ccff72a94fdec3f8d51393f7055901aa90109b2e', 'taylorcarolyn@example.com', '01685624523', 'Mrs. Rachel May', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (335, 337, 'LC8033717', 'Mrs. Rachel May', '1991-07-22', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (338, 'cpope93757', 'scrypt:32768:8:1$rvBOFztEoNeaBAjo$5fab3eca9f0baa3e428f52533ffb878dd74c7e56b1f3f15b7ccb4137e721773cd3a61d35d735117abae4196a941dd4d44e48b7e0de44e049189dee68a5b9f54b', 'hudsonkristina@example.org', '01000443886', 'Lauren Davila', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (336, 338, 'FX1353992', 'Lauren Davila', '2001-06-29', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (468, 336, 19, '2026-03-31 11:48:50', 'Confirmed', 1.00, 'PNR202604165737B46F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (468, 1050.0, '2026-03-31 11:48:50', 'bKash', 'Completed', 'TXN2026041611485062D41C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (469, 336, 10, '2026-03-20 11:48:50', 'Confirmed', 1.00, 'PNR202604166F887458');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (469, 1050.0, '2026-03-20 11:48:50', 'Nagad', 'Completed', 'TXN20260416114850C442D0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (339, 'hansonmichelle50652', 'scrypt:32768:8:1$DXmZo7mYcoleKqwk$972c83d5d5ec095997d184647ab21b65cee4392a67e2a7872d0be0e3395e442ecd929f57c39abff20bc44ea1a5795c23938b8c0e22e163838c5b73980037c38d', 'barbarascott@example.org', '01075352153', 'Sharon Randall', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (337, 339, 'QU9618223', 'Sharon Randall', '1975-01-08', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (340, 'reyesjames99064', 'scrypt:32768:8:1$zY5JUSMdTFN0REy9$52c235ad9684a003a696f593165933f023a01bc35b4575654e8af7f51ae1d36ada52386451b02b0a98e96d1069f63588a7b23307e1a7c13b1743609e692cd24a', 'elliottrebecca@example.net', '01816560648', 'Meagan Ayala', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (338, 340, 'DM7310897', 'Meagan Ayala', '1975-09-01', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (470, 338, 2, '2026-04-04 11:48:51', 'Confirmed', 1.00, 'PNR20260416CCAEE4B1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (470, 1025.0, '2026-04-04 11:48:51', 'Credit Card', 'Completed', 'TXN2026041611485127F2FA');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (471, 338, 9, '2026-04-02 11:48:51', 'Confirmed', 1.00, 'PNR2026041629667EEC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (471, 1425.0, '2026-04-02 11:48:51', 'bKash', 'Completed', 'TXN202604161148515D349E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (341, 'hnunez4094', 'scrypt:32768:8:1$pmdQ5SE0ZmvfjpD8$6725ca5a2cdaa7293b575d95ceb4a22ab98d959c2fbac9d668be268827f28ad4d91ad4777e0eb4d11b58e6da735a2f12127f6ecd5aafb41a28937466f4605cf3', 'felicia64@example.org', '01618086208', 'Michele Terry', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (339, 341, 'BD0014304', 'Michele Terry', '1964-01-02', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (342, 'garciamary93604', 'scrypt:32768:8:1$hRL4nLvGrCN6665X$594485c46cbdf3d900f8327bdfcee96559f4d9bbd94059262a1581ac08e35dd5743ac9808d620abd435de6ba304deafcc8aaa8c597590598f9ba206bc1bd6f30', 'tamara23@example.com', '01268117679', 'Scott Hamilton', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (340, 342, 'HR3254679', 'Scott Hamilton', '1968-02-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (472, 340, 20, '2026-03-19 11:48:51', 'Confirmed', 1.00, 'PNR20260416ECA93FFA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (472, 950.0, '2026-03-19 11:48:51', 'Cash', 'Completed', 'TXN2026041611485170B851');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (473, 340, 12, '2026-03-27 11:48:51', 'Confirmed', 1.00, 'PNR202604164536EAC5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (473, 855.0, '2026-03-27 11:48:51', 'Nagad', 'Completed', 'TXN20260416114851B89F79');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (343, 'robertdeleon69526', 'scrypt:32768:8:1$02ZNFWPMeVcMq35j$298cee32b033acdc3962a9b08875f08edb738eb26394a49f59464cc21758e5c96560cd7d188cd0e4c31b05759a882a824dfa77c735ba852c6d02cdcafd9a71d9', 'nsharp@example.com', '01461415714', 'Christopher Gibson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (341, 343, 'FI7662297', 'Christopher Gibson', '1961-09-24', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (474, 341, 15, '2026-04-06 11:48:51', 'Confirmed', 1.00, 'PNR20260416456BAB09');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (474, 265.0, '2026-04-06 11:48:51', 'Credit Card', 'Completed', 'TXN202604161148517F1544');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (475, 341, 5, '2026-03-23 11:48:51', 'Confirmed', 1.00, 'PNR202604161669A327');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (475, 950.0, '2026-03-23 11:48:51', 'Credit Card', 'Completed', 'TXN20260416114851C182D6');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (476, 341, 8, '2026-05-01 11:48:51', 'Confirmed', 1.00, 'PNR2026041641A3C660');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (476, 425.0, '2026-05-01 11:48:51', 'Credit Card', 'Completed', 'TXN20260416114851BD3D5C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (344, 'joan8299596', 'scrypt:32768:8:1$VVupsZ4GKGPx0wba$c5bfaafaf178fb8395b5f8d38c42e6ceb00e97ee97d73290e9d5f2fc056aab2eaef05f06b4a0c35db5c5f582500c4ba3b59388d0341a14e89deece0347a5191f', 'saragonzalez@example.net', '01791471718', 'Dylan Douglas', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (342, 344, 'TD3356744', 'Dylan Douglas', '2000-02-04', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (477, 342, 1, '2026-03-20 11:48:51', 'Confirmed', 1.00, 'PNR20260416C3B5F12B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (477, 450.0, '2026-03-20 11:48:51', 'bKash', 'Completed', 'TXN20260416114851273E22');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (478, 342, 13, '2026-03-18 11:48:51', 'Confirmed', 1.00, 'PNR2026041628FC0816');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (478, 800.0, '2026-03-18 11:48:51', 'Nagad', 'Completed', 'TXN202604161148519FDF59');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (479, 342, 5, '2026-04-25 11:48:51', 'Confirmed', 1.00, 'PNR20260416CD76A1F3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (479, 1300.0, '2026-04-25 11:48:51', 'Nagad', 'Completed', 'TXN20260416114851F57946');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (345, 'jenkinsjohn13297', 'scrypt:32768:8:1$kbwy8jzL0oP9Vsgf$fbd5c6458d46142b468d573d5476306c592da4a731fc688ea9b6faec5cacf46cdf14512a92374897c7362bb3c51189ef96fbbcc73d91a50b7f9acb81d434e1e1', 'ubarrera@example.org', '01802903248', 'Gail Young', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (343, 345, 'TP9316219', 'Gail Young', '1955-04-21', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (480, 343, 12, '2026-04-21 11:48:51', 'Confirmed', 1.00, 'PNR20260416669E4786');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (480, 855.0, '2026-04-21 11:48:51', 'Nagad', 'Completed', 'TXN20260416114851A31AF8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (481, 343, 6, '2026-04-02 11:48:51', 'Confirmed', 1.00, 'PNR20260416AD10D61B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (481, 800.0, '2026-04-02 11:48:51', 'Cash', 'Completed', 'TXN20260416114851B229DC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (346, 'lauren2452872', 'scrypt:32768:8:1$oQ9gYgtCnlQcFoKJ$5e6aabe924573b9aaa31c5106377e20e597e00af577bec9da55a9a8602581a4933dd2171a6a4376323636f422af39dc59300b9726ccb954129a43a84acc678fa', 'julie95@example.net', '01882499228', 'Danielle Rosario', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (344, 346, 'HL0272060', 'Danielle Rosario', '1976-05-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (482, 344, 7, '2026-04-11 11:48:51', 'Confirmed', 1.00, 'PNR20260416DDE69816');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (482, 265.0, '2026-04-11 11:48:51', 'bKash', 'Completed', 'TXN20260416114851B43B7E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (483, 344, 7, '2026-04-04 11:48:51', 'Confirmed', 1.00, 'PNR202604168777C733');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (483, 425.0, '2026-04-04 11:48:51', 'Nagad', 'Completed', 'TXN20260416114851415CCC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (484, 344, 6, '2026-04-06 11:48:51', 'Confirmed', 1.00, 'PNR2026041604C61F27');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (484, 950.0, '2026-04-06 11:48:51', 'Credit Card', 'Completed', 'TXN20260416114851B4A989');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (347, 'rjones17638', 'scrypt:32768:8:1$kpH3T02lbVDlrkzS$94c5b8228bbc2a5b19a6fe1fa07a45af4df6ef7c2ddd8e71b2d5a4f5ce6ef3bf9fbc57cd4f326ce090ce44f23a4a1f815ae36fb5b1d027c878bd102d299f0329', 'smithbarbara@example.com', '01318555153', 'Rhonda Gutierrez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (345, 347, 'UI5575085', 'Rhonda Gutierrez', '2003-06-16', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (485, 345, 2, '2026-04-17 11:48:51', 'Confirmed', 1.00, 'PNR20260416C62A7B08');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (485, 285.0, '2026-04-17 11:48:51', 'Credit Card', 'Completed', 'TXN202604161148518C1C01');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (348, 'john5091573', 'scrypt:32768:8:1$Y2ATXOKoMVpEqKEE$f142ae9eed5f6d29101c37c8a54e0e1cfc1b23db98b184c07f28a0639bbedd8c59afffa1c49a3935abde0de6ef8bbd7c3e54a8071ce134e84b7fc08dddf61ac9', 'christopherchandler@example.org', '01199069585', 'Katie Neal', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (346, 348, 'RQ4476436', 'Katie Neal', '1970-09-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (486, 346, 7, '2026-04-01 11:48:51', 'Confirmed', 1.00, 'PNR202604163441F135');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (486, 425.0, '2026-04-01 11:48:51', 'bKash', 'Completed', 'TXN202604161148518C2A70');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (487, 346, 7, '2026-04-02 11:48:51', 'Confirmed', 1.00, 'PNR20260416CB42DBCA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (487, 780.0, '2026-04-02 11:48:51', 'bKash', 'Completed', 'TXN202604161148517C5D33');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (349, 'julieconrad78865', 'scrypt:32768:8:1$c8yAXh5kXuffOUVg$be76999b0e156e7d8987cada63821da0610b4e425581afacd428231455bf4aff3037413752cef648d69cbbc862f1236687276f891d0684fb3f4f241bd7b8b131', 'cynthia78@example.org', '01669016449', 'Mr. Chad Morgan', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (347, 349, 'FX3520616', 'Mr. Chad Morgan', '1967-07-16', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (350, 'ssmith52601', 'scrypt:32768:8:1$09daHPjY5HPtlfSG$3ab6a18ff110264a5e1876bcf18ad05380659907a1d0de04e236b4ea7e3c2cf1d1ccba7122f17467d67f609bb22dff62948f9fa701e90e0bede6d262d4e06cf7', 'jacob70@example.net', '01947577528', 'Deborah Trevino', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (348, 350, 'SJ0105157', 'Deborah Trevino', '1993-11-02', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (488, 348, 13, '2026-04-19 11:48:52', 'Cancelled', 1.00, 'PNR20260416F7DDB89F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (488, 400.0, '2026-04-19 11:48:52', 'Nagad', 'Refunded', 'TXN20260416114852B4E080');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (489, 348, 1, '2026-03-30 11:48:52', 'Confirmed', 1.00, 'PNR2026041683EEBE1B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (489, 1398.0, '2026-03-30 11:48:52', 'Cash', 'Completed', 'TXN20260416114852507ED7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (490, 348, 9, '2026-03-19 11:48:52', 'Confirmed', 1.00, 'PNR202604161FBBBC3B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (490, 465.0, '2026-03-19 11:48:52', 'bKash', 'Completed', 'TXN20260416114852EAC2A4');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (351, 'andersonnicholas62835', 'scrypt:32768:8:1$XjLj4D9DBIOBtdmk$0464d22a741f7377b67e87f1b972a320d6297c17a5de2a15280efb0c34d2eaa63da75657acb1f484a5c173dc8e272e2d122db9aaee91a6ae0da956e4568776d4', 'marissayu@example.org', '01515033791', 'Joseph Leonard', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (349, 351, 'XO0036346', 'Joseph Leonard', '1970-06-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (491, 349, 18, '2026-04-16 11:48:52', 'Confirmed', 1.00, 'PNR20260416FB68F331');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (491, 950.0, '2026-04-16 11:48:52', 'Credit Card', 'Completed', 'TXN2026041611485275D148');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (492, 349, 7, '2026-03-17 11:48:52', 'Confirmed', 1.00, 'PNR20260416AB0DA5FC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (492, 950.0, '2026-03-17 11:48:52', 'bKash', 'Completed', 'TXN20260416114852E4FADD');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (493, 349, 16, '2026-04-22 11:48:52', 'Confirmed', 1.00, 'PNR202604161F634E68');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (493, 425.0, '2026-04-22 11:48:52', 'Cash', 'Completed', 'TXN20260416114852C6673F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (352, 'chernandez12713', 'scrypt:32768:8:1$lL4vftCVGZJQY0eJ$90a0f3eaf6fd8e604074708c41c7af0bc92697201228926b467b4154d1aa577edb2d149b888d692bbfbdb926dd5cdd55f1fe6b579409162526bd394bc304ed0f', 'jessica54@example.net', '01971485392', 'Mark Diaz', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (350, 352, 'PV1107382', 'Mark Diaz', '1960-10-10', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (494, 350, 3, '2026-04-24 11:48:52', 'Confirmed', 1.00, 'PNR20260416C66EF875');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (494, 450.0, '2026-04-24 11:48:52', 'Credit Card', 'Completed', 'TXN20260416114852529574');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (495, 350, 18, '2026-04-19 11:48:52', 'Confirmed', 1.00, 'PNR202604168D29ED9B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (495, 950.0, '2026-04-19 11:48:52', 'Cash', 'Completed', 'TXN20260416114852665E65');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (496, 350, 3, '2026-04-14 11:48:52', 'Confirmed', 1.00, 'PNR20260416A3B2CEB5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (496, 285.0, '2026-04-14 11:48:52', 'bKash', 'Completed', 'TXN202604161148524FF117');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (353, 'bennettbrittany29841', 'scrypt:32768:8:1$cyRwshCX9TRY1yyk$28085f01c9f8e367d4bb438672376f246a6b734a1ec9079763e62d962fee55cf9586b4819b0423c83f6c551f3ee1adced7825cd917b8c2622aa1e4bec926668a', 'smithmichael@example.net', '01388903847', 'Eric Martinez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (351, 353, 'TV0735879', 'Eric Martinez', '2007-11-19', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (497, 351, 14, '2026-04-23 11:48:52', 'Confirmed', 1.00, 'PNR20260416316AE221');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (497, 1025.0, '2026-04-23 11:48:52', 'Cash', 'Completed', 'TXN20260416114852BDF63B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (354, 'klinejoseph94468', 'scrypt:32768:8:1$BDtTj8KzG2t2SDaV$1b2210546f16ec0966fe903358eac4e519fe19b6655ed6cab38656e3daf4e0ae7c8649177efe45303d222676911eecef79cc1f8e428186990649be9c2df9b35e', 'ksmith@example.com', '01412915125', 'Brittany Romero', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (352, 354, 'WE0763576', 'Brittany Romero', '2007-12-25', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (355, 'victoriascott48271', 'scrypt:32768:8:1$nOWuVdsHSnEtjXo7$735e50400b352caa7073a053656a04bf566d8fec937f61e8a31242728872de26c9b368a9391b49b4055387bf9facd55a66f1142b7791e6c36b5b530375326a1d', 'eray@example.net', '01272065443', 'Sean Williams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (353, 355, 'JF3186535', 'Sean Williams', '1983-01-13', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (498, 353, 13, '2026-05-01 11:48:52', 'Confirmed', 1.00, 'PNR202604162F4FB786');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (498, 400.0, '2026-05-01 11:48:52', 'Credit Card', 'Completed', 'TXN20260416114852E0BAC3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (499, 353, 1, '2026-04-08 11:48:52', 'Cancelled', 1.00, 'PNR20260416F5A6461E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (499, 1025.0, '2026-04-08 11:48:52', 'bKash', 'Refunded', 'TXN2026041611485209E73D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (356, 'victoriablake71687', 'scrypt:32768:8:1$0vY26pK1mvxqwKwZ$fa4ac9bd2a2eb5b6a391aa8adf53d47a674f06f69f504b6e6e2dd8426bf2649831b02862ef8e510f1ff484d0cad725f36a4f244f39d1daf9a0217f7e33f8fc74', 'michael61@example.com', '01295976745', 'Kim Alexander', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (354, 356, 'XD7869512', 'Kim Alexander', '1972-09-30', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (500, 354, 13, '2026-04-28 11:48:52', 'Confirmed', 1.00, 'PNR2026041658AC205C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (500, 400.0, '2026-04-28 11:48:52', 'bKash', 'Completed', 'TXN2026041611485224C062');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (357, 'alecward68088', 'scrypt:32768:8:1$rsoM2Pw4nFpSdND7$8228fca70fef4ce0e479ba75fbd11e38d1ee13afeee86971ffdb3044271d23bfcc436647fedc7ebdde83298afe3e39f36c3b800eced99b6aaa86b7078e2ea67e', 'anthony80@example.net', '01383388174', 'Samantha Pittman', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (355, 357, 'LB2016472', 'Samantha Pittman', '1986-05-31', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (501, 355, 17, '2026-04-30 11:48:53', 'Confirmed', 1.00, 'PNR20260416FE7A8E09');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (501, 855.0, '2026-04-30 11:48:53', 'bKash', 'Completed', 'TXN20260416114853B1870A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (358, 'bporter68722', 'scrypt:32768:8:1$Y39OF1WBzUvqkzNM$6e3c6d7076e216e7b6a565f39ee75566816014b7bb1eac2bc663a91013574afedb58a31d61cf16e19723aa054de635bc72600bec3886d1017c64b1078e59c297', 'david21@example.net', '01470968447', 'Amanda Reid', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (356, 358, 'SO7037781', 'Amanda Reid', '1955-12-23', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (359, 'kiarasullivan4055', 'scrypt:32768:8:1$TzgUL8bCsWYO9MTk$834c0cc5bfd108f285b042d10ea0c51942fc8b53e25b9d156ee1266011714212f3845a91216ce2e9ae25eb268e1733a9924705ad366ad4c23f71b46971ac7c3c', 'kathryn84@example.net', '01861345606', 'Brenda Chavez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (357, 359, 'RO9324421', 'Brenda Chavez', '1958-04-03', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (502, 357, 1, '2026-04-17 11:48:53', 'Confirmed', 1.00, 'PNR202604160E97F3C6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (502, 285.0, '2026-04-17 11:48:53', 'Credit Card', 'Completed', 'TXN202604161148531DE0A3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (360, 'lromero96807', 'scrypt:32768:8:1$pq6lgrmKxwoOAYdj$b0f279b1fcd81f9df2d7e27d8258f64cc53c0d936790403d9ac404018b78baf5de522b611851b8b1c13c577b28d517dc4918b3490416970e2c6071b4ab07a656', 'dominguezlaurie@example.com', '01093823585', 'Denise Garcia', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (358, 360, 'MD2491867', 'Denise Garcia', '1960-08-05', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (361, 'jeffrey1052333', 'scrypt:32768:8:1$tGDH7PxHWa0wuExZ$e8c755b330c85c76786f4a4058beecf31e7d97f0eff30f48f480614fe3537bbf3b85443330d1b67ac6d9670fee034e3c9272fd98d7c55542fd42cbc94d4e545b', 'qvalenzuela@example.com', '01565915192', 'Daryl Stone', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (359, 361, 'NL6222050', 'Daryl Stone', '1972-03-03', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (503, 359, 18, '2026-03-21 11:48:53', 'Cancelled', 1.00, 'PNR20260416F1AE24DF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (503, 780.0, '2026-03-21 11:48:53', 'Cash', 'Refunded', 'TXN202604161148534295A0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (362, 'qking33937', 'scrypt:32768:8:1$EsHP54Kijek4D7aT$20e245527e2a9985f317df5d017d271960132b712487d45da80fce27b81401184947c45058acd00ec6c316cafe3adecdb28bb588c0bd56630976a353ab8a1a71', 'emontgomery@example.net', '01836807182', 'Richard Tanner', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (360, 362, 'XX1547411', 'Richard Tanner', '1972-06-25', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (504, 360, 2, '2026-03-28 11:48:53', 'Confirmed', 1.00, 'PNR20260416386E5BEE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (504, 1398.0, '2026-03-28 11:48:53', 'Credit Card', 'Completed', 'TXN2026041611485323FEBF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (363, 'vdavis69812', 'scrypt:32768:8:1$KR23E3mooxoHKMsb$52980f2ad1ab71bdfb122f082a50b84b1f85d038cbd92a8b2accd7afc415a7774578debfb8236d0d972cf1f694f199f113c0cfb039893ccc874de35240bf37bb', 'christopher24@example.org', '01104069174', 'Joshua Patton', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (361, 363, 'EB1904851', 'Joshua Patton', '1986-08-14', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (505, 361, 15, '2026-04-08 11:48:53', 'Confirmed', 1.00, 'PNR20260416B43A81FB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (505, 950.0, '2026-04-08 11:48:53', 'Nagad', 'Completed', 'TXN20260416114853E75AF0');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (506, 361, 3, '2026-04-22 11:48:53', 'Confirmed', 1.00, 'PNR20260416E493A46A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (506, 855.0, '2026-04-22 11:48:53', 'Credit Card', 'Completed', 'TXN202604161148532C62B8');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (507, 361, 10, '2026-04-10 11:48:53', 'Confirmed', 1.00, 'PNR202604162C359D55');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (507, 295.0, '2026-04-10 11:48:53', 'bKash', 'Completed', 'TXN20260416114853C14FC5');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (364, 'eric7916545', 'scrypt:32768:8:1$kUNFTSCGUN4hcawO$f4a2360cfb51dbb84097f321d50f0e2b70b426a055b0bd51f6a1b723edd0e5ec3f2216731e7502545e34759636065af6d219c969c48b183e6f282ea8a6a418fe', 'brianhoward@example.org', '01097866218', 'Tracy Simpson MD', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (362, 364, 'YL7354413', 'Tracy Simpson MD', '1989-04-27', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (365, 'susankelley14619', 'scrypt:32768:8:1$bhqOtCbrbVNWK8mo$85bc43c9d83db24c0eaefd565abb122d5287c68c32aa92c8f8c0aab69f96f6d707ec721e2713dbd1ab2642ed1c4ceb9107700bd2f6d6a04a253040d7ab074e66', 'williamhamilton@example.org', '01809697581', 'Christopher Patrick', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (363, 365, 'MF9472696', 'Christopher Patrick', '1988-12-05', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (508, 363, 11, '2026-04-15 11:48:53', 'Confirmed', 1.00, 'PNR20260416D02A02AC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (508, 855.0, '2026-04-15 11:48:53', 'Cash', 'Completed', 'TXN202604161148533B5E9F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (509, 363, 6, '2026-04-02 11:48:53', 'Confirmed', 1.00, 'PNR20260416815D372B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (509, 400.0, '2026-04-02 11:48:53', 'Cash', 'Completed', 'TXN20260416114853C72967');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (510, 363, 11, '2026-04-08 11:48:53', 'Confirmed', 1.00, 'PNR2026041609B623DE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (510, 855.0, '2026-04-08 11:48:53', 'Nagad', 'Completed', 'TXN20260416114853D895A9');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (366, 'rrichards42531', 'scrypt:32768:8:1$bQl8ybMvnJ8oBb3U$9ede552adafbda7dda7e4abcf80dc9e64d57bdddec9f44ae3cd054fda5bd84f136ebcb019bf03efba6e7f7035b964ba4825445d1618621f543995c325e450396', 'christina63@example.org', '01299110013', 'Kimberly Payne', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (364, 366, 'MN4337566', 'Kimberly Payne', '1986-07-24', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (511, 364, 12, '2026-04-24 11:48:54', 'Confirmed', 1.00, 'PNR202604161DA9A6E5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (511, 855.0, '2026-04-24 11:48:54', 'bKash', 'Completed', 'TXN20260416114854CE9284');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (367, 'jessicacunningham64441', 'scrypt:32768:8:1$8cPm7ncFPis18qdi$ab6e21f115ba0b3e91cfcf8ebae55adb5baeae6e7ca6722e5d18923811ffcf4d76feb93fd9b4c46037de687b448bcd6fa6dc453004c01b52bd470e69e88d3fbc', 'zrice@example.com', '01649061203', 'David Hodges', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (365, 367, 'ZL6719939', 'David Hodges', '1967-12-26', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (512, 365, 1, '2026-04-11 11:48:54', 'Confirmed', 1.00, 'PNR20260416491C3788');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (512, 855.0, '2026-04-11 11:48:54', 'bKash', 'Completed', 'TXN202604161148545E2F53');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (513, 365, 9, '2026-03-19 11:48:54', 'Cancelled', 1.00, 'PNR20260416BFAA1B75');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (513, 870.0, '2026-03-19 11:48:54', 'Cash', 'Refunded', 'TXN202604161148542F20C3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (514, 365, 12, '2026-04-08 11:48:54', 'Confirmed', 1.00, 'PNR2026041676E66289');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (514, 450.0, '2026-04-08 11:48:54', 'bKash', 'Completed', 'TXN20260416114854826FBE');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (368, 'ojohnson29676', 'scrypt:32768:8:1$BCEqOPkhZvQUHyxa$c2724c4b24f0c981e093f60fa623598ec527a63747118c04a2f0327d83d81f8831c236c8e2c711ad8a9e12c265a73fe859ce1d4eb2d92fe1fc5676331da556dd', 'nicholas24@example.com', '01385027922', 'Cody Turner', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (366, 368, 'BT4664555', 'Cody Turner', '1949-05-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (515, 366, 16, '2026-04-17 11:48:54', 'Cancelled', 1.00, 'PNR20260416C4AB0990');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (515, 780.0, '2026-04-17 11:48:54', 'Cash', 'Refunded', 'TXN20260416114854CF6FE6');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (516, 366, 12, '2026-04-17 11:48:54', 'Confirmed', 1.00, 'PNR202604164311E732');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (516, 285.0, '2026-04-17 11:48:54', 'Credit Card', 'Completed', 'TXN2026041611485400EBDD');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (369, 'douglas3098411', 'scrypt:32768:8:1$KdxV2ljzLrIBfMes$d7895100e1110f4ef2416085585d1d1d222882fe5d07db7c1ecf275345a74b441f72037533cffc93d88fd42ee1e15446e517635668b9e3b23ab6e0e703b05e15', 'justinward@example.com', '01158610882', 'Aaron Gonzales', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (367, 369, 'UP7861188', 'Aaron Gonzales', '1947-03-16', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (517, 367, 1, '2026-04-02 11:48:54', 'Confirmed', 1.00, 'PNR20260416B4249E81');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (517, 285.0, '2026-04-02 11:48:54', 'Nagad', 'Completed', 'TXN20260416114854302CF0');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (518, 367, 19, '2026-04-12 11:48:54', 'Confirmed', 1.00, 'PNR202604163AFB8810');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (518, 1425.0, '2026-04-12 11:48:54', 'Nagad', 'Completed', 'TXN20260416114854A5AEAC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (519, 367, 8, '2026-04-14 11:48:54', 'Confirmed', 1.00, 'PNR202604163E330B1D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (519, 265.0, '2026-04-14 11:48:54', 'Cash', 'Completed', 'TXN2026041611485435E79A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (370, 'lawrencemakayla43404', 'scrypt:32768:8:1$kya7Se2pKLzyLg5k$ad3fbc87e7822b384663ad8cd045e0755f4c600e29488d421a4df374b6a1cc180c0b9f706bc3d38b045bb15b9aa9c3c1abce81e9a6a1a7e959a286c43d2fd8ff', 'adrian46@example.com', '01912195492', 'Steve Sanchez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (368, 370, 'RS8303681', 'Steve Sanchez', '1955-12-06', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (520, 368, 5, '2026-04-02 11:48:54', 'Confirmed', 1.00, 'PNR20260416EBEC3ACF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (520, 400.0, '2026-04-02 11:48:54', 'Credit Card', 'Completed', 'TXN20260416114854D274BB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (371, 'david8457160', 'scrypt:32768:8:1$grGrpKoWnoPxR8Fa$74823622d132647ada7e7d36d7202cbb8f1557dc8b9c224f4143c9630f23fefe2a8d5a7ed1a89de53e09597fedae957305c97db3318cdbdd8ca309dd2f27e365', 'joshuaheath@example.net', '01768887145', 'Anne Lee', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (369, 371, 'MY7176810', 'Anne Lee', '1994-12-19', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (372, 'awilliamson94154', 'scrypt:32768:8:1$MAJlrzbpYotmWVMM$dfa10af107920e5940140db930b3813fa822711ad03185ceb2f22bef240148986b41e3e3da49c6d7e58632e4c452823462f376798c31bfde49720c47692930f9', 'qmcgee@example.com', '01014731795', 'Bradley Townsend', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (370, 372, 'QU4423098', 'Bradley Townsend', '1955-07-14', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (521, 370, 3, '2026-04-04 11:48:54', 'Confirmed', 1.00, 'PNR20260416E3AF6710');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (521, 1025.0, '2026-04-04 11:48:54', 'Nagad', 'Completed', 'TXN20260416114854974BEB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (522, 370, 2, '2026-03-24 11:48:54', 'Confirmed', 1.00, 'PNR202604161D63DD26');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (522, 450.0, '2026-03-24 11:48:54', 'bKash', 'Completed', 'TXN202604161148549EA294');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (523, 370, 2, '2026-04-14 11:48:54', 'Confirmed', 1.00, 'PNR20260416778CBE11');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (523, 1025.0, '2026-04-14 11:48:54', 'bKash', 'Completed', 'TXN20260416114854A46F43');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (373, 'atkinsmark10183', 'scrypt:32768:8:1$VESAHxVAJcxTcqUG$17d5e67caba6bd7bdd31075debd38bb0a7eb830a78698064e33827f000f881642a089e7911a157c760fda3b32ea985efc0beae094169cc8a858fc12226cb8fd5', 'markrivera@example.org', '01104179634', 'Terry Hill', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (371, 373, 'MZ7347066', 'Terry Hill', '1973-10-17', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (524, 371, 6, '2026-04-21 11:48:54', 'Cancelled', 1.00, 'PNR202604167522DAED');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (524, 950.0, '2026-04-21 11:48:54', 'Nagad', 'Refunded', 'TXN20260416114854D7E220');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (525, 371, 2, '2026-04-21 11:48:54', 'Confirmed', 1.00, 'PNR2026041648C46704');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (525, 1398.0, '2026-04-21 11:48:54', 'Credit Card', 'Completed', 'TXN2026041611485453139A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (526, 371, 18, '2026-04-03 11:48:54', 'Confirmed', 1.00, 'PNR20260416BF8B1E11');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (526, 265.0, '2026-04-03 11:48:54', 'bKash', 'Completed', 'TXN202604161148548B7C05');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (374, 'kyle6990788', 'scrypt:32768:8:1$DGAuNC06R2FQBVfj$efdf7ca258f60c80f59db62b9ae4ee2d55b77d2177b4dc3eebb634fca0cb730b4351aac7aa8e253c22c4b34e15b006d2365e1767e62669fb3f2f8b2b45fa3826', 'reginawatson@example.org', '01614246802', 'Richard Nichols', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (372, 374, 'WR6500388', 'Richard Nichols', '1997-05-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (527, 372, 18, '2026-04-25 11:48:54', 'Confirmed', 1.00, 'PNR20260416486973EB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (527, 950.0, '2026-04-25 11:48:54', 'Nagad', 'Completed', 'TXN2026041611485428511B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (375, 'jeffrey0518265', 'scrypt:32768:8:1$VJ5YRhJN43KZOv76$9a009b1e70d03a60dda3ab97ab900d33c7b941aae05503b1f577662d11817c59412b60e5c88fd719897138a6b35ef9bf9a9d252d84ef2cb1115d979f0426e2a9', 'amyadams@example.com', '01753428615', 'Kenneth Wheeler', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (373, 375, 'PH2538440', 'Kenneth Wheeler', '2001-06-25', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (528, 373, 12, '2026-04-26 11:48:55', 'Cancelled', 1.00, 'PNR20260416547B1341');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (528, 450.0, '2026-04-26 11:48:55', 'bKash', 'Refunded', 'TXN202604161148550B9917');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (529, 373, 19, '2026-04-11 11:48:55', 'Confirmed', 1.00, 'PNR20260416E5CCAED9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (529, 465.0, '2026-04-11 11:48:55', 'Nagad', 'Completed', 'TXN202604161148553A3190');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (530, 373, 1, '2026-04-24 11:48:55', 'Confirmed', 1.00, 'PNR202604167B3A3D98');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (530, 285.0, '2026-04-24 11:48:55', 'bKash', 'Completed', 'TXN2026041611485511964F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (376, 'brandon6057917', 'scrypt:32768:8:1$7hDVQouLtKTCtOLV$bcec985b23898d47a5800b4c6f21c60b40219147d668515240cb2202cc4806f0f4a4c3f83c10ff3c395cff3ed4d183b5cafd21e3b0c673436d72671ca4fdce72', 'scabrera@example.com', '01689206878', 'Alexander Gonzalez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (374, 376, 'IT5981458', 'Alexander Gonzalez', '1974-05-13', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (531, 374, 9, '2026-04-15 11:48:55', 'Confirmed', 1.00, 'PNR2026041638342BD6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (531, 1425.0, '2026-04-15 11:48:55', 'Cash', 'Completed', 'TXN20260416114855413F21');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (532, 374, 20, '2026-05-01 11:48:55', 'Confirmed', 1.00, 'PNR2026041667017CD1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (532, 800.0, '2026-05-01 11:48:55', 'Credit Card', 'Completed', 'TXN20260416114855D649A8');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (377, 'vrodgers43572', 'scrypt:32768:8:1$hoQhESE0zHGUcewk$920db16efe6d4a7eb46edc337cf886328227fe0c6708dee66abd22f9ec8c9294a825a26c29f904eb3fab80fc82b354c1e059e7dd51e58ab09abf1b4ece85fedd', 'stephenjoseph@example.com', '01622701101', 'Todd Ferguson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (375, 377, 'VV5778730', 'Todd Ferguson', '1976-09-20', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (533, 375, 4, '2026-04-27 11:48:55', 'Confirmed', 1.00, 'PNR202604168D0E70D6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (533, 450.0, '2026-04-27 11:48:55', 'Credit Card', 'Completed', 'TXN20260416114855A0CD2A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (534, 375, 16, '2026-04-29 11:48:55', 'Confirmed', 1.00, 'PNR2026041662D11A3A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (534, 425.0, '2026-04-29 11:48:55', 'Credit Card', 'Completed', 'TXN2026041611485564F6C9');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (535, 375, 1, '2026-04-19 11:48:55', 'Confirmed', 1.00, 'PNR20260416B35D5FA0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (535, 450.0, '2026-04-19 11:48:55', 'Nagad', 'Completed', 'TXN202604161148553831EF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (378, 'jesseolson89457', 'scrypt:32768:8:1$1RTjQwIP4zJ4CQ9l$4e5e36376ae26cd270d0530cd45fd5c3a61823e5315646ce383b461b60d97215c74204ae1c20c3d3089c9da802db48732ae61d1298d0da7be270c9cba299d0da', 'janetflores@example.net', '01239886844', 'Ronald Mahoney', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (376, 378, 'YC4286949', 'Ronald Mahoney', '1973-05-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (536, 376, 11, '2026-04-05 11:48:55', 'Confirmed', 1.00, 'PNR2026041678F9BD4E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (536, 450.0, '2026-04-05 11:48:55', 'Cash', 'Completed', 'TXN20260416114855F100C0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (379, 'owhite53406', 'scrypt:32768:8:1$vwYpzbk57AjhZrov$6a2ad778b92378b2935fc96a4319c2bb5162269a7da8d0cf6442c462b4586b53bf9f675e58c796dfdf16e7f46f806400a5fe051596400930bd603698b373546c', 'whernandez@example.com', '01201664275', 'Michelle White', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (377, 379, 'DZ3305002', 'Michelle White', '1990-05-30', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (537, 377, 5, '2026-04-01 11:48:55', 'Confirmed', 1.00, 'PNR20260416ACC6EB3A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (537, 400.0, '2026-04-01 11:48:55', 'bKash', 'Completed', 'TXN2026041611485524048D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (538, 377, 2, '2026-04-21 11:48:55', 'Confirmed', 1.00, 'PNR202604160431A835');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (538, 855.0, '2026-04-21 11:48:55', 'Cash', 'Completed', 'TXN2026041611485550C57C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (380, 'alvaradokimberly529', 'scrypt:32768:8:1$o5AhRWuqRU9c4Rt9$36c7a7384c11e24fc9c07ab22e004ffab4239317b2ad1d7d2f73875e5113301e0dae0b304d4b49bd66084623daef379d4a4051106248cca8f55d913ce9287508', 'sarahharris@example.net', '01629445842', 'Melissa Webster', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (378, 380, 'MB3844489', 'Melissa Webster', '1986-08-31', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (381, 'rjones59623', 'scrypt:32768:8:1$uuhUNDXGEeWnvO4Y$f507bebaf490915b736431bad6e97780bb83a5eb0a9b9e7cc0c9e0611c067bfc16a5436c164807bfd35c8b26637945e10b2c4b87844d583e478c4dfae3546cdd', 'jordanbooker@example.org', '01749172455', 'William Knight', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (379, 381, 'FB5614361', 'William Knight', '1985-09-15', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (539, 379, 10, '2026-03-20 11:48:55', 'Confirmed', 1.00, 'PNR20260416BDEAA169');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (539, 1425.0, '2026-03-20 11:48:55', 'Nagad', 'Completed', 'TXN202604161148554ABF58');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (540, 379, 14, '2026-03-18 11:48:55', 'Confirmed', 1.00, 'PNR2026041696B858A5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (540, 450.0, '2026-03-18 11:48:55', 'Cash', 'Completed', 'TXN202604161148552FF1DA');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (382, 'nicholevazquez14914', 'scrypt:32768:8:1$pvglsJCYT1YvAGJg$43ed13e1da5309d6400fafc6246bb4c389d45fe2941d56e07c3cf8cca8f249bb816f1d0ed5b6b9fcbfd29a0f0d594ed79b975e72290cb6064d7c6dc9dfeb2de8', 'melissa44@example.org', '01743187432', 'Laura Shaw', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (380, 382, 'UH8602515', 'Laura Shaw', '1989-03-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (541, 380, 16, '2026-05-01 11:48:55', 'Cancelled', 1.00, 'PNR20260416CFC8FBA1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (541, 265.0, '2026-05-01 11:48:55', 'Credit Card', 'Refunded', 'TXN20260416114855F196FE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (542, 380, 4, '2026-03-28 11:48:55', 'Confirmed', 1.00, 'PNR2026041624050BF8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (542, 285.0, '2026-03-28 11:48:55', 'Nagad', 'Completed', 'TXN2026041611485511DCCA');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (543, 380, 6, '2026-03-31 11:48:55', 'Confirmed', 1.00, 'PNR2026041626554EAE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (543, 1300.0, '2026-03-31 11:48:55', 'bKash', 'Completed', 'TXN20260416114855306B6B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (383, 'emilythompson35405', 'scrypt:32768:8:1$wceN4o8VRPQXX7IN$6842decfac6703e309c5c7f5db28ef6491296321a4a72112834f23e7a4d759e58b5b0ee97a3e3ca9eab63aec5e95d94834b237033a0d74e427d9c52215bf4122', 'stephaniemartinez@example.com', '01249236587', 'Mrs. Theresa Fitzgerald', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (381, 383, 'JM2339153', 'Mrs. Theresa Fitzgerald', '1996-09-20', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (384, 'jenkinscrystal47150', 'scrypt:32768:8:1$x6eKUd4X4Ze3DJKI$c9e51bcfb4c79256b5b807bb3b0ab02ef474575130a1f6d2a9f8f2d6ce4fe6ab86f38ba75c411e48eb5413ce2b98ed857e4dd9fa9f195b5da2cc2b07f0603a2a', 'davisjason@example.net', '01998997861', 'Mary Jackson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (382, 384, 'CT0399515', 'Mary Jackson', '2007-12-21', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (544, 382, 2, '2026-03-19 11:48:55', 'Confirmed', 1.00, 'PNR20260416A257A238');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (544, 285.0, '2026-03-19 11:48:55', 'Cash', 'Completed', 'TXN2026041611485582E349');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (545, 382, 19, '2026-04-21 11:48:55', 'Confirmed', 1.00, 'PNR20260416729E6EBA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (545, 295.0, '2026-04-21 11:48:55', 'Credit Card', 'Completed', 'TXN20260416114855BEE148');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (385, 'andrew8959463', 'scrypt:32768:8:1$ilQXyq0luIu0FD4s$80baeb84c981662360d6355153431d193974136996dc069757b3f785b7715601fd3f5338dac31a2b54ae97acdf9cc148c68b415e1d4fe64b5d1884f147e4f0a8', 'freemansherry@example.org', '01019939014', 'Kurt Kennedy', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (383, 385, 'RQ0359455', 'Kurt Kennedy', '1985-10-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (546, 383, 10, '2026-04-23 11:48:56', 'Confirmed', 1.00, 'PNR202604162D668166');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (546, 465.0, '2026-04-23 11:48:56', 'Credit Card', 'Completed', 'TXN20260416114856178152');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (547, 383, 19, '2026-04-01 11:48:56', 'Confirmed', 1.00, 'PNR20260416B739D536');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (547, 870.0, '2026-04-01 11:48:56', 'bKash', 'Completed', 'TXN20260416114856DF732D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (386, 'sotodavid28341', 'scrypt:32768:8:1$Bpkbp4L2Vbift0Hu$b3ce01db536109d73c1deef6982996d4d17ad0c64335e8564453e78fe2fae6e65774dc96b23e253185d226c61d85e4046c7b5eb34b61bc35d8c41bc8e604577b', 'ihogan@example.org', '01068688854', 'Erik Orozco', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (384, 386, 'YU5261317', 'Erik Orozco', '1972-07-11', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (548, 384, 9, '2026-04-09 11:48:56', 'Confirmed', 1.00, 'PNR20260416F954DE2D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (548, 870.0, '2026-04-09 11:48:56', 'Cash', 'Completed', 'TXN202604161148562765AF');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (549, 384, 20, '2026-04-14 11:48:56', 'Cancelled', 1.00, 'PNR20260416E31D685D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (549, 800.0, '2026-04-14 11:48:56', 'Credit Card', 'Refunded', 'TXN2026041611485651CE3B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (387, 'fernando4820947', 'scrypt:32768:8:1$tvlF4MTwjYzMkljU$728d4be3ae3664dfb69efd7682946e158aea8d31b39d3054a28c4a9f2090126def294679dfc834e8059c0d6dab23bcfcfad87256a03ad2c7e74cea0f76e876ac', 'anthonysmith@example.net', '01037469614', 'Dan Hayes', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (385, 387, 'UX4896324', 'Dan Hayes', '1984-11-13', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (550, 385, 2, '2026-03-29 11:48:56', 'Confirmed', 1.00, 'PNR202604163264E90D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (550, 285.0, '2026-03-29 11:48:56', 'Cash', 'Completed', 'TXN20260416114856FA0361');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (551, 385, 12, '2026-03-25 11:48:56', 'Confirmed', 1.00, 'PNR202604168099A019');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (551, 1025.0, '2026-03-25 11:48:56', 'Cash', 'Completed', 'TXN20260416114856E01F2D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (552, 385, 17, '2026-04-20 11:48:56', 'Confirmed', 1.00, 'PNR2026041623E80BCD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (552, 1398.0, '2026-04-20 11:48:56', 'Cash', 'Completed', 'TXN2026041611485607C752');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (388, 'bairddaniel73742', 'scrypt:32768:8:1$4562AeSq7vPxg73g$5010efb46b0c03ce617701098d903187bee63343eed35964480909610c87c57ec909d854a1f1161df1d680b59a39247dcc0488981bc506da30b724ac1fb8d0b1', 'patriciadeleon@example.com', '01882064165', 'Michael Lopez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (386, 388, 'ET9840629', 'Michael Lopez', '2004-02-11', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (553, 386, 13, '2026-03-26 11:48:56', 'Confirmed', 1.00, 'PNR20260416F53B0B69');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (553, 800.0, '2026-03-26 11:48:56', 'Nagad', 'Completed', 'TXN20260416114856B76AD3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (554, 386, 3, '2026-04-23 11:48:56', 'Confirmed', 1.00, 'PNR20260416F5C392CB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (554, 450.0, '2026-04-23 11:48:56', 'bKash', 'Completed', 'TXN20260416114856935E45');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (555, 386, 17, '2026-03-29 11:48:56', 'Cancelled', 1.00, 'PNR20260416E573F454');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (555, 285.0, '2026-03-29 11:48:56', 'Credit Card', 'Refunded', 'TXN20260416114856578D69');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (389, 'michelle9280471', 'scrypt:32768:8:1$ts9AFvUxznoR0rKO$52305db2904110d63b68d48d79db1558e51d648310172e159d44be5f8c6136b7986d15bbf6a44775b16bebfd35a5eda03c767aa9f3ba307951a7792ed64c1198', 'angela59@example.net', '01117587653', 'Mark Collins', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (387, 389, 'FD3274039', 'Mark Collins', '1947-05-13', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (390, 'dakotaflowers85491', 'scrypt:32768:8:1$xo2T0sEQ15hcj1rW$072cbaef828e85382434a07b0064f7d28d593423e04c4beea5b27abfee5e18841ee1584f695178d27f27ebdb730b4f64c098069ce1d6813d216c1b041b4a6a23', 'dunncarol@example.net', '01122419164', 'Cheryl Lopez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (388, 390, 'SO7584957', 'Cheryl Lopez', '1965-01-06', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (391, 'stacymartin9852', 'scrypt:32768:8:1$FVJFskIf6KxzjSYt$1bcdc4aad09f8863f7c3c571e9429abd38e1884db3f23a2f6faa31807deacb27eaa1214e6ec954ff41928bdeb2fb9306af36b75e04f74edde276d0b87a2864f7', 'wjordan@example.org', '01373077017', 'Melissa Long', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (389, 391, 'MQ2425575', 'Melissa Long', '1946-11-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (556, 389, 6, '2026-04-10 11:48:56', 'Confirmed', 1.00, 'PNR20260416ECA668CC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (556, 1300.0, '2026-04-10 11:48:56', 'Credit Card', 'Completed', 'TXN2026041611485684A7A1');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (557, 389, 17, '2026-03-19 11:48:56', 'Confirmed', 1.00, 'PNR2026041679A03C2D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (557, 1398.0, '2026-03-19 11:48:56', 'Cash', 'Completed', 'TXN20260416114856A64C98');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (392, 'todd7033439', 'scrypt:32768:8:1$GJda9XlDEYb9PjCW$70fe2d84e96e6c6d188667593f6c1a427d81cc3ed643aba7a0afcceb5aa0525a2d98ec6a94f706dadc04422136837749dd092549826b6f3347be8f0ef3244e81', 'ryansmith@example.com', '01297422855', 'Donald Welch', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (390, 392, 'XL2942265', 'Donald Welch', '1966-03-28', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (393, 'piercedaniel10760', 'scrypt:32768:8:1$6Dwh6HbuHm0fHuHh$9360754d9f25c8895a41d628cfdc75feaf81b112e73e61914c541fcc3fcf10742a907261f7c46dd8e9dd5b797cc650efe1342174972885c3882b2e31c25eefdb', 'rmccarthy@example.com', '01124409443', 'Ryan Taylor', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (391, 393, 'FU2249416', 'Ryan Taylor', '1987-02-07', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (558, 391, 17, '2026-03-24 11:48:56', 'Cancelled', 1.00, 'PNR2026041607B56B0E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (558, 1398.0, '2026-03-24 11:48:56', 'Cash', 'Refunded', 'TXN202604161148560A98B6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (394, 'uobrien33494', 'scrypt:32768:8:1$HHKwaKOZ2zx7G8kN$08e9453217fd5101ada371da8c7fe5677f7502aef047cce9e8de2e5ce368b695a73d3fb45c7609254375c0d4ae51623b05f58ed53f39dcc757466b4fdef658ef', 'rwells@example.net', '01483078895', 'Bruce Thompson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (392, 394, 'ZY9779956', 'Bruce Thompson', '1984-09-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (559, 392, 18, '2026-04-13 11:48:57', 'Confirmed', 1.00, 'PNR20260416FBEEC13E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (559, 265.0, '2026-04-13 11:48:57', 'Credit Card', 'Completed', 'TXN2026041611485709D011');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (395, 'jeffersonsteven2923', 'scrypt:32768:8:1$hD9agF8w87V0VuUO$7a9a849d1087cd58aee1009f51f8baf3ebc36eb9078244c04a451e8381158a74933782ec8674574717fb4ee64823b81f5e507f3d31406b34ff965fd207318956', 'sheila76@example.net', '01172772965', 'Andrew Marshall', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (393, 395, 'MV6964259', 'Andrew Marshall', '1955-09-07', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (560, 393, 9, '2026-04-27 11:48:57', 'Confirmed', 1.00, 'PNR20260416B19B235F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (560, 295.0, '2026-04-27 11:48:57', 'bKash', 'Completed', 'TXN20260416114857493ECB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (561, 393, 10, '2026-04-06 11:48:57', 'Confirmed', 1.00, 'PNR20260416BD971AE1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (561, 465.0, '2026-04-06 11:48:57', 'bKash', 'Completed', 'TXN202604161148572E9AB4');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (396, 'rhodespatricia19874', 'scrypt:32768:8:1$ga2DHm16PDNj7ODQ$4ae142d4f27d34298d8c3f0bac7c2930a74fada6b9567f51f4c911613d55f06a49b5f10dffaad423f84329bf4977f2a0af369cf9f5136fb7d3ff28692b84ee81', 'kaylaharvey@example.com', '01432186337', 'Katherine Young', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (394, 396, 'YI0854385', 'Katherine Young', '1977-02-01', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (562, 394, 13, '2026-03-27 11:48:57', 'Confirmed', 1.00, 'PNR202604167E144F94');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (562, 250.0, '2026-03-27 11:48:57', 'Credit Card', 'Completed', 'TXN202604161148578C58C4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (563, 394, 16, '2026-03-30 11:48:57', 'Cancelled', 1.00, 'PNR2026041639F53382');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (563, 950.0, '2026-03-30 11:48:57', 'Credit Card', 'Refunded', 'TXN202604161148576088E0');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (564, 394, 4, '2026-04-26 11:48:57', 'Confirmed', 1.00, 'PNR2026041692C0E6B0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (564, 450.0, '2026-04-26 11:48:57', 'bKash', 'Completed', 'TXN20260416114857F7CF1E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (397, 'fredperry50273', 'scrypt:32768:8:1$ChxQToCthj997Gmd$f8250e5e36cdfdd6b9a29f28f0714dcf5ad9265f48253eff0b7155d4d33c1060d67dd6448586a8035c8c90d1915918d831038333f479361002088bae209644f8', 'jnorman@example.com', '01788534202', 'Jamie Schmidt', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (395, 397, 'WG0150628', 'Jamie Schmidt', '1996-06-17', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (398, 'ambermay79562', 'scrypt:32768:8:1$EoBd6jR5SKLf4Nyl$9a1db28dc5f58a45d0592197208a983d18558ed05e0f7dde0c4a702ab6dc9a5674f5d7c7620a2313f970a65012a9698476c10753497f0297ac7330cd5b1b1d5e', 'garrettscott@example.com', '01564652508', 'Eric Joyce II', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (396, 398, 'XE0417700', 'Eric Joyce II', '1990-09-10', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (565, 396, 19, '2026-04-10 11:48:57', 'Confirmed', 1.00, 'PNR20260416213D5631');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (565, 1050.0, '2026-04-10 11:48:57', 'bKash', 'Completed', 'TXN2026041611485769680F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (566, 396, 6, '2026-04-19 11:48:57', 'Confirmed', 1.00, 'PNR2026041645B8EE48');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (566, 400.0, '2026-04-19 11:48:57', 'Nagad', 'Completed', 'TXN20260416114857D9D76E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (399, 'jennifer3191607', 'scrypt:32768:8:1$OfHFcKVjHYHfh8qB$6e2fdc14870b494092f013991a0073f6d2792fc4e8cacb42674901917e3de3955f08a57a19c75f3b6ae327199f52c8a45943f249aec43da8e2262cd60c007df2', 'vincentrowland@example.org', '01497439780', 'Sandra Meyer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (397, 399, 'GI5517232', 'Sandra Meyer', '1976-12-02', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (567, 397, 10, '2026-05-01 11:48:57', 'Confirmed', 1.00, 'PNR20260416B53963E6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (567, 870.0, '2026-05-01 11:48:57', 'Cash', 'Completed', 'TXN2026041611485781CBDD');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (568, 397, 7, '2026-04-07 11:48:57', 'Confirmed', 1.00, 'PNR2026041650202F9D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (568, 425.0, '2026-04-07 11:48:57', 'Credit Card', 'Completed', 'TXN2026041611485705AB9B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (400, 'gary0494371', 'scrypt:32768:8:1$21iW9TfjiikAoBxC$be6fb3ae83d8448ffde70b50477d6a222dc311357df2a2f1dbe7255feb12ffcce065346259ac1a1c38d4b4d3726e3364276a09f939cf84d6dfd4a83e040ee22c', 'mary07@example.net', '01783603242', 'Christopher Rivera', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (398, 400, 'XU2484493', 'Christopher Rivera', '2007-03-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (569, 398, 19, '2026-04-03 11:48:57', 'Confirmed', 1.00, 'PNR20260416F82D921D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (569, 870.0, '2026-04-03 11:48:57', 'Credit Card', 'Completed', 'TXN20260416114857955862');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (570, 398, 18, '2026-03-20 11:48:57', 'Cancelled', 1.00, 'PNR202604161F4E33F2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (570, 425.0, '2026-03-20 11:48:57', 'bKash', 'Refunded', 'TXN20260416114857706DDF');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (401, 'nashcharles77112', 'scrypt:32768:8:1$DjLcYWCLRIlQqPeh$848acce31a1da6e878e7751ee38b7d545207c227e6e87f36a584a5f0ecec0990b2be041fc5071f619b7a6fcdfc65960d7e20ded459f50db67ad051f78b48e2e8', 'debbiegarcia@example.org', '01381176776', 'Lisa Rasmussen', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (399, 401, 'HX2950972', 'Lisa Rasmussen', '1974-11-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (571, 399, 8, '2026-03-27 11:48:57', 'Confirmed', 1.00, 'PNR202604165E6A903E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (571, 425.0, '2026-03-27 11:48:57', 'Cash', 'Completed', 'TXN202604161148578D093F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (572, 399, 15, '2026-04-23 11:48:57', 'Confirmed', 1.00, 'PNR20260416B35D5B13');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (572, 265.0, '2026-04-23 11:48:57', 'bKash', 'Completed', 'TXN2026041611485751EA6D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (402, 'benjamin8572562', 'scrypt:32768:8:1$xMSE8NeRidOXjW3c$d1d74e4d8ebd588ee01da0de819b5fc210cca01ab0b4bad7af9bbfe37f13ea1105e1cc00751c80a1e95798757c31d119fe25f70cf80dcf73e58581b2b857150e', 'xbautista@example.net', '01060474958', 'David Wright', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (400, 402, 'SS9932541', 'David Wright', '1985-04-23', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (573, 400, 17, '2026-03-20 11:48:57', 'Confirmed', 1.00, 'PNR20260416F1807C63');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (573, 1025.0, '2026-03-20 11:48:57', 'Nagad', 'Completed', 'TXN20260416114857DC25C0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (403, 'joe451368', 'scrypt:32768:8:1$QLe7cgA27bD6iSd5$066b72c4fae782b7fea1348b54e94c6e74a05de69faca7a306f65685c7b8ef1d8fbfc700efa60ee314f1a9db7266bfb6e10952952495c345e21e49910f75104e', 'fmoyer@example.net', '01979547762', 'Rebecca Hendricks', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (401, 403, 'LY1546573', 'Rebecca Hendricks', '1969-09-27', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (404, 'jessicamoore37850', 'scrypt:32768:8:1$nQrWQNZDNUiW4KGH$7c77ae58928746a57c57fc94456328932906b0f6171eb2cc1e47302cd4337fe782a7ef97ec63ccb850e4c08e9c9d49991b1cbaf948d18d15a33c49cec365f29c', 'ramosashley@example.org', '01362142949', 'Ronald Braun', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (402, 404, 'BQ4625570', 'Ronald Braun', '1958-10-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (574, 402, 7, '2026-04-18 11:48:58', 'Confirmed', 1.00, 'PNR20260416937AF8E1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (574, 265.0, '2026-04-18 11:48:58', 'Nagad', 'Completed', 'TXN202604161148584F6A4B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (575, 402, 13, '2026-04-14 11:48:58', 'Confirmed', 1.00, 'PNR202604162DABDDF5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (575, 400.0, '2026-04-14 11:48:58', 'Nagad', 'Completed', 'TXN20260416114858B544C9');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (405, 'heidi3944603', 'scrypt:32768:8:1$nzaGWNbIMQeCDFxt$78597ce4c7cba07727009c3377a9d64e8ad42bb4925a921151bd194d0b8d6059a09b636495a90850af79d1b516ebf52d8ef2e1f76a1979aa4af48e24df71b0a1', 'samuel03@example.net', '01532372573', 'Lauren Henson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (403, 405, 'HO9898583', 'Lauren Henson', '1946-05-18', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (576, 403, 16, '2026-04-15 11:48:58', 'Confirmed', 1.00, 'PNR2026041685184331');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (576, 265.0, '2026-04-15 11:48:58', 'bKash', 'Completed', 'TXN2026041611485891929F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (406, 'douglaswang82802', 'scrypt:32768:8:1$Fojf2vLt8FVhWTJo$828577dfdb2a624edaaec00af17b5e615f1440210bfdc903014fafbb4260b0faa0ebaf5de52f8b1652e472bbb6054c8003ea69929de6131788f473b5dc9bd08c', 'johnsonadam@example.com', '01092551582', 'Bonnie Stewart', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (404, 406, 'FG8778369', 'Bonnie Stewart', '1995-02-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (577, 404, 16, '2026-04-19 11:48:58', 'Confirmed', 1.00, 'PNR202604168C96CB92');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (577, 425.0, '2026-04-19 11:48:58', 'Cash', 'Completed', 'TXN2026041611485820E03A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (578, 404, 20, '2026-04-27 11:48:58', 'Confirmed', 1.00, 'PNR202604168D474DDD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (578, 250.0, '2026-04-27 11:48:58', 'Cash', 'Completed', 'TXN20260416114858B9712B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (407, 'jonesjessica73508', 'scrypt:32768:8:1$Gauj4CYFihB3lRNb$c0d6b331000a472db9d15a020c8e6cad4480165803b15c51e5299e805e90bc1bc96b835265357253d8cfadba9642269a69151184c9dca2d75ae11bbce6f4e070', 'allenemily@example.com', '01897581890', 'Justin Berry', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (405, 407, 'XD8961344', 'Justin Berry', '1970-11-04', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (579, 405, 9, '2026-03-21 11:48:58', 'Confirmed', 1.00, 'PNR2026041689DCE31A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (579, 870.0, '2026-03-21 11:48:58', 'bKash', 'Completed', 'TXN202604161148588B01BC');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (408, 'brianmolina2707', 'scrypt:32768:8:1$vqvMLLmlOmGn2BGB$68bd28ec01471260b3a7430b27ed3effe8599e0c76c18c92436fa0d388b87333ac102790b67953911e965e02aeed051d229bd265926308ce42863b686e1ae83b', 'lopezdanny@example.com', '01349218638', 'Monica Bond', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (406, 408, 'BM3855057', 'Monica Bond', '1997-10-06', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (409, 'mcdonaldrobert92936', 'scrypt:32768:8:1$D0WklwAKQB5XClr2$1388a690d7e4a885db734d1c8dd257e0dce18c2dcecdcfab67fd6e45534463e2526b75945683c06fccff7bfc64bbcc744dba216d53be8eebd125623d0257107d', 'jesseharrington@example.net', '01754843972', 'Phillip Wagner', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (407, 409, 'DK9429990', 'Phillip Wagner', '1971-03-18', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (580, 407, 17, '2026-03-28 11:48:58', 'Confirmed', 1.00, 'PNR20260416E2F1BA8E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (580, 855.0, '2026-03-28 11:48:58', 'bKash', 'Completed', 'TXN2026041611485880C834');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (581, 407, 4, '2026-04-30 11:48:58', 'Confirmed', 1.00, 'PNR20260416C3345A77');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (581, 285.0, '2026-04-30 11:48:58', 'bKash', 'Completed', 'TXN20260416114858610335');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (410, 'qallen15977', 'scrypt:32768:8:1$3HiFb15b1L804LBy$e5afc0942c26b8467e907593d237a0b5d23a43beece67b5976e3f0caf5273c194169bf4650ae466db9efd7f75b243eb9c12e48cca756ddfbd38108dca33122f5', 'carolyn16@example.org', '01675742316', 'Joshua Young', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (408, 410, 'AE2439102', 'Joshua Young', '1995-04-30', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (582, 408, 7, '2026-03-25 11:48:58', 'Confirmed', 1.00, 'PNR202604168596EC6E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (582, 265.0, '2026-03-25 11:48:58', 'bKash', 'Completed', 'TXN2026041611485865D627');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (583, 408, 16, '2026-05-01 11:48:58', 'Confirmed', 1.00, 'PNR202604168F4C7A5B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (583, 425.0, '2026-05-01 11:48:58', 'Nagad', 'Completed', 'TXN20260416114858EA371A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (584, 408, 6, '2026-03-22 11:48:58', 'Confirmed', 1.00, 'PNR202604169C7623BE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (584, 1300.0, '2026-03-22 11:48:58', 'Cash', 'Completed', 'TXN20260416114858EB7CA1');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (411, 'richardsonholly85211', 'scrypt:32768:8:1$7nlXcf4bjLwihB0O$443da5c79e0bfc01e250e16c88596fd25b43aec4888aa41ccb0235aa963186b78ed70d7655f75d5de874b1ba007427878e2cf44f42be57301cb7049249d0d84e', 'jessicasawyer@example.net', '01202427237', 'Carrie Shaw', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (409, 411, 'LS4773277', 'Carrie Shaw', '1983-02-01', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (585, 409, 1, '2026-03-31 11:48:58', 'Confirmed', 1.00, 'PNR20260416B9BE66AF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (585, 450.0, '2026-03-31 11:48:58', 'bKash', 'Completed', 'TXN20260416114858AA6599');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (412, 'kristenwiggins3752', 'scrypt:32768:8:1$D8kTtOgzq0kqsiIp$2e5692b29025e5cf412d84470265532b062494ba2153149937f4c97bb45b91b5af7d042e5aecbb2f6534d97dfd6b7ef3453c93478fc3c3b04217159ffdfcb67b', 'jennifermccann@example.net', '01771015726', 'James Watson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (410, 412, 'YH5527805', 'James Watson', '1992-04-15', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (586, 410, 2, '2026-04-24 11:48:59', 'Confirmed', 1.00, 'PNR202604168BBD1ADE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (586, 1025.0, '2026-04-24 11:48:59', 'Credit Card', 'Completed', 'TXN20260416114859F3B045');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (587, 410, 4, '2026-03-28 11:48:59', 'Confirmed', 1.00, 'PNR20260416EC717A21');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (587, 1398.0, '2026-03-28 11:48:59', 'bKash', 'Completed', 'TXN20260416114859DFCFC9');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (588, 410, 5, '2026-04-23 11:48:59', 'Cancelled', 1.00, 'PNR2026041684926CCA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (588, 950.0, '2026-04-23 11:48:59', 'Cash', 'Refunded', 'TXN202604161148590075E0');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (413, 'ernest4134009', 'scrypt:32768:8:1$kKF2IeU2zFtNvCdp$a6374c087ec1c89ee002eb2d71f79cac8cd348423210bff982a9317e92d392890433dfaf2f9f74c077bd44d9406ddcb56c84f9d409fe53344b8f4a3c2b7ac36a', 'laura17@example.org', '01672463801', 'Tammy Wilson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (411, 413, 'ZG4036970', 'Tammy Wilson', '2002-01-19', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (414, 'todd963721', 'scrypt:32768:8:1$gkD533zBx6yrNgri$f71051c0ec806c926da6f40a0797417ccefe41df63d5457007a8a431acc33035ec55b884012bc74775a2128be00adfa571793bc895842f118e77c4de62dbff4a', 'patricia14@example.net', '01661058465', 'Christine Evans', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (412, 414, 'YW0740087', 'Christine Evans', '1989-12-17', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (589, 412, 3, '2026-04-21 11:48:59', 'Confirmed', 1.00, 'PNR202604167BC32AC6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (589, 1025.0, '2026-04-21 11:48:59', 'Nagad', 'Completed', 'TXN202604161148591C1981');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (590, 412, 14, '2026-03-22 11:48:59', 'Confirmed', 1.00, 'PNR202604167910DC14');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (590, 1398.0, '2026-03-22 11:48:59', 'bKash', 'Completed', 'TXN20260416114859B9EBCE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (591, 412, 10, '2026-04-15 11:48:59', 'Confirmed', 1.00, 'PNR20260416765B88AD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (591, 465.0, '2026-04-15 11:48:59', 'bKash', 'Completed', 'TXN20260416114859188282');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (415, 'zcoffey31479', 'scrypt:32768:8:1$NG19H2KjkTRJmWdo$c89679fff8b11906f9eaea291f424c596eae1b6661cfe03eff6def4520df57f41ba8b225e1a1a428c88c587c0793bfeca1eb486a0260540373906a49b970a876', 'duncantiffany@example.net', '01939403665', 'Chelsea Burton', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (413, 415, 'ZG0829416', 'Chelsea Burton', '1948-08-13', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (592, 413, 6, '2026-03-27 11:48:59', 'Confirmed', 1.00, 'PNR2026041677F53F0B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (592, 800.0, '2026-03-27 11:48:59', 'bKash', 'Completed', 'TXN20260416114859BAF01D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (593, 413, 16, '2026-04-19 11:48:59', 'Cancelled', 1.00, 'PNR2026041622263DBF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (593, 950.0, '2026-04-19 11:48:59', 'Credit Card', 'Refunded', 'TXN202604161148591E6B75');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (594, 413, 8, '2026-04-17 11:48:59', 'Confirmed', 1.00, 'PNR202604168D47401A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (594, 780.0, '2026-04-17 11:48:59', 'Credit Card', 'Completed', 'TXN20260416114859771BB2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (416, 'melanie9958348', 'scrypt:32768:8:1$t8fLOIKHJ01m15KJ$47f49fad481d7dbe055a5a04b19b5ba91ccd5cb6f1e3b72cc2062638e4bdcded802aa6273e96124cab7aed22a1c1d72d0ae94c7e48575f4fced10f8c1e474019', 'iallen@example.net', '01012238085', 'Aaron Fowler', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (414, 416, 'AB3152008', 'Aaron Fowler', '1998-11-24', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (417, 'katie1215111', 'scrypt:32768:8:1$LROQM8ry9McPnwy6$7fc7670ef751efbbd557936ac617b19a8c9157adfd7962eb5cad0b027585db47c42f0432aa241dc0ad39d6c716a1470f0853159651e27cf1c20a3a36f8410cbe', 'angelacrosby@example.org', '01743574694', 'Calvin Rose', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (415, 417, 'HQ1670656', 'Calvin Rose', '1948-12-30', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (418, 'padillajustin89658', 'scrypt:32768:8:1$HPcg3gPRD5Xmo6WM$276debbacfb391c929cb3b2612453844bd4feba681240a10f41f9f434d50796e084b7a0d406a41681efcbca79a3750fb1cda673c727a5abda485b083ec86bb3e', 'gregyates@example.net', '01371494735', 'Jacob Clark', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (416, 418, 'SR3404974', 'Jacob Clark', '2007-06-22', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (595, 416, 15, '2026-04-09 11:48:59', 'Confirmed', 1.00, 'PNR20260416E3F8CB01');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (595, 265.0, '2026-04-09 11:48:59', 'bKash', 'Completed', 'TXN20260416114859937446');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (596, 416, 18, '2026-03-23 11:48:59', 'Confirmed', 1.00, 'PNR20260416A9DA9F59');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (596, 425.0, '2026-03-23 11:48:59', 'Nagad', 'Completed', 'TXN20260416114859FA0900');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (597, 416, 19, '2026-04-30 11:48:59', 'Confirmed', 1.00, 'PNR2026041620FB0B26');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (597, 1050.0, '2026-04-30 11:48:59', 'Cash', 'Completed', 'TXN202604161148596DBA3E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (419, 'brettgonzalez70254', 'scrypt:32768:8:1$fvVH3AsfRiz9UhTt$3ba1c88160afa5cb53f8627bd602fd5cacb18efd73a5d0d5af8fc459ab4887b39805283e74e81ec3a3990790e3778b3941efb09d6f528d797fb70c624687c64b', 'holly86@example.net', '01669672888', 'Catherine Schaefer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (417, 419, 'SP8807100', 'Catherine Schaefer', '1971-12-22', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (420, 'norrisalexis26019', 'scrypt:32768:8:1$opCKO37Qaw5oXGJi$6cb5758e36fd5f5adc433f8569bd9754389fb5873f64a382e8c54ccc4094a5e52792a9f4ae9cc14dd1456d71d5f938d38646228b43bdf508a8584bc557c1fb02', 'yvillarreal@example.net', '01686622176', 'Johnny Reed', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (418, 420, 'OP9155305', 'Johnny Reed', '1984-01-11', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (598, 418, 1, '2026-04-12 11:48:59', 'Confirmed', 1.00, 'PNR20260416A17FE2CC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (598, 855.0, '2026-04-12 11:48:59', 'Cash', 'Completed', 'TXN20260416114859FFB119');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (421, 'amymiller98104', 'scrypt:32768:8:1$450T0PafK0IFhrkA$9301e8de1fde66f1a9fd0612714e964fcce9a34a2b40384da9ef93a3f4bee708c199132d62ce2525058866c5efceaedbd16f74245c9f452116582caabac6a344', 'gabriel50@example.org', '01232533347', 'Cynthia Chavez DDS', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (419, 421, 'HE8365330', 'Cynthia Chavez DDS', '1954-05-31', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (599, 419, 6, '2026-03-28 11:48:59', 'Confirmed', 1.00, 'PNR2026041619CCEC3B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (599, 950.0, '2026-03-28 11:48:59', 'Nagad', 'Completed', 'TXN202604161148599E5118');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (600, 419, 13, '2026-03-26 11:48:59', 'Confirmed', 1.00, 'PNR20260416A88A2765');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (600, 950.0, '2026-03-26 11:48:59', 'bKash', 'Completed', 'TXN20260416114859D2CBC3');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (601, 419, 11, '2026-04-23 11:48:59', 'Confirmed', 1.00, 'PNR202604165478EB09');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (601, 1398.0, '2026-04-23 11:48:59', 'bKash', 'Completed', 'TXN202604161148590F3A54');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (422, 'jacqueline1618961', 'scrypt:32768:8:1$SQhclp2eXkiewLYJ$ae314997c52f76798b7fdcc41875add55539d263f9030a1f3cc741b45585df1a2912e160bd91c7d705ce3f71484d3d17d97bfe6e94b72050cc89d5c15bae1e0a', 'michellereyes@example.com', '01548608580', 'Kathleen Lowery', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (420, 422, 'QJ9013461', 'Kathleen Lowery', '1982-05-08', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (602, 420, 18, '2026-04-02 11:48:59', 'Confirmed', 1.00, 'PNR2026041608764B48');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (602, 265.0, '2026-04-02 11:48:59', 'Credit Card', 'Completed', 'TXN20260416114859528AF6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (423, 'xmartin8946', 'scrypt:32768:8:1$dBBRa6nmChjLa6zK$b0149f19cf71592922439c2a180a7966ac846caad735040cc64b8a171e58ff8ff6e0b718030147edd32d4c477c7347e48bf8eba6bcccbcd8b948c504eeb19a4d', 'spencergabrielle@example.org', '01751965075', 'Jay Morgan', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (421, 423, 'DM0883851', 'Jay Morgan', '1998-12-27', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (603, 421, 18, '2026-04-01 11:49:00', 'Confirmed', 1.00, 'PNR2026041637123265');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (603, 780.0, '2026-04-01 11:49:00', 'Credit Card', 'Completed', 'TXN2026041611490079764A');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (604, 421, 9, '2026-03-27 11:49:00', 'Confirmed', 1.00, 'PNR2026041613BF3C50');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (604, 465.0, '2026-03-27 11:49:00', 'Nagad', 'Completed', 'TXN20260416114900DDDC52');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (424, 'greggelliott57487', 'scrypt:32768:8:1$spLHNupcvEWXuwKu$0c8b5c9c3df974d71551bdcfd447e2b6fe8bbd3b10ad0f1dc6300a05c4034277ba7229a7b85beaf094356deec67a1a07d44ac70f96988d210fc81bd89062696c', 'krogers@example.org', '01256903735', 'Tina Floyd', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (422, 424, 'KN3998683', 'Tina Floyd', '2005-06-23', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (605, 422, 6, '2026-04-18 11:49:00', 'Confirmed', 1.00, 'PNR20260416E8350F9A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (605, 400.0, '2026-04-18 11:49:00', 'bKash', 'Completed', 'TXN2026041611490031AB88');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (606, 422, 3, '2026-04-10 11:49:00', 'Cancelled', 1.00, 'PNR202604169C7E436C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (606, 855.0, '2026-04-10 11:49:00', 'Cash', 'Refunded', 'TXN202604161149000C7104');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (607, 422, 10, '2026-04-03 11:49:00', 'Confirmed', 1.00, 'PNR202604168380FA33');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (607, 465.0, '2026-04-03 11:49:00', 'bKash', 'Completed', 'TXN20260416114900FDA7C2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (425, 'sean9164037', 'scrypt:32768:8:1$Uksw7X4M915tTnzj$586f2b0bbcdf03d30e910f1edd5195699a07fcb6171cd7922b58ed91611414df3af6da8e7a214cd3cce8dca819fe13fd557cbd15e34412db0697936f2bc9e25d', 'wrightbrian@example.com', '01278025764', 'Rachel Holloway', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (423, 425, 'ML0581570', 'Rachel Holloway', '1983-07-07', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (608, 423, 5, '2026-04-01 11:49:00', 'Confirmed', 1.00, 'PNR20260416D4012976');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (608, 800.0, '2026-04-01 11:49:00', 'Cash', 'Completed', 'TXN20260416114900A7696B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (609, 423, 19, '2026-04-03 11:49:00', 'Confirmed', 1.00, 'PNR20260416C6794B64');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (609, 1050.0, '2026-04-03 11:49:00', 'Credit Card', 'Completed', 'TXN202604161149008E3919');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (610, 423, 4, '2026-04-23 11:49:00', 'Cancelled', 1.00, 'PNR202604166AED01C2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (610, 1025.0, '2026-04-23 11:49:00', 'bKash', 'Refunded', 'TXN20260416114900AA36B7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (426, 'daniel8654749', 'scrypt:32768:8:1$1BlLmP3Tpy29U4vr$71529d3093093c1f2cde65cd3b3420c330f936f0de2bbfa6f7b4d985963b944e75340512cfc3d6858b70241798eadedd6a89d3e1a9bc775d811aface775abd3a', 'mcdanielsean@example.net', '01483611597', 'Alexandra Brown', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (424, 426, 'BJ5899762', 'Alexandra Brown', '1947-11-15', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (611, 424, 11, '2026-03-18 11:49:00', 'Confirmed', 1.00, 'PNR2026041608D1611E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (611, 450.0, '2026-03-18 11:49:00', 'Nagad', 'Completed', 'TXN20260416114900B503E5');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (612, 424, 7, '2026-05-01 11:49:00', 'Cancelled', 1.00, 'PNR20260416B180721B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (612, 950.0, '2026-05-01 11:49:00', 'Nagad', 'Refunded', 'TXN20260416114900A29566');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (427, 'csaunders18941', 'scrypt:32768:8:1$2pX7HjuWsqruSwTE$e2dd63ead437871ca99bb0ce0d0d586b143be59ed3d1323e7fda00118e323ca86e0113c79efca9bf2d9db9e36876964db33dd8116a02ae5477a659d0321db7d0', 'ofernandez@example.net', '01490088152', 'Amanda Sims', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (425, 427, 'AU4844657', 'Amanda Sims', '1989-01-01', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (613, 425, 11, '2026-04-28 11:49:00', 'Confirmed', 1.00, 'PNR2026041649047B9D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (613, 285.0, '2026-04-28 11:49:00', 'Credit Card', 'Completed', 'TXN202604161149009A8385');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (614, 425, 8, '2026-03-25 11:49:00', 'Confirmed', 1.00, 'PNR20260416A2255D38');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (614, 265.0, '2026-03-25 11:49:00', 'bKash', 'Completed', 'TXN20260416114900E3DAE2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (428, 'alexander6567834', 'scrypt:32768:8:1$jEbU6P4FuWSUeXUV$e1139f15ee9bc6d63da7175182b50cc12915359ade8fcd92363b2ef2141dcee7d95827c233d04e3ea9e9eb711a6f5bcee6e9907402e607b194dcbd905cd93cb5', 'kadams@example.org', '01172883612', 'Robert Hall', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (426, 428, 'UF3685419', 'Robert Hall', '2007-10-20', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (615, 426, 2, '2026-03-23 11:49:00', 'Cancelled', 1.00, 'PNR20260416CF69030E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (615, 1398.0, '2026-03-23 11:49:00', 'Credit Card', 'Refunded', 'TXN20260416114900B5875F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (616, 426, 14, '2026-04-13 11:49:00', 'Confirmed', 1.00, 'PNR20260416D1776B8D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (616, 450.0, '2026-04-13 11:49:00', 'Credit Card', 'Completed', 'TXN20260416114900663DF1');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (617, 426, 8, '2026-03-22 11:49:00', 'Cancelled', 1.00, 'PNR2026041654DDA8EE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (617, 265.0, '2026-03-22 11:49:00', 'Nagad', 'Refunded', 'TXN2026041611490025F9B3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (429, 'briannawest87784', 'scrypt:32768:8:1$rP6DWPE73BL0FM6v$5d2c7098770a45d2788a66385e99c1eb86a9457729c880e4b368e5ea7a76c23d7067a8a55626cf2bf91a411228c8396919c40392b8f75fb50697b38ab3f6db3d', 'nicolefields@example.org', '01242183782', 'Lindsay Shields', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (427, 429, 'VO0601755', 'Lindsay Shields', '1981-03-10', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (618, 427, 13, '2026-03-26 11:49:00', 'Confirmed', 1.00, 'PNR2026041634C646FE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (618, 1300.0, '2026-03-26 11:49:00', 'Credit Card', 'Completed', 'TXN20260416114900A47108');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (619, 427, 8, '2026-05-01 11:49:00', 'Confirmed', 1.00, 'PNR20260416F0EB07B8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (619, 780.0, '2026-05-01 11:49:00', 'bKash', 'Completed', 'TXN20260416114900C3DB03');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (620, 427, 13, '2026-04-01 11:49:00', 'Confirmed', 1.00, 'PNR20260416C2C459F1');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (620, 1300.0, '2026-04-01 11:49:00', 'Cash', 'Completed', 'TXN20260416114900C5B9DB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (430, 'walterscraig26686', 'scrypt:32768:8:1$SKbjWI4jIMdVqksS$330e7e55d43923918369bd7f25fa340b5add65013e259be9d1cb0be09fc877c1abd4de9426fadf5dfbb5f2fb627ea4878f1c0b71878c1f511cc1fa5865479ca2', 'smithrobert@example.com', '01753415540', 'Jose Anderson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (428, 430, 'QX8354711', 'Jose Anderson', '1990-08-10', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (621, 428, 4, '2026-04-19 11:49:00', 'Cancelled', 1.00, 'PNR202604160A4DFA86');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (621, 1025.0, '2026-04-19 11:49:00', 'Nagad', 'Refunded', 'TXN20260416114900353742');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (622, 428, 9, '2026-04-26 11:49:00', 'Confirmed', 1.00, 'PNR20260416106E852B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (622, 465.0, '2026-04-26 11:49:00', 'Nagad', 'Completed', 'TXN20260416114900CECAD4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (623, 428, 15, '2026-04-21 11:49:00', 'Confirmed', 1.00, 'PNR2026041680504602');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (623, 780.0, '2026-04-21 11:49:00', 'bKash', 'Completed', 'TXN20260416114900D83DD9');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (431, 'oschmidt83742', 'scrypt:32768:8:1$udIKLW2OZ99ZXkc6$6b946e63a048840edb33c06360879854b04f063f0adbacad2ec74cd181789363693932a005f063de9f187abbf07f3dcb3be03cb29a6d56b2b767f01409d1b153', 'bramirez@example.org', '01342041437', 'Rodney Clark', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (429, 431, 'CI8705143', 'Rodney Clark', '1998-10-06', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (432, 'mcgeemargaret14085', 'scrypt:32768:8:1$s5l4V7yuVycKcYT1$120c2b1b6f601df6e3264f27a692a41de7a80f08c4ea39e40d275fee60998f6c68592443383b7da894fe16eb72191bbb2fcd47b54e105f9c5003cc553cc37d09', 'john28@example.org', '01879607540', 'William Robinson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (430, 432, 'RS4834552', 'William Robinson', '2006-08-26', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (433, 'hdavis6229', 'scrypt:32768:8:1$wEMzXs1m5JXxJOxT$4f7785a6f09f1e4c6057af96e418bcb7aeaa88292c6ad6ee96e8fce4b29b384aa098a6e83d594c39ff75cec5f92066a45d0fd9c668ffb3272d9158a94d866fa0', 'jeremy31@example.com', '01788896347', 'Mrs. Anne Stein DDS', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (431, 433, 'NG4654070', 'Mrs. Anne Stein DDS', '1962-05-08', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (434, 'cameron3678031', 'scrypt:32768:8:1$7xnqr16ZS6Y8HcbJ$589414370dafaa8030c2c04cf5cbf75e3f7245aa33895b0b4ee82d58fc92de1ff6356c9d05ddc7cbc9906ce4b6db8d4a5caecc01ff7724405e03762b27510f82', 'briggsmatthew@example.net', '01604959672', 'Maria Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (432, 434, 'TI5534551', 'Maria Smith', '1946-09-30', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (624, 432, 6, '2026-03-29 11:49:01', 'Confirmed', 1.00, 'PNR202604167AB8417F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (624, 400.0, '2026-03-29 11:49:01', 'Credit Card', 'Completed', 'TXN202604161149016BF90B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (625, 432, 4, '2026-03-23 11:49:01', 'Confirmed', 1.00, 'PNR2026041654F4CDE0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (625, 450.0, '2026-03-23 11:49:01', 'Nagad', 'Completed', 'TXN20260416114901553309');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (435, 'gsmith84062', 'scrypt:32768:8:1$y69O8RGJdyOWCtlZ$70b4e3a75d61e64bfd77e13581ea0f32ac5f3c11c485f578ebd636a5f271d5e13207d0d28c7b49e4d915515495f24b131dd7eda0a0ca5c91d956dd77b2c2998b', 'freemanrobert@example.org', '01987120739', 'Jeremiah Stephens', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (433, 435, 'ZI2988407', 'Jeremiah Stephens', '1951-06-14', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (436, 'orrnicholas91065', 'scrypt:32768:8:1$OF7sLfffQ9tRRHVp$019aac350603b13d488358302fdbd4c5fcac6d15b23925886c38bddddcdec4b14ff07623a1ddbe674a33a786ab64e19ed9845efe08565a5a808da252cfe53929', 'lisa17@example.net', '01319357483', 'Laura Stone', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (434, 436, 'MB8360180', 'Laura Stone', '1985-08-02', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (626, 434, 9, '2026-03-23 11:49:01', 'Confirmed', 1.00, 'PNR20260416924EFCC3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (626, 870.0, '2026-03-23 11:49:01', 'Credit Card', 'Completed', 'TXN202604161149015DEE0A');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (437, 'foxheather31371', 'scrypt:32768:8:1$ILr4PqdmIrKgWFwb$50d9d866076e171fcf566a0f5535cabd7ecd85ca85d0344251a389e4db8d8a29628b55140382995e441130ac09fb07f0ec83c5b0b05e93d0d7ed43508732fc68', 'ronaldlewis@example.net', '01060975214', 'Tonya Garcia', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (435, 437, 'LY6323540', 'Tonya Garcia', '1968-11-26', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (438, 'charlesflores89510', 'scrypt:32768:8:1$vuaK4NQDTcYOAzYI$35b012fa5b20c478539b7a7cc13676c317d09706b564df0bbd3e9ed82bb688749efa2af7c5fa1896733067c81dbc5c44b3e3bc0147f1006a96f4aee12908d757', 'xperez@example.com', '01021829893', 'Shannon Anderson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (436, 438, 'JB9409487', 'Shannon Anderson', '1985-07-26', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (439, 'nashkristen6110', 'scrypt:32768:8:1$O5HRqRStpXzPfTKW$1a2c5cc36d0c448c2002006428687f860d77fc3fe49d11c1e6235640acbb86e77f278f08978819ed13b1a8fb49718c34fe0751df836ba9c057f1b667051c65e0', 'masondouglas@example.com', '01143851637', 'Caroline White', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (437, 439, 'ZE7718300', 'Caroline White', '2005-01-20', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (627, 437, 11, '2026-04-21 11:49:01', 'Cancelled', 1.00, 'PNR20260416F730FFB2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (627, 855.0, '2026-04-21 11:49:01', 'Nagad', 'Refunded', 'TXN20260416114901FB7810');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (440, 'arthurjames71171', 'scrypt:32768:8:1$iYtClSQrYNbTOrjh$14632ce43a36e7f14c45fc7b7b0c424b64b04821c6178499518dc2a7776fcd05b7c46b1f99b17b0d687d0b914895fab992d1e1d58ff055d4a2870c471381d4fa', 'evansanchez@example.net', '01035281634', 'Andrew Martinez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (438, 440, 'JF7154384', 'Andrew Martinez', '1951-06-25', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (628, 438, 1, '2026-04-21 11:49:01', 'Confirmed', 1.00, 'PNR202604169E085D56');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (628, 450.0, '2026-04-21 11:49:01', 'Nagad', 'Completed', 'TXN202604161149019F260E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (629, 438, 18, '2026-04-09 11:49:01', 'Confirmed', 1.00, 'PNR202604165A4272B4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (629, 265.0, '2026-04-09 11:49:01', 'Nagad', 'Completed', 'TXN2026041611490176962F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (441, 'oscarharris96568', 'scrypt:32768:8:1$fxNPey9YImDelpdT$c2f96fa064a1c3cc94469a303ac5d10447513e1b5f1af3f9fc57b88d0a037e8909ef97628b1fa31fb0c1637396ad268ae22acbd0e05381d320dc1f7b334de79f', 'joan66@example.com', '01456378382', 'Holly Campbell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (439, 441, 'YY0606435', 'Holly Campbell', '1966-10-15', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (442, 'brandy151856', 'scrypt:32768:8:1$ZcpPUfppFcDuwPcv$01f78be5aeaff060c0da342d5cd8040df015f697bf94fe4cd013bd05b6bb598b313ac41bd825591def983826e97e102692480e2529a4b8f21ea86e2057c53a46', 'sanderseric@example.org', '01461209497', 'Kimberly Murphy', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (440, 442, 'FE1916566', 'Kimberly Murphy', '1954-06-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (630, 440, 2, '2026-03-29 11:49:02', 'Cancelled', 1.00, 'PNR2026041655A3596A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (630, 285.0, '2026-03-29 11:49:02', 'Credit Card', 'Refunded', 'TXN20260416114902498BAE');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (443, 'scott1362781', 'scrypt:32768:8:1$WNsnuz8TS4U4pSb9$aa6f57b6534a7bf16a31103dc737e9aef8e165a08b17368d2d0c3e18c4e39d0d3679d07e1a7841eb92c6a4579f73e21e5d1bcca72e7d7b3806f96b488b46ecf3', 'mpark@example.net', '01894814339', 'Robert Henry', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (441, 443, 'XJ5470853', 'Robert Henry', '1989-09-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (631, 441, 15, '2026-04-17 11:49:02', 'Confirmed', 1.00, 'PNR20260416C6BBE5EA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (631, 950.0, '2026-04-17 11:49:02', 'bKash', 'Completed', 'TXN2026041611490295EB84');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (632, 441, 2, '2026-04-28 11:49:02', 'Confirmed', 1.00, 'PNR20260416DAA21192');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (632, 450.0, '2026-04-28 11:49:02', 'bKash', 'Completed', 'TXN202604161149027C2F1B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (633, 441, 1, '2026-04-11 11:49:02', 'Confirmed', 1.00, 'PNR20260416BD9D6C92');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (633, 1025.0, '2026-04-11 11:49:02', 'Nagad', 'Completed', 'TXN20260416114902315707');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (444, 'alexandriacoleman38525', 'scrypt:32768:8:1$diINUgDtAyimfxg4$d00dc4565e697f81eec7fa90fbdee4a8e47ce2730ed2449b78d15308bd50bb3271550425aed93f8c5341aba77ca44c3e751de2e69d2325530bce713d7b5b7da5', 'reyesjason@example.org', '01938783573', 'Michael Cunningham', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (442, 444, 'JU4423212', 'Michael Cunningham', '1991-02-04', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (634, 442, 4, '2026-03-29 11:49:02', 'Confirmed', 1.00, 'PNR20260416167C3095');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (634, 450.0, '2026-03-29 11:49:02', 'Cash', 'Completed', 'TXN20260416114902355363');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (445, 'patricia342314', 'scrypt:32768:8:1$TD9uyafZFbhrPfTf$4fac21493849dcb695c3d2070ed5a88c43d4807aefaf61ca915bbcb46cb014a53493e5a402c5b6919689b99bdc1c3068832c00468212f4c53bd53268fb223bc4', 'chadtaylor@example.net', '01562206747', 'David Hobbs', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (443, 445, 'OC3692935', 'David Hobbs', '1953-01-08', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (635, 443, 8, '2026-03-24 11:49:02', 'Confirmed', 1.00, 'PNR20260416625204E7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (635, 950.0, '2026-03-24 11:49:02', 'Cash', 'Completed', 'TXN20260416114902C8CBC2');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (636, 443, 20, '2026-04-05 11:49:02', 'Confirmed', 1.00, 'PNR202604162CD79666');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (636, 950.0, '2026-04-05 11:49:02', 'Cash', 'Completed', 'TXN20260416114902E5A02D');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (446, 'traci219647', 'scrypt:32768:8:1$4BYyOzV3IB6RwcTM$dc0cc29817db05f7bbdbe7d2107ecbaa5a087b540afab8bd46a0791a1d4f9f9b99059bc85f14cc7d90c6ea2211d71ddda46b281732f6be6b330e544d2629e71d', 'stephen72@example.com', '01755728723', 'April Duncan', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (444, 446, 'LL1829362', 'April Duncan', '2001-03-03', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (447, 'john2358954', 'scrypt:32768:8:1$bAiOvbIuTshRyfQd$4cf05923e9add4b90667c3e6249bb2a7710215b539548df74459a03507d91715cc15b0044834588776f310c0e43a243b453452e03d0ddca65aaa5a9ce5b19b42', 'owensjustin@example.net', '01885158718', 'Amy Fox', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (445, 447, 'QM5827368', 'Amy Fox', '1956-11-15', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (637, 445, 9, '2026-04-05 11:49:02', 'Confirmed', 1.00, 'PNR20260416388C1EFB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (637, 465.0, '2026-04-05 11:49:02', 'Cash', 'Completed', 'TXN2026041611490250544E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (638, 445, 7, '2026-03-25 11:49:02', 'Cancelled', 1.00, 'PNR20260416A75374F6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (638, 265.0, '2026-03-25 11:49:02', 'Cash', 'Refunded', 'TXN20260416114902C34070');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (448, 'emilycasey23221', 'scrypt:32768:8:1$BG1Hd25u54Aerrgj$3d406b1228b1090aa46c955b6174ee9b9a7741f9cda0864d91eee4a31a676e99a5bf4f9a8536afdfd0bc9199f2e68f2b25b3b5735da5b591789ee3f43ed32a9b', 'steven44@example.com', '01049182014', 'Abigail Shelton', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (446, 448, 'VM1873364', 'Abigail Shelton', '1961-08-14', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (639, 446, 19, '2026-03-31 11:49:02', 'Confirmed', 1.00, 'PNR20260416720CA4BB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (639, 1050.0, '2026-03-31 11:49:02', 'bKash', 'Completed', 'TXN2026041611490270D152');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (640, 446, 20, '2026-03-27 11:49:02', 'Confirmed', 1.00, 'PNR2026041631D0C730');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (640, 1300.0, '2026-03-27 11:49:02', 'Nagad', 'Completed', 'TXN20260416114902C0655D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (641, 446, 6, '2026-04-19 11:49:02', 'Confirmed', 1.00, 'PNR20260416EA3E8E11');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (641, 250.0, '2026-04-19 11:49:02', 'bKash', 'Completed', 'TXN202604161149029C935C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (449, 'mturner96529', 'scrypt:32768:8:1$h4MignpvsrWa1Lpl$0a3f7d86b8bc08bce978828e550d0515cca51c569fba82acb15547326eca8b31b3f5e21fc6cbe33ac46c19b9ee5c6f29a352afdcb24c2e7e836c6a2a8deb8aff', 'jacob66@example.org', '01572846839', 'Billy Bailey', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (447, 449, 'QR3457971', 'Billy Bailey', '1951-02-03', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (450, 'hlarson29305', 'scrypt:32768:8:1$QuNZe6z42ozD2MlF$f05360e669438e1bcc374a1a5545894b0789d4d7e0e9fc0b0c0849b956058c55ad058579f95b2f684de4bd734d18c4e46841d90a044ae56ce4e41827d7bf8266', 'marcus97@example.com', '01550008838', 'Jake Rangel', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (448, 450, 'KO9443731', 'Jake Rangel', '1971-09-17', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (451, 'lisa1539821', 'scrypt:32768:8:1$l2AkEzT3lVpoIqwe$699cfe0dcda2d47cafc2939fb89d701009fe2b39547eaf40522bd3c694ec459823bec8133d786a6ebd98da02aead64f19827bd1e71299725ca3a20fc66df60b7', 'wayne44@example.net', '01959600962', 'Adam Reed', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (449, 451, 'VO5749771', 'Adam Reed', '1952-01-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (642, 449, 1, '2026-03-24 11:49:02', 'Confirmed', 1.00, 'PNR20260416856B27AB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (642, 1398.0, '2026-03-24 11:49:02', 'bKash', 'Completed', 'TXN2026041611490217D377');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (452, 'donna0123323', 'scrypt:32768:8:1$Z3ewY71o9WWeKabk$bc14916667017c2d61bf1e41d7b3184a88f037e6d06e6e49615173be854ca6cdcf67be43763f609825b43e32abc725d20360319c3cb21988a08ca34ccd9ffa40', 'wmccarthy@example.net', '01556124170', 'Justin Bennett', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (450, 452, 'ON1403877', 'Justin Bennett', '1964-04-15', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (643, 450, 13, '2026-04-14 11:49:02', 'Confirmed', 1.00, 'PNR20260416E82471EA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (643, 400.0, '2026-04-14 11:49:02', 'Nagad', 'Completed', 'TXN202604161149028E8C20');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (644, 450, 12, '2026-04-05 11:49:02', 'Confirmed', 1.00, 'PNR202604169DAE4949');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (644, 1398.0, '2026-04-05 11:49:02', 'Nagad', 'Completed', 'TXN202604161149020B16AD');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (453, 'heidi316297', 'scrypt:32768:8:1$ipT1OHJnRgKU2tHx$632115cc6bc5206387b6957da5d35c9ecc317ad23f42ed8e6e6a1ee90609d69d38e5ec8f013f40336a1ffb72d78e14bdf2d0a276e3074f0f531146bcd5d35e93', 'icrawford@example.com', '01639807608', 'Tony Barnett', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (451, 453, 'HK1970363', 'Tony Barnett', '1966-11-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (645, 451, 20, '2026-03-22 11:49:03', 'Confirmed', 1.00, 'PNR2026041619784108');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (645, 250.0, '2026-03-22 11:49:03', 'Nagad', 'Completed', 'TXN20260416114903AE3552');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (646, 451, 3, '2026-04-07 11:49:03', 'Confirmed', 1.00, 'PNR20260416CA69CA8E');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (646, 1025.0, '2026-04-07 11:49:03', 'Nagad', 'Completed', 'TXN20260416114903A270FA');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (647, 451, 19, '2026-04-29 11:49:03', 'Confirmed', 1.00, 'PNR2026041608573D7D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (647, 870.0, '2026-04-29 11:49:03', 'Credit Card', 'Completed', 'TXN2026041611490327A33B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (454, 'mercadonicole77069', 'scrypt:32768:8:1$MDi2nWLyeQ6Hqqwl$2b9cbefb26f45ea190a56f4b50baa2d5a101cb4de63f03ec36b84c41da2fbc40e462c972f3290d75694bfea8f25ebc887f9507186843ef59ab0ff26fce0cb45c', 'christianperez@example.com', '01352788902', 'Jerry Cook', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (452, 454, 'WR3407220', 'Jerry Cook', '1955-07-07', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (648, 452, 15, '2026-04-08 11:49:03', 'Confirmed', 1.00, 'PNR20260416659A802A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (648, 425.0, '2026-04-08 11:49:03', 'bKash', 'Completed', 'TXN202604161149038A5BE2');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (455, 'egibson21919', 'scrypt:32768:8:1$snuhfrJNXE32NY5w$da1e9c8f79640ae9a5db075c547a7b8ed5ef20b9028bef6e2201468f61435b466f02cc0792bf3f2ad6324b9e93e0ac6969d86545f836fb087fb258896228d13c', 'robinsonrobert@example.net', '01935157465', 'Kara Holt', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (453, 455, 'DW9549128', 'Kara Holt', '1990-12-27', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (649, 453, 3, '2026-04-19 11:49:03', 'Confirmed', 1.00, 'PNR20260416392C1A47');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (649, 450.0, '2026-04-19 11:49:03', 'Cash', 'Completed', 'TXN20260416114903056AE4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (650, 453, 14, '2026-04-06 11:49:03', 'Confirmed', 1.00, 'PNR20260416B68EDCEA');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (650, 1025.0, '2026-04-06 11:49:03', 'bKash', 'Completed', 'TXN2026041611490335DE6E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (651, 453, 14, '2026-04-17 11:49:03', 'Confirmed', 1.00, 'PNR20260416BC2AA177');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (651, 1025.0, '2026-04-17 11:49:03', 'bKash', 'Completed', 'TXN202604161149037E7296');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (456, 'ryanfields93695', 'scrypt:32768:8:1$EKr6dLVxrn2if0i0$b3cec7f13cd0fb567ee12f9c34bb82829d1511210baf47e6b4b3ebcf50fe7d84d7c98a43ef35fd4f39f37ec74d418ef374e6ea036678d00760d37265c48617fa', 'wesley01@example.net', '01928964220', 'John Martinez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (454, 456, 'CN3116271', 'John Martinez', '1971-01-19', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (457, 'jwalters62672', 'scrypt:32768:8:1$kZO4Rp7jfpB9J3SC$3c41ee13f009d7ee174c543f8bc98d5d5fcf26c0706f47c2698d619f2463712d38db90c9a1391a9cd3a96e55689cd655035f0cebc3df3231891548150a8ed68d', 'kevin30@example.net', '01536142631', 'Shane Fields', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (455, 457, 'LU6722812', 'Shane Fields', '1946-04-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (652, 455, 7, '2026-04-08 11:49:03', 'Confirmed', 1.00, 'PNR202604164B6C140B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (652, 425.0, '2026-04-08 11:49:03', 'Cash', 'Completed', 'TXN20260416114903166C6D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (653, 455, 18, '2026-04-05 11:49:03', 'Confirmed', 1.00, 'PNR2026041657C0341A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (653, 950.0, '2026-04-05 11:49:03', 'Credit Card', 'Completed', 'TXN20260416114903717BCB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (654, 455, 10, '2026-03-26 11:49:03', 'Confirmed', 1.00, 'PNR202604164AB64E56');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (654, 295.0, '2026-03-26 11:49:03', 'Credit Card', 'Completed', 'TXN20260416114903A07855');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (458, 'pattonbrooke20234', 'scrypt:32768:8:1$y85nEANSnvGYtILJ$cd4be436f1716216564f593b6536d0ffd667a389dd20b29bb118e8626f7ccd3f9a8a426336cee20a70e32848322b4e6cbac76d98c3e3c8ff451a25e40131461e', 'brandiglover@example.org', '01925110828', 'Angela Hernandez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (456, 458, 'TF3490620', 'Angela Hernandez', '1958-04-29', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (655, 456, 14, '2026-03-24 11:49:03', 'Cancelled', 1.00, 'PNR202604169B6FE7AF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (655, 1025.0, '2026-03-24 11:49:03', 'Credit Card', 'Refunded', 'TXN20260416114903637D9C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (459, 'obrienbrittany84796', 'scrypt:32768:8:1$wbfCzLwTz7IiwhjW$792c297e99042e9317b96bc3bc3d8f4ceb72a14d92993afed5b0cb87118f5033729fb39590267f5eea5d49af773080cb6144e7a87fd1d13e58ae97bde76e796a', 'kerryyoung@example.org', '01311855006', 'Ashley Campbell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (457, 459, 'AE6974500', 'Ashley Campbell', '1959-03-13', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (656, 457, 9, '2026-04-11 11:49:04', 'Confirmed', 1.00, 'PNR2026041638ABF7D9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (656, 1050.0, '2026-04-11 11:49:04', 'Cash', 'Completed', 'TXN202604161149046BA912');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (657, 457, 10, '2026-04-10 11:49:04', 'Confirmed', 1.00, 'PNR202604160BCD7CEF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (657, 1425.0, '2026-04-10 11:49:04', 'Cash', 'Completed', 'TXN20260416114904171B69');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (658, 457, 3, '2026-04-15 11:49:04', 'Confirmed', 1.00, 'PNR202604165D23F2BC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (658, 1398.0, '2026-04-15 11:49:04', 'bKash', 'Completed', 'TXN20260416114904712D01');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (460, 'davidhopkins47296', 'scrypt:32768:8:1$wbrI7JTwDa6DSOYP$269f5117b4049bb645bea07498792e59e32b5985a10794d87f82cc01bacf562b6ad9281b7058329107ca2938befe6a1a92fd163de29b9d0f1683b3dc89e91727', 'gblack@example.org', '01014064054', 'Lisa Jones', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (458, 460, 'SD0678932', 'Lisa Jones', '1984-06-23', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (461, 'jerry4338725', 'scrypt:32768:8:1$Ylq0GJSQAv9YbEMo$1086a279bdb5254e725c65ea3f2088a68a62827fad143cc62504ce3a7a644d696a9c08289af28248539a18ba1d35cc5a425d75fbc04c6c8742c10efc968e8412', 'thompsondiane@example.net', '01209601459', 'Timothy Thompson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (459, 461, 'ID6573824', 'Timothy Thompson', '1983-11-22', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (659, 459, 18, '2026-03-30 11:49:04', 'Confirmed', 1.00, 'PNR20260416D36A13A4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (659, 950.0, '2026-03-30 11:49:04', 'Credit Card', 'Completed', 'TXN20260416114904F3FCA7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (462, 'dyerdaniel56773', 'scrypt:32768:8:1$QRbaK6jNSBECn2Af$749420efd32711f0daf99b1cb86d47f8673b4b17dea1c8d2b32946f6c850f9e2c58ba251870bcbd49e90b2d75b61c3852f2130c0d4d96c42911f621d88a0af81', 'lcosta@example.com', '01528971863', 'Daniel Moon', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (460, 462, 'UE0078711', 'Daniel Moon', '1987-07-16', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (660, 460, 12, '2026-03-22 11:49:04', 'Confirmed', 1.00, 'PNR202604166AE0A41F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (660, 1025.0, '2026-03-22 11:49:04', 'Cash', 'Completed', 'TXN202604161149049CD503');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (463, 'rsantiago23723', 'scrypt:32768:8:1$XEGtoi3VaxmyQF3q$182d8f24e896261c1a04f8d81d4d0b0bbf581c08db11ae2c34ca399b52e001f06c2590cace9a00a0e23ccd71fbd8320a8f395dd347e11f0681f7a79273e4f97d', 'paul30@example.org', '01617485089', 'Jeffrey Hopkins', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (461, 463, 'FR8278588', 'Jeffrey Hopkins', '1979-03-06', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (661, 461, 12, '2026-04-28 11:49:04', 'Confirmed', 1.00, 'PNR202604162D81E447');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (661, 285.0, '2026-04-28 11:49:04', 'Cash', 'Completed', 'TXN20260416114904A09170');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (662, 461, 11, '2026-04-17 11:49:04', 'Confirmed', 1.00, 'PNR202604165F03FD71');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (662, 450.0, '2026-04-17 11:49:04', 'Credit Card', 'Completed', 'TXN2026041611490416B1E1');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (663, 461, 12, '2026-04-26 11:49:04', 'Cancelled', 1.00, 'PNR202604169DFC05C6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (663, 855.0, '2026-04-26 11:49:04', 'Credit Card', 'Refunded', 'TXN20260416114904E71B56');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (464, 'mariehale8014', 'scrypt:32768:8:1$TAGYLfeejPORZWv4$81ae3353ef6561ad2bd543e02fe39fec44d0f93e48eca647a948e80f43d1c3a0af50ea322ed7469e35b6fdd637a4e8f8c23f514c4a82ab380f09a9e4a6fea2f4', 'jjones@example.org', '01733359942', 'Laura Luna', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (462, 464, 'UB1511474', 'Laura Luna', '2000-03-05', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (664, 462, 15, '2026-04-21 11:49:04', 'Cancelled', 1.00, 'PNR20260416512CA683');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (664, 265.0, '2026-04-21 11:49:04', 'Nagad', 'Refunded', 'TXN20260416114904B16EF4');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (465, 'donovankeith93859', 'scrypt:32768:8:1$V4CXLIrXbBmYdKzh$964a60ba291364944a0c9159b908d3333f541ae9165b31892793514283fd56826d9e0bc45e541e6feb83def9cc9cc0e9e4b03624efcf41d115cb331fce622de7', 'andrew57@example.net', '01573221015', 'Danielle Flores', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (463, 465, 'UR5267265', 'Danielle Flores', '1992-05-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (665, 463, 8, '2026-04-20 11:49:04', 'Cancelled', 1.00, 'PNR202604168857EE88');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (665, 425.0, '2026-04-20 11:49:04', 'Nagad', 'Refunded', 'TXN20260416114904C1BC62');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (666, 463, 8, '2026-04-30 11:49:04', 'Confirmed', 1.00, 'PNR202604164F455A1C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (666, 265.0, '2026-04-30 11:49:04', 'Credit Card', 'Completed', 'TXN20260416114904EA1E17');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (667, 463, 20, '2026-04-13 11:49:04', 'Confirmed', 1.00, 'PNR20260416A4603E5F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (667, 1300.0, '2026-04-13 11:49:04', 'Nagad', 'Completed', 'TXN20260416114904DEACC5');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (466, 'igarcia38699', 'scrypt:32768:8:1$Z0MOEZZpz7TeFN1c$03f6107d161b7bb2bb73e9006ba535a7c1bfbfdd4b915456a170d9db59500c091f212e5debbef299a8d489ddc415709bd2fd17ea52b4acb06d3a525ec07a045b', 'stevensdeanna@example.com', '01975428010', 'Mandy Diaz', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (464, 466, 'ZV3807704', 'Mandy Diaz', '1989-05-14', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (668, 464, 19, '2026-04-15 11:49:04', 'Confirmed', 1.00, 'PNR20260416BD3896B7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (668, 465.0, '2026-04-15 11:49:04', 'bKash', 'Completed', 'TXN20260416114904BFE713');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (669, 464, 1, '2026-04-16 11:49:04', 'Confirmed', 1.00, 'PNR202604165072184D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (669, 450.0, '2026-04-16 11:49:04', 'bKash', 'Completed', 'TXN2026041611490468999C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (670, 464, 3, '2026-04-06 11:49:04', 'Confirmed', 1.00, 'PNR202604163EB1C6FB');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (670, 450.0, '2026-04-06 11:49:04', 'bKash', 'Completed', 'TXN202604161149046B75C7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (467, 'palmermegan7077', 'scrypt:32768:8:1$nP73WojxlAU3G11h$c0bde94e9cea8b78aab89a6fa89365c26dae905bc7b51d83d2355154839e839493a986e1b5a3eb08d051a5dd45bd92fae274d4d3ad582830997d8694ecd46fef', 'qrandolph@example.com', '01118643432', 'Michele Farrell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (465, 467, 'CH3161299', 'Michele Farrell', '1945-07-28', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (671, 465, 3, '2026-04-03 11:49:04', 'Confirmed', 1.00, 'PNR202604160B4B599F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (671, 855.0, '2026-04-03 11:49:04', 'Nagad', 'Completed', 'TXN202604161149040E288C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (672, 465, 13, '2026-04-04 11:49:04', 'Confirmed', 1.00, 'PNR20260416105DD2CD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (672, 1300.0, '2026-04-04 11:49:04', 'Nagad', 'Completed', 'TXN2026041611490405F4C7');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (673, 465, 2, '2026-04-13 11:49:04', 'Confirmed', 1.00, 'PNR2026041677C0C255');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (673, 1025.0, '2026-04-13 11:49:04', 'Nagad', 'Completed', 'TXN202604161149041E6BA7');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (468, 'nicole0488310', 'scrypt:32768:8:1$4vSRFOc88FvwMxIT$97fe069c867710eb7e35126015468028caa6922ab83d82744cd519316ae6c65061ad3fdcadc73989e334c0bfe17902d23b8780037202f9d4d500a78d901e3ddd', 'rodriguezrobert@example.org', '01817527592', 'Sarah Meyer', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (466, 468, 'XL2710052', 'Sarah Meyer', '1972-04-25', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (674, 466, 4, '2026-04-19 11:49:05', 'Confirmed', 1.00, 'PNR202604163A3896F6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (674, 450.0, '2026-04-19 11:49:05', 'Cash', 'Completed', 'TXN2026041611490545E931');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (675, 466, 3, '2026-04-06 11:49:05', 'Confirmed', 1.00, 'PNR20260416390D7EEF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (675, 285.0, '2026-04-06 11:49:05', 'Nagad', 'Completed', 'TXN20260416114905358882');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (469, 'tbennett38233', 'scrypt:32768:8:1$ZFquxEGIILpnKxAF$58933b309239635662da48c3be8f5293206bdf2716bb7f758c9e492021dcf644bc7fb2fe25104d81c8695eca9694068f11cfdc82170935cd93f3c212df988d95', 'amanda81@example.com', '01150772577', 'David Gilmore', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (467, 469, 'CW9518714', 'David Gilmore', '1969-12-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (676, 467, 15, '2026-03-28 11:49:05', 'Confirmed', 1.00, 'PNR20260416A4E04FD6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (676, 425.0, '2026-03-28 11:49:05', 'Credit Card', 'Completed', 'TXN2026041611490531CC17');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (470, 'rebeccahall30134', 'scrypt:32768:8:1$ENcQIkYyFzmXEvUr$f07635d774181aa7c45cf37af389bcbab324b633ac617675651eb4ad756e741f02464e300d69c49b26b31a65234dbf1e7a17008a5d4bd7afe623cd260f953044', 'brenda82@example.net', '01334806420', 'Julie Moses', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (468, 470, 'HT8583014', 'Julie Moses', '1968-11-11', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (471, 'jennifer3688924', 'scrypt:32768:8:1$1fruFrNoSg78xHsU$62c8f273a1e9fcc5ad222b650efc56fa723dbbbf480f0f816289bdb08f3fa1756416bb98c7eb00f046166cac5266dbc8656f78858e5c5585d92405939f3c9200', 'jonathan11@example.net', '01828641782', 'Brandon Evans', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (469, 471, 'RB3082269', 'Brandon Evans', '1951-10-07', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (472, 'jonathan72639', 'scrypt:32768:8:1$Tupg0CFAWCu772m5$a8a96774364a9cee270b7b315b830572b5f06be24ede049c8796c414a4d856d20e49be447a36ae78f206f521bcb4cc36f76fe61cb9e21b686efe77fc79fcbd0e', 'vernon91@example.net', '01314495255', 'Steven Mendoza', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (470, 472, 'CF5648519', 'Steven Mendoza', '1947-02-23', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (473, 'williamsmichelle19619', 'scrypt:32768:8:1$7Dd0pf9eMgY1Vz9E$5465e8fb2de11a29cd01f78e59f08e6691a318e7cdb0df52b7486a6d76a03786f5fc21966cdbf8c3550ab61b1f3aae7cd9208231c3349911db852114adda0805', 'brittneyrivera@example.com', '01736724381', 'Leah Thomas', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (471, 473, 'IJ4501060', 'Leah Thomas', '2002-08-03', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (677, 471, 2, '2026-03-30 11:49:05', 'Cancelled', 1.00, 'PNR20260416D3CED87D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (677, 1025.0, '2026-03-30 11:49:05', 'Cash', 'Refunded', 'TXN20260416114905D28515');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (678, 471, 7, '2026-04-11 11:49:05', 'Confirmed', 1.00, 'PNR20260416D3B316D8');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (678, 950.0, '2026-04-11 11:49:05', 'Credit Card', 'Completed', 'TXN20260416114905155D7F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (474, 'icampbell82568', 'scrypt:32768:8:1$iXMsFT0wRD4OyrHf$eabe4ebcdbd563b2b7cfee28f6b02d0f400e4f6a0d49e2378903b56eb35d0ee6f60ab44a06171e03f4c8536467629e20b400c6b847229608e4bf6d70d0a681ae', 'sean73@example.com', '01456001381', 'James Duncan', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (472, 474, 'EX6015829', 'James Duncan', '1970-07-10', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (679, 472, 12, '2026-04-01 11:49:05', 'Confirmed', 1.00, 'PNR202604163E4B23AF');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (679, 285.0, '2026-04-01 11:49:05', 'bKash', 'Completed', 'TXN202604161149050151B3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (475, 'williamswilliam65155', 'scrypt:32768:8:1$ZsjOitFQgObk5FFz$b17e1a1a11da3050f6c3ecc10bdc3a42ab0c86905d7baf27e6b709bfc32bef3cbb81eb08dcf8b5f25e18dccc310759663fabd5041c6f37cf57ed25f3ccca43d4', 'nathanholland@example.net', '01539378861', 'Andre Hansen', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (473, 475, 'YH3347540', 'Andre Hansen', '1987-09-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (680, 473, 4, '2026-04-13 11:49:05', 'Confirmed', 1.00, 'PNR20260416522ED507');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (680, 1025.0, '2026-04-13 11:49:05', 'Cash', 'Completed', 'TXN202604161149057F0B28');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (681, 473, 19, '2026-04-24 11:49:05', 'Confirmed', 1.00, 'PNR2026041675F6EB44');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (681, 1425.0, '2026-04-24 11:49:05', 'bKash', 'Completed', 'TXN20260416114905BB955B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (682, 473, 1, '2026-04-21 11:49:05', 'Cancelled', 1.00, 'PNR20260416B256567F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (682, 855.0, '2026-04-21 11:49:05', 'bKash', 'Refunded', 'TXN2026041611490580F476');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (476, 'randylopez94251', 'scrypt:32768:8:1$63AB4aFcH2VT6KqA$3f23f51a6c23a9653fb034ae9a15ee34d57213b455b1c4424211c1253ac7df039af40ed5d8c5041855d65213d1b4b866a41381f60b29e866caa2b4d85ccdcf1d', 'webersandra@example.net', '01057993183', 'Katherine Alexander', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (474, 476, 'JP9017482', 'Katherine Alexander', '1972-09-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (683, 474, 13, '2026-04-26 11:49:05', 'Confirmed', 1.00, 'PNR2026041650AB5A4A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (683, 400.0, '2026-04-26 11:49:05', 'bKash', 'Completed', 'TXN20260416114905FF6C92');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (684, 474, 5, '2026-04-12 11:49:05', 'Confirmed', 1.00, 'PNR202604164AC4001F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (684, 800.0, '2026-04-12 11:49:05', 'bKash', 'Completed', 'TXN20260416114905703940');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (477, 'bradley8910439', 'scrypt:32768:8:1$NfPXdJ1KulO0pw9B$912985b6b681bbf949e4c2d21f8f40fe5ae23a95765f19bc600ea83ce53f571f09cf7b01dc571a174eae4c432c68dcdf09d995fed2d393879914beff35ae701f', 'llang@example.net', '01061612329', 'Manuel Miller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (475, 477, 'AU4211225', 'Manuel Miller', '1984-04-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (685, 475, 3, '2026-04-07 11:49:05', 'Confirmed', 1.00, 'PNR202604167D4DEF29');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (685, 1025.0, '2026-04-07 11:49:05', 'Nagad', 'Completed', 'TXN20260416114905AEFE52');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (478, 'pamelarogers91093', 'scrypt:32768:8:1$lwbBCsrdbAwnhk46$3de5f2c144b1f39f086f37c6879a8a1a89bd776796951edcb3b56e6e4237989518b822858bc65c545c204e109054a310761e6cbde59f14f62d1515f8ac5e01ca', 'johnsonkimberly@example.com', '01510325282', 'Lindsey Hess', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (476, 478, 'GI4982013', 'Lindsey Hess', '1972-12-09', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (686, 476, 16, '2026-04-07 11:49:05', 'Confirmed', 1.00, 'PNR20260416E264631B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (686, 950.0, '2026-04-07 11:49:05', 'Nagad', 'Completed', 'TXN20260416114905B9C089');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (479, 'loweryamy94531', 'scrypt:32768:8:1$uxj9cNCtwKpWCxFQ$408bca7f59afb0488a3a81a6f7dd383595ef8ee68923f4eab96464e3dcd3507a7aa5a525688ae491e130ff8dcdcb62623d81271dc42be2cc8a6b68423d3554d0', 'eenglish@example.org', '01324951114', 'John Mitchell', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (477, 479, 'CA1723418', 'John Mitchell', '1954-03-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (687, 477, 8, '2026-03-29 11:49:06', 'Confirmed', 1.00, 'PNR2026041683085851');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (687, 265.0, '2026-03-29 11:49:06', 'bKash', 'Completed', 'TXN2026041611490684E6AE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (688, 477, 10, '2026-04-19 11:49:06', 'Confirmed', 1.00, 'PNR20260416E002AAA3');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (688, 295.0, '2026-04-19 11:49:06', 'Nagad', 'Completed', 'TXN202604161149064AFA1D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (689, 477, 15, '2026-05-01 11:49:06', 'Confirmed', 1.00, 'PNR20260416D7143C27');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (689, 950.0, '2026-05-01 11:49:06', 'Nagad', 'Completed', 'TXN2026041611490691D953');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (480, 'jessicahancock49778', 'scrypt:32768:8:1$Kc0KwhMEA8vE1976$add2908813f98549434d312b29075f24b81c62db045a0581a51236778b8ed10dff82a075edb91f67b7f80f288a0e160b9e8eb56261ff3ad798f17a903c4b4fa8', 'jonesrobert@example.net', '01496939258', 'Richard Raymond', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (478, 480, 'QS1492838', 'Richard Raymond', '1970-02-20', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (481, 'joshuacooper37108', 'scrypt:32768:8:1$cJ43VEgePZ2qa2py$c601bef6df043a570dac2f20fba482cfa275524e7801c628af39c7eba98ad702c114fc057b455edcf5ce82c24989ddc15fb4323f9611f674138cdda0ea48f87c', 'morenowillie@example.com', '01173033019', 'George Thompson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (479, 481, 'UH5695842', 'George Thompson', '1990-11-11', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (690, 479, 18, '2026-04-27 11:49:06', 'Confirmed', 1.00, 'PNR202604169A8E7179');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (690, 950.0, '2026-04-27 11:49:06', 'Nagad', 'Completed', 'TXN20260416114906381565');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (691, 479, 10, '2026-03-23 11:49:06', 'Confirmed', 1.00, 'PNR20260416C8FB45E7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (691, 870.0, '2026-03-23 11:49:06', 'Nagad', 'Completed', 'TXN20260416114906545D7B');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (692, 479, 9, '2026-03-25 11:49:06', 'Confirmed', 1.00, 'PNR202604163539B21B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (692, 870.0, '2026-03-25 11:49:06', 'Credit Card', 'Completed', 'TXN202604161149061931FB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (482, 'tlarson64763', 'scrypt:32768:8:1$ItVct7bOBSQRmd91$569a6e91d6f821675978fce75c9ebea9565251ad44d0165c8b4581177f51f90b742c46f9b859648a88160857ccb5bf46ce15a5febde7ab0f86641f8428b8c7fc', 'xevans@example.com', '01030965026', 'Timothy Hughes', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (480, 482, 'PO4159521', 'Timothy Hughes', '1988-04-21', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (693, 480, 2, '2026-04-24 11:49:06', 'Cancelled', 1.00, 'PNR20260416E60A263A');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (693, 1025.0, '2026-04-24 11:49:06', 'bKash', 'Refunded', 'TXN20260416114906F3F02D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (694, 480, 15, '2026-04-18 11:49:06', 'Confirmed', 1.00, 'PNR20260416BDC5788B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (694, 265.0, '2026-04-18 11:49:06', 'Nagad', 'Completed', 'TXN20260416114906D79C89');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (695, 480, 10, '2026-03-26 11:49:06', 'Confirmed', 1.00, 'PNR2026041648719A14');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (695, 1050.0, '2026-03-26 11:49:06', 'Nagad', 'Completed', 'TXN202604161149062E0028');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (483, 'brooksgreg21818', 'scrypt:32768:8:1$9zvn9VTGxmutoufo$fb201df401f3443c9a81d084dd9147abb182c29f9647d58bc1c5a4995e5c48e0a801368ca5cd37b07a8ddf1f15c56f513caa17bf6216a1495999e50386835d31', 'nicholas61@example.com', '01054956804', 'Randall Thomas', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (481, 483, 'EO2265847', 'Randall Thomas', '1991-12-26', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (696, 481, 2, '2026-03-23 11:49:06', 'Confirmed', 1.00, 'PNR202604164ADECCC0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (696, 285.0, '2026-03-23 11:49:06', 'Nagad', 'Completed', 'TXN20260416114906F1ED6D');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (697, 481, 1, '2026-04-30 11:49:06', 'Confirmed', 1.00, 'PNR202604163F105A52');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (697, 855.0, '2026-04-30 11:49:06', 'bKash', 'Completed', 'TXN20260416114906C2260C');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (698, 481, 20, '2026-04-30 11:49:06', 'Confirmed', 1.00, 'PNR202604161249402D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (698, 1300.0, '2026-04-30 11:49:06', 'bKash', 'Completed', 'TXN20260416114906651016');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (484, 'mitchell0733111', 'scrypt:32768:8:1$zbVFzpMKITHkewDt$addc2983323439e7811b58a19ab8dc3ed01d4a40c08cd85609f0793f5f75e7eb344198b3aaca9e840ef9ba6e2cc897bdd8fc307d2b8a6d98ab3bfa8f8c81b5ff', 'wendybutler@example.net', '01379321026', 'Kyle Williams', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (482, 484, 'FT6941093', 'Kyle Williams', '1970-09-13', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (699, 482, 2, '2026-04-27 11:49:06', 'Confirmed', 1.00, 'PNR20260416919809E9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (699, 1398.0, '2026-04-27 11:49:06', 'Cash', 'Completed', 'TXN20260416114906CC99F2');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (700, 482, 18, '2026-04-09 11:49:06', 'Confirmed', 1.00, 'PNR202604169A1F973D');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (700, 780.0, '2026-04-09 11:49:06', 'Cash', 'Completed', 'TXN20260416114906F4D12F');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (701, 482, 9, '2026-03-26 11:49:06', 'Confirmed', 1.00, 'PNR202604167DF24F97');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (701, 870.0, '2026-03-26 11:49:06', 'bKash', 'Completed', 'TXN2026041611490663A165');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (485, 'finleystephanie82689', 'scrypt:32768:8:1$FGeHp3x32f4hnO0d$7b44b86732c498ca62ca9d0463084f44c9ec255ead798abcb2b32006662ae91532a9e9bba9c1bbf3e1ce2c3249b23579fc249134851ff060fb1a654734777c3e', 'bryansherman@example.com', '01941385487', 'Holly Young', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (483, 485, 'ES7150570', 'Holly Young', '1967-04-18', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (702, 483, 4, '2026-04-21 11:49:06', 'Confirmed', 1.00, 'PNR2026041652E626A0');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (702, 450.0, '2026-04-21 11:49:06', 'Nagad', 'Completed', 'TXN202604161149066812FB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (486, 'megan7626294', 'scrypt:32768:8:1$BxyOS4qiHnWUIGdZ$1b46b022629ded86a30006d7c37e242ab3289eddad6f9b3611ee1881a877f61740632d5b7ca0126c99e4aac0ee9820fde2ab1bb551f28858fdcd372b062abf21', 'kristen93@example.org', '01174976842', 'Mallory Jones', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (484, 486, 'UH6074985', 'Mallory Jones', '1972-06-12', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (703, 484, 20, '2026-04-09 11:49:06', 'Confirmed', 1.00, 'PNR202604161AF94E91');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (703, 800.0, '2026-04-09 11:49:06', 'bKash', 'Completed', 'TXN2026041611490635F77F');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (487, 'dawn0336522', 'scrypt:32768:8:1$m7Rqefl2XPzpnBaf$28aa14cc3c5147d8890663c129c05f1a0a7968d5d3a3741d6c5939ad5db02cf92501d77a73ba99b586b79c4e34d65f3a2290da03e2e353152a0b957589b96c5c', 'desireewang@example.com', '01244296576', 'Holly Cummings', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (485, 487, 'BE5450608', 'Holly Cummings', '1978-02-20', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (704, 485, 5, '2026-04-22 11:49:06', 'Confirmed', 1.00, 'PNR20260416CDA46A2C');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (704, 250.0, '2026-04-22 11:49:06', 'bKash', 'Completed', 'TXN202604161149062D13B5');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (705, 485, 9, '2026-04-26 11:49:06', 'Confirmed', 1.00, 'PNR20260416A3E5C4F6');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (705, 1050.0, '2026-04-26 11:49:06', 'Nagad', 'Completed', 'TXN20260416114906C707AD');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (488, 'perryjohn31275', 'scrypt:32768:8:1$h7fIKBLx0J8XEv88$57567b1ea81c5c23bef9cb3f7fd3b4a8b084632da52c734cc127f25d54e1b18a7a61285e8a6a010f4a19fb67845c24a0656087e204a10c3f6dbe7c851b13ef73', 'ooneill@example.com', '01137485955', 'Daniel Perez', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (486, 488, 'JD1148754', 'Daniel Perez', '1976-10-17', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (706, 486, 2, '2026-03-23 11:49:06', 'Confirmed', 1.00, 'PNR202604162554C126');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (706, 1025.0, '2026-03-23 11:49:06', 'Nagad', 'Completed', 'TXN20260416114906880AF4');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (707, 486, 12, '2026-04-14 11:49:06', 'Confirmed', 1.00, 'PNR20260416CD6BF0D9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (707, 1025.0, '2026-04-14 11:49:06', 'Nagad', 'Completed', 'TXN20260416114906E0BB61');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (708, 486, 20, '2026-04-05 11:49:06', 'Cancelled', 1.00, 'PNR202604160A7371BC');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (708, 250.0, '2026-04-05 11:49:06', 'Nagad', 'Refunded', 'TXN202604161149061D35A6');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (489, 'tiffany9578790', 'scrypt:32768:8:1$GXJDFJeYDVmUT9qd$d99542d6e5d0698b1f04f0395349252a3ae427564a458879ae789e759fab9be3211140f93dd4874f3a130baac29b8a72ad9f38999f7eb5ba276944b6c351875e', 'devonanderson@example.net', '01614665869', 'Thomas Freeman', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (487, 489, 'ZM8881160', 'Thomas Freeman', '1975-02-18', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (490, 'fosterrobert14534', 'scrypt:32768:8:1$2qa75E5Dyn8TiQ2q$40829e2839e062af82a0bfffd63a032b373c2ca74277f06c9cbeb22a5a8207bf2abec16149d1ab2d6a8691c58f9941b07cc36b65f31f24d309d711c624599cc7', 'jillianpatterson@example.net', '01201753584', 'Jonathan Gardner', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (488, 490, 'SB6342601', 'Jonathan Gardner', '1985-02-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (709, 488, 14, '2026-04-13 11:49:07', 'Confirmed', 1.00, 'PNR202604162DB16139');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (709, 855.0, '2026-04-13 11:49:07', 'bKash', 'Completed', 'TXN20260416114907FAA39E');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (491, 'barnettkatie13018', 'scrypt:32768:8:1$6FuyRjYMnJHAj73M$b1fec12dd118ecf5ce9ee3fb0f01574c395826721e0340d605c6f3cf821d3bf0a74f668852254067562b9f183536a6f69f0805080cca3c6d06d573dc9774eb21', 'mark85@example.com', '01711047318', 'Stephen Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (489, 491, 'LQ8103705', 'Stephen Smith', '1968-04-24', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (710, 489, 14, '2026-03-27 11:49:07', 'Confirmed', 1.00, 'PNR2026041624820E55');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (710, 1398.0, '2026-03-27 11:49:07', 'Nagad', 'Completed', 'TXN202604161149075C93AB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (492, 'scott2457948', 'scrypt:32768:8:1$QnygNTlyCTRzb8n8$91492603a8601b5c7194f0790d045ae40fb1addef893338c66e929526d1aba5d3ea64a741e6f5d259bee31a35b4f4dce25df13350ea0c79dad8eb54034cde048', 'kathleendavis@example.net', '01179628255', 'Vicki Silva', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (490, 492, 'VO9032901', 'Vicki Silva', '2006-03-07', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (711, 490, 1, '2026-04-28 11:49:07', 'Confirmed', 1.00, 'PNR202604160C7C0612');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (711, 450.0, '2026-04-28 11:49:07', 'bKash', 'Completed', 'TXN20260416114907656DB3');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (493, 'bcurtis22392', 'scrypt:32768:8:1$H95YeiDUONwlACk5$256c92ebf9f563d7acfe8aa5a2726441d56916665de87e338f9d73f5509530ccf0560df13bba5b723bfb598d86b54b32a1097415899f672dc9122ee7bb21b5ff', 'alvaradowilliam@example.net', '01048859253', 'David Fuller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (491, 493, 'QE5413111', 'David Fuller', '1981-10-16', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (712, 491, 3, '2026-04-18 11:49:07', 'Confirmed', 1.00, 'PNR202604164C105436');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (712, 1025.0, '2026-04-18 11:49:07', 'bKash', 'Completed', 'TXN202604161149075E53F6');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (713, 491, 15, '2026-04-20 11:49:07', 'Confirmed', 1.00, 'PNR2026041631F792AE');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (713, 780.0, '2026-04-20 11:49:07', 'Cash', 'Completed', 'TXN20260416114907A59CAD');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (494, 'pmanning37539', 'scrypt:32768:8:1$9XDzOVRG7g7kJ1U3$d53b640b9f723fbfa494f1c280ae2b15e1936cbe4b4eb7ddc8566f5effaf4432186c1faf2015444990fbda7886bfa11658bda4cd95f91ad95ff6909fd5abb158', 'lbeck@example.com', '01878625673', 'William Quinn', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (492, 494, 'GU2991409', 'William Quinn', '1984-07-07', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (714, 492, 19, '2026-04-06 11:49:07', 'Confirmed', 1.00, 'PNR2026041662B128B2');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (714, 870.0, '2026-04-06 11:49:07', 'Cash', 'Completed', 'TXN20260416114907A8EB41');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (715, 492, 7, '2026-04-10 11:49:07', 'Cancelled', 1.00, 'PNR20260416390AA4F7');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (715, 950.0, '2026-04-10 11:49:07', 'bKash', 'Refunded', 'TXN20260416114907183FF9');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (495, 'lisa4176333', 'scrypt:32768:8:1$vZOZdeLvWxDPTlTn$3e6319e6b98d5a386e4a8814ff0eab5f843c6ceffad2390c23fad3bc14e127d2ffaf92b0481fe4861fd49b4edee2dccb086dbc6651b0e69217b28a1a99c988e4', 'marc20@example.net', '01279928345', 'John Davis', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (493, 495, 'LK8636361', 'John Davis', '1955-07-13', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (716, 493, 1, '2026-03-29 11:49:07', 'Confirmed', 1.00, 'PNR20260416F39157DD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (716, 285.0, '2026-03-29 11:49:07', 'Credit Card', 'Completed', 'TXN20260416114907D7F604');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (717, 493, 6, '2026-04-27 11:49:07', 'Cancelled', 1.00, 'PNR202604166AB160A5');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (717, 250.0, '2026-04-27 11:49:07', 'Credit Card', 'Refunded', 'TXN20260416114907E73B1B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (496, 'tammyjordan25913', 'scrypt:32768:8:1$S7j4dJwMA6kn7026$e74cd72f6dca64888028bc591d44f8f052f0e39e0b43874968972d670a6a42062ed4846533f0503a8b1f21e14ffd817b77bef99ae8ff25315225b221685a9ec8', 'vanessaharris@example.com', '01164207599', 'Nancy Smith', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (494, 496, 'AS6486794', 'Nancy Smith', '1948-12-13', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (497, 'angela7677671', 'scrypt:32768:8:1$gmy4MXMl4TZTl5CJ$b7684a0cebe348c1979b1d3a7e394e7d4f5f561300f0f9a3be1d60c29d28271282ebb4e19f2c228881d33b4384eb9685c4b7abbbc959e504065fc46279be9335', 'mary22@example.net', '01746802394', 'Albert Fuller', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (495, 497, 'ET0846723', 'Albert Fuller', '1970-02-09', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (718, 495, 17, '2026-04-26 11:49:07', 'Cancelled', 1.00, 'PNR202604163930206F');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (718, 1025.0, '2026-04-26 11:49:07', 'bKash', 'Refunded', 'TXN202604161149076531CC');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (719, 495, 14, '2026-03-29 11:49:07', 'Confirmed', 1.00, 'PNR202604161A769DAD');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (719, 1025.0, '2026-03-29 11:49:07', 'bKash', 'Completed', 'TXN20260416114907610BCB');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (498, 'opierce8296', 'scrypt:32768:8:1$ke0FjstaSxklnjlO$33cd9a8a412baf284bb8c867a2d18ca3b92e1ec06c5b07fcf936ab715638057e79e1c37e61ebcdde2fe832c98f63366458ab062dd635fd9d8556b2b1b8cd3629', 'omcfarland@example.org', '01124762938', 'Shane Clark', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (496, 498, 'LV0272890', 'Shane Clark', '1975-11-06', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (720, 496, 5, '2026-04-18 11:49:07', 'Confirmed', 1.00, 'PNR2026041697498273');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (720, 400.0, '2026-04-18 11:49:07', 'Nagad', 'Completed', 'TXN20260416114907D067EF');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (721, 496, 19, '2026-04-18 11:49:07', 'Confirmed', 1.00, 'PNR202604164A0F137B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (721, 295.0, '2026-04-18 11:49:07', 'Cash', 'Completed', 'TXN202604161149078329AE');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (722, 496, 11, '2026-05-01 11:49:07', 'Confirmed', 1.00, 'PNR20260416CF81EDB9');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (722, 1025.0, '2026-05-01 11:49:07', 'Credit Card', 'Completed', 'TXN20260416114907A3223B');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (499, 'timothy3426292', 'scrypt:32768:8:1$GXWePj8EAFVk5YCs$5dfa8a128a876c2fc34dd6d5d6be6b19868b4fbddfde4369356c410a5d649a076e305648cc1e7c71d2417b051464d297ac84b036d3e2b0dc8acf94a19b3bb10b', 'npatterson@example.net', '01787278801', 'Christine Hines', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (497, 499, 'QH3012449', 'Christine Hines', '1963-05-03', 'Female', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (500, 'tatepatricia65678', 'scrypt:32768:8:1$SR8izUoDV6rz7wKr$0abf789cbb2ee7e1cc31866a5982b0c724ee369349e992ff13b9e5f52b6760471964ba64300daca29039f907b4c467194559fea245b527d87dededbd6bbe747f', 'marytran@example.org', '01262677228', 'Angel Contreras', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (498, 500, 'WC5072277', 'Angel Contreras', '1997-09-03', 'Male', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (723, 498, 10, '2026-04-21 11:49:08', 'Confirmed', 1.00, 'PNR20260416DAB019F4');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (723, 1425.0, '2026-04-21 11:49:08', 'Credit Card', 'Completed', 'TXN2026041611490891489E');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (724, 498, 12, '2026-04-24 11:49:08', 'Confirmed', 1.00, 'PNR20260416F644A270');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (724, 1025.0, '2026-04-24 11:49:08', 'Credit Card', 'Completed', 'TXN202604161149087D3D8C');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (501, 'andersonshannon7015', 'scrypt:32768:8:1$lwacJwU8z0W4wsva$54501e296b27f47cea292acceddbaaae476870a732c6ce2af97eda5aa6f6633e2b7e6405ffe52e6ed857700f84e14cd8b60e4a3aec845e1b670b51ab83789ef0', 'ericfloyd@example.net', '01888605606', 'Teresa Valencia', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (499, 501, 'BT4620851', 'Teresa Valencia', '1991-01-16', 'Male', 'Bangladeshi');

INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (502, 'zwilson18528', 'scrypt:32768:8:1$KfOljXUUenkj0oxr$b08c72d963d6bfd96c3123031144b05ba2741edaf91aff44d0b61c7254a306d1af58649b68bf5a92479ed10973e6094c515b8863725c5ef6ec165d62478f81f5', 'jasminewall@example.org', '01999862620', 'Emily Anderson', 'Passenger', 1);
INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (500, 502, 'CA1920145', 'Emily Anderson', '1981-04-25', 'Female', 'Bangladeshi');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (725, 500, 1, '2026-03-30 11:49:08', 'Confirmed', 1.00, 'PNR202604167D89562B');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (725, 855.0, '2026-03-30 11:49:08', 'Credit Card', 'Completed', 'TXN202604161149084AECEB');
INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (726, 500, 17, '2026-03-17 11:49:08', 'Confirmed', 1.00, 'PNR20260416ACF61904');
INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (726, 1398.0, '2026-03-17 11:49:08', 'Nagad', 'Completed', 'TXN2026041611490812F6B6');
