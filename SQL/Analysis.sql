CREATE TABLE spotify_clean AS
SELECT *
FROM spotify_raw
WHERE popularity IS NOT NULL
AND tempo IS NOT NULL
AND duration_ms > 0

SELECT COUNT(*) FROM spotify_clean;

SELECT COUNT(*)
FROM spotify_clean
WHERE popularity IS NULL
OR tempo IS NULL
OR duration_ms IS NULL;

SELECT*
FROM spotify_clean
WHERE duration_ms <= 0
OR tempo <= 0
OR popularity < 0 or popularity > 100;

SELECT * FROM spotify_clean



