SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryName = nb.primaryName
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Romance%' AND tr.averageRating > 7 AND nb.knownForTitles LIKE '%Say Anything... (1989)%'
ORDER BY tr.averageRating DESC, nb.primaryProfession ASC