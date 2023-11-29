SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2020
AND tb.primaryTitle NOT IN ('Talladega Nights: The Ballad of Ricky Bobby (2006)', 'The Hangover (2009)', 'Neighbors  (2014)')
ORDER BY tr.averageRating DESC
LIMIT 5