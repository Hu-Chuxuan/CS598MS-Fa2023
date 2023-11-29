SELECT * FROM title_basics tb
INNER JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Romance%'
AND nb.knownForTitles LIKE '%A Fish Called Wanda (1988)%'
AND nb.knownForTitles LIKE '%Trading Places (1983)%'
AND tr.averageRating > 6
ORDER BY tr.averageRating DESC