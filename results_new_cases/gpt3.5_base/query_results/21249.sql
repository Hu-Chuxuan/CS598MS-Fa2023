SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Rain Man' AND startYear = 1988)
AND tb.primaryTitle NOT IN ('Rain Man', 'The Break-Up (2006)', 'Love Happens', 'Friends  (1993)')
AND nb.primaryName = 'Dustin Hoffman'
AND tr.averageRating >= 7
AND tb.startYear <= 1988
ORDER BY tr.averageRating DESC, tb.startYear ASC
LIMIT 5