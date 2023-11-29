SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Superhero%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Terminator 2: Judgment Day (1991)%'
AND nb.knownForTitles LIKE '%Star Wars: Episode I – The Phantom Menace (1999)%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC