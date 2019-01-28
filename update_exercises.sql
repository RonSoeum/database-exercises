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

SELECT 'All albums in your table.' AS 'Info';
SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT 'Updated: All albums sales to be 10 times more popular.' AS 'Info';
SELECT * FROM albums;


SELECT 'All albums released before 1980.' AS 'Info';
SELECT * FROM albums where release_date < 1980;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT 'Updated: All albums released before 1980 to 1800.' AS 'Info';
SELECT * FROM albums where release_date = 1800;


SELECT 'All albums by Michael Jackson.' AS 'Info';
SELECT * FROM albums where artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'Updated: All albums by Michael Jackson to Peter Jackcon.' AS 'Info';
SELECT * FROM albums where artist = 'Peter Jackson';