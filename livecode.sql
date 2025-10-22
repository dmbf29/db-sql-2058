-- Livecode Queries

-- 1. List all customers (names + email), ordered alphabetically (no extra information)
-- (Should yield 59 results)
-- SELECT first_name, last_name, email
-- FROM customers
-- ORDER BY first_name ASC;

-- 2. Count the number of tracks that are shorter than 2 minutes
-- (Should yield 93 results)
-- SELECT COUNT(*) FROM tracks
-- WHERE milliseconds < 2 * 60000;


-- 3. List all 'Rock' tracks (only names)
-- (Should yield 1297 results)
-- SELECT tracks.name FROM tracks
-- JOIN genres ON tracks.genre_id = genres.id
-- WHERE genres.name LIKE "rock";


-- 4. List tracks (Name + Composer) of the 'Classical' playlist
-- (Should yield 75 results)
-- SELECT tracks.name, tracks.composer FROM tracks
-- JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
-- JOIN playlists ON playlists.id = playlist_tracks.playlist_id
-- WHERE playlists.name = "Classical";

-- 5. Which customers (first_name, last_name) has spent the most money and how much?
-- (Helena Holý should be first with 49.62)
-- SELECT first_name, last_name, SUM(total) s FROM customers
-- JOIN invoices ON customer_id = customers.id
-- GROUP BY customers.id
-- ORDER BY s DESC;

-- 6. List the 10 artists most listed in all playlists
-- (First result should be Iron Maiden with 516 results)
-- SELECT artists.name, COUNT(*) FROM artists
-- JOIN albums ON artist_id = artists.id
-- JOIN tracks ON album_id = albums.id
-- JOIN playlist_tracks ON track_id = tracks.id
-- GROUP BY artists.id
-- ORDER BY COUNT(*) DESC LIMIT 10;


-- 7. List the tracks(composer + name) which have been purchased at least twice, ordered by number of purchases
-- (Should yield 265 results Steve Harris - The Trooper having 5 purchases)

SELECT tracks.composer, tracks.name,
COUNT(*) purchases
FROM tracks
JOIN invoice_lines ON tracks.id = invoice_lines.track_id
HAVING purchases >= 2
GROUP BY tracks.id
ORDER BY purchases DESC;
