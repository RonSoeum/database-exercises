USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
-- --
-- -- All albums in your table.
-- -- All albums released before 1980
-- -- All albums by Michael Jackson


-- After each SELECT add an UPDATE statement to:
--
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'

SELECT name AS 'All albums in your table.', sales
FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT name AS 'Updated: All albums sales to be 10 times more popular.', sales
FROM albums;

--

SELECT name AS 'All albums released before 1980.',
        release_date
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT name AS 'Updated: All albums released before 1980 changed to 1800.',
        release_date
FROM albums
WHERE release_date = 1800;

--

SELECT artist,
        name AS 'All albums by Michael Jackson.'
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT artist,
        name AS 'Updated: All albums by Michael Jackson changed to Peter Jackcon.'
FROM albums
WHERE artist = 'Peter Jackson';