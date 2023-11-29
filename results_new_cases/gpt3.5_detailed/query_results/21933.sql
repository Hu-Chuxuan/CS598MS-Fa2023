SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 1999
AND tb.tconst <> 'tt0133093' -- Exclude The Matrix from recommendations
AND (nb.knownForTitles LIKE '%tt0133093%' OR nb.knownForTitles LIKE '%tt0234215%') -- Consider actors known for The Matrix or A Walk to Remember
GROUP BY tb.primaryTitle, tb.startYear, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5