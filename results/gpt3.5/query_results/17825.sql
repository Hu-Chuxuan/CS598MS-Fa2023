SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.startYear >= 2000
AND tb.tconst != 'tt0253754'  -- Exclude the movie already seen 'Star Trek: Nemesis'
ORDER BY tr.averageRating DESC
LIMIT 5