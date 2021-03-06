USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL,
    name  VARCHAR(255) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales FLOAT,
    genre VARCHAR(255),
    PRIMARY KEY (id)
);

-- ==============================================

DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_first_name VARCHAR(50) DEFAULT 'NONE',
    author_last_name  VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    PRIMARY KEY (id)
);