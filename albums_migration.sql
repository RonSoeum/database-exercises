USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT 'NONE',
    name  VARCHAR(100) NOT NULL,
    release_date DATE,
    sales FLOAT,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);