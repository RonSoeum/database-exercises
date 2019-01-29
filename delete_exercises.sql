USE codeup_test_db;

-- Write SELECT statements for:
-- -- Albums released after 1991
-- -- Albums with the genre 'disco'
-- -- Albums by 'Whitney Houston' (...or maybe an artist of your choice)


-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.

SELECT name AS 'Albums released after 1991.', release_date
FROM albums
WHERE release_date > 1991;

DELETE from albums
WHERE release_date > 1991;

--

SELECT name AS 'Albums with the genre ''disco''.', genre
FROM albums
WHERE genre = 'disco';

DELETE from albums
WHERE genre = 'disco';

--

SELECT artist, name AS 'Albums by ''Led Zeppelin''.'
FROM albums
WHERE artist = 'Led Zeppelin';

DELETE from albums
WHERE artist = 'Led Zeppelin';

--

SELECT artist, name AS 'All Albums left after delete exercise.', release_date, sales, genre
FROM albums