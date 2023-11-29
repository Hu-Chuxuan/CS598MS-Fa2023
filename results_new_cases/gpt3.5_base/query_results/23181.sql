SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres IN 
    (SELECT genres
     FROM title_basics
     WHERE primaryTitle IN ('The Sixth Sense', 'The Village'))
AND tb.startYear < 2004
AND tb.tconst NOT IN ('tt0287717', 'tt0172495')  -- Excluding The Sixth Sense and The Village
ORDER BY tr.averageRating DESC
LIMIT 5