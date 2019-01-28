USE codeup_test_db;

-- Write SELECT statements for:
-- -- Albums released after 1991
-- -- Albums with the genre 'disco'
-- -- Albums by 'Whitney Houston' (...or maybe an artist of your choice)


-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.

SELECT 'Albums released after 1991.' AS 'Info';
DELETE from albums WHERE release_date > 1991;



SELECT 'Albums with the genre ''disco''.' AS 'Info';
DELETE from albums WHERE genre = 'disco';



SELECT 'Albums by ''Whitney Houston''.' AS 'Info';
DELETE from albums WHERE artist = 'Whitney Houston';