SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Horror%'
AND n.primaryProfession LIKE '%Actor%'
AND n.knownForTitles LIKE '%The Lord of the Rings: The Fellowship of the Ring (2001)%'
AND n.knownForTitles LIKE '%Avatar (2009)%'
AND n.knownForTitles NOT LIKE '%Pirates of the Caribbean %'
ORDER BY t.startYear DESC, t.runtimeMinutes DESC