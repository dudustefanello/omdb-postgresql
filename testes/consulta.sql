EXPLAIN (buffers, costs, timing, analyze)
SELECT movie_id, m.date, i.name,
    string_agg(p.name, ', ' ORDER BY c.position desc) AS cast
FROM movie_aliases_iso AS i
JOIN casts AS c USING(movie_id)
JOIN people AS p ON p.id = c.person_id
JOIN movies AS m ON m.id = movie_id
WHERE i.language = 'fr'
    AND m.date BETWEEN '1970-09-15' AND '1997-11-06'
GROUP BY movie_id, m.date, i.name
ORDER BY date DESC;