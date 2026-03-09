CREATE TABLE stage (
    stage_id      INT AUTO_INCREMENT PRIMARY KEY,
    stage_name    VARCHAR(100) NOT NULL,
    capacity      INT NOT NULL
);

CREATE TABLE artist (
    artist_id    INT AUTO_INCREMENT PRIMARY KEY,
    artist_name  VARCHAR(100) NOT NULL,
    style        VARCHAR(50)  NOT NULL,
    mentor_id    INT NULL,
    CONSTRAINT fk_artist_mentor
        FOREIGN KEY (mentor_id) REFERENCES artist(artist_id)
);

CREATE TABLE concert (
    concert_id    INT AUTO_INCREMENT PRIMARY KEY,
    artist_id     INT NOT NULL,
    stage_id      INT NOT NULL,
    concert_date  DATE NOT NULL,
    concert_time  TIME NOT NULL,
    CONSTRAINT fk_concert_artist
        FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    CONSTRAINT fk_concert_stage
        FOREIGN KEY (stage_id) REFERENCES stage(stage_id)
);

CREATE TABLE buyer (
    buyer_id    INT AUTO_INCREMENT PRIMARY KEY,
    buyer_name  VARCHAR(100) NOT NULL
);

CREATE TABLE ticket (
    ticket_id   INT AUTO_INCREMENT PRIMARY KEY,
    concert_id  INT NOT NULL,
    buyer_id    INT NOT NULL,
    price       DECIMAL(8,2) NOT NULL,
    CONSTRAINT fk_ticket_concert
        FOREIGN KEY (concert_id) REFERENCES concert(concert_id),
    CONSTRAINT fk_ticket_buyer
        FOREIGN KEY (buyer_id) REFERENCES buyer(buyer_id)
);

INSERT INTO stage (stage_name, capacity) VALUES
('Main Stage',         5000),
('Secondary Stage',    3000),
('Acoustic Corner',     800),
('Jazz Club',          1200),
('Empty Stage',        1000);

INSERT INTO artist (artist_name, style, mentor_id) VALUES
('The Rockers',        'Rock',    NULL),  
('Electro Wave',       'Electro', NULL),
('Main Voices',        'Pop',     1),
('Jazz Masters',       'Jazz',    NULL),
('Indie Duo',          'Rock',    1),
('Solo Star',          'Pop',     NULL),
('Mentored Artist',    'Rock',    3),
('Unprogrammed Band',  'Rock',    NULL),
('Electro Night',      'Electro', 2),
('Folk Stories',       'Folk',    NULL),
('Rock Legacy',        'Rock',    1),
('Pop Rising',         'Pop',     3);

INSERT INTO concert (artist_id, stage_id, concert_date, concert_time) VALUES
(1, 1, DATE '2025-07-01', TIME '21:00:00'),
(2, 2, DATE '2025-07-01', TIME '19:00:00'),
(3, 1, DATE '2025-07-02', TIME '22:00:00'),
(4, 4, DATE '2025-07-01', TIME '18:00:00'),
(5, 3, DATE '2025-07-03', TIME '20:30:00'),
(6, 2, DATE '2025-07-02', TIME '16:00:00'),
(7, 1, DATE '2025-07-03', TIME '21:30:00'),
(1, 2, DATE '2025-07-04', TIME '14:00:00'),
(9, 2, DATE '2025-07-04', TIME '23:00:00'),
(10,3, DATE '2025-07-04', TIME '17:00:00'),
(11,1, DATE '2025-07-05', TIME '20:15:00'),
(12,4, DATE '2025-07-05', TIME '21:45:00');

INSERT INTO buyer (buyer_name) VALUES
('Alice'),
('Bob'),
('Charlie'),
('Diana'),
('Eve'),
('Frank'),
('Grace'),
('Heidi'),
('Ivan'),
('Judy');

INSERT INTO ticket (concert_id, buyer_id, price) VALUES
(1,  1,  59.90),
(1,  2,  59.90),
(2,  3,  39.90),
(3,  4,  49.90),
(3,  5,  49.90),
(5,  6,  29.90),
(7,  1,  59.90),
(8,  7,  45.00),
(9,  8,  42.50),
(9,  3,  42.50),
(10, 9, 25.00),
(11, 2, 60.00),
(11, 4, 60.00),
(12, 5, 55.00),
(12,10, 55.00);
