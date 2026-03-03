CREATE TABLE editor (
    editor_id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE platform (
    platform_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE game (
    game_id     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(200) NOT NULL,
    price       DECIMAL(6,2) NOT NULL,
    stock       INT NOT NULL DEFAULT 0,
    editor_id   INT UNSIGNED NOT NULL,
    platform_id INT UNSIGNED NOT NULL,

    CONSTRAINT fk_game_editor
        FOREIGN KEY (editor_id)
        REFERENCES editor (editor_id),

    CONSTRAINT fk_game_platform
        FOREIGN KEY (platform_id)
        REFERENCES platform (platform_id)
);


INSERT INTO editor (name) VALUES
    ('Capcom'),
    ('Square Enix'),
    ('Electronic Arts'),
    ('Bandai Namco'),
    ('Bethesda'),
    ('Rockstar Games'),
    ('Sega'),
    ('Blizzard Entertainment'),
    ('CD Projekt'),
    ('2K Games');

INSERT INTO platform (name) VALUES
    ('PS4'),
    ('Xbox One'),
    ('Mobile'),
    ('PC'),
    ('Stadia'),
    ('Steam Deck');

INSERT INTO game (title, price, stock, editor_id, platform_id) VALUES
    ('FIFA 21',            9.99,  3, 3, 1),
    ('Resident Evil 7',   29.99, 15, 1, 1),
    ('Final Fantasy XV',  59.99,  8, 2, 2),
    ('Candy Crush Saga',   0.99, 50, 3, 3),
    ('Monster Hunter',    39.99, 20, 1, 2),
    ('Elden Ring',        69.99, 12, 4, 4),
    ('Skyrim',            49.99,  5, 5, 4),
    ('GTA V',             39.99, 25, 6, 4),
    ('Tekken 7',          19.99, 18, 4, 1),
    ('Doom Eternal',      59.99,  2, 5, 2),
    ('Fallout 4',         14.99,  7, 5, 4),
    ('GTA Online',         0.00, 99, 6, 1),
    ('Yakuza 0',          24.99, 10, 7, 1),
    ('Total War',         44.99,  6, 7, 4),
    ('Overwatch',         39.99, 30, 8, 4),
    ('Diablo III',        19.99,  9, 8, 4),
    ('The Witcher 3',     39.99, 14, 9, 4),
    ('Cyber Quest',       59.99,  4, 9, 2),
    ('NBA 2K26',          69.99, 11, 10, 1),
    ('Borderlands 3',     29.99, 13, 10, 2),
    ('Transport Fever 2', 34.99,  6, 7, 4),
    ('Rocket League',     19.99, 22, 3, 1);

