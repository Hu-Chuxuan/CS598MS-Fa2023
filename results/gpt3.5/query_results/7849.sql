SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Family%'
AND tr.averageRating >= 6.5
AND tb.primaryTitle NOT IN ('The Mighty Ducks (1992)', 'The Sandlot (1993)', 'A Knight in Camelot', 'The Karate Kid (1984)')
ORDER BY tr.averageRating DESC
LIMIT 5