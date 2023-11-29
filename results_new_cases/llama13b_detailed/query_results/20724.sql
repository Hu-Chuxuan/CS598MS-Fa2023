SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror' OR tb.genres LIKE '%Thriller'
AND nb.primaryProfession LIKE '%Actor'
AND nb.knownForTitles LIKE '%District 9 (2009)' OR nb.knownForTitles LIKE '%Aliens  (1986)' OR nb.knownForTitles LIKE '%Life  (2017)'
ORDER BY tr.averageRating DESC, tb.startYear DESC