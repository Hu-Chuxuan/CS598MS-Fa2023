SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Superpower%'
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Wonder Woman (2017)', 'Iron Man 3', 'Batman v Superman: Dawn of Justice (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5