SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Monster%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%There%27s%20Something%20About%20Mary%20(1998)%'
AND tr.averageRating > 6.5
ORDER BY tr.averageRating DESC, tb.startYear ASC