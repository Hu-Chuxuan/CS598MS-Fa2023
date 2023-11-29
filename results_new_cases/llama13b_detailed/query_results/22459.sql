SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror'
AND nb.primaryProfession LIKE '%Actor'
AND nb.knownForTitles LIKE '%Girls Trip (2017)%'
AND nb.knownForTitles LIKE '%It (1990)%'
AND nb.knownForTitles LIKE '%Super Troopers (2001)%'
AND nb.knownForTitles LIKE '%Super Troopers 2 (2018)%'
AND nb.knownForTitles LIKE '%Pineapple Express  (2008)%'
AND nb.knownForTitles LIKE '%Bad Boys  (1995)%'
ORDER BY tr.averageRating DESC