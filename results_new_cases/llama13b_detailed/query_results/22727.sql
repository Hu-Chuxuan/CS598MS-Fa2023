SELECT t.title_basics.title, t.title_basics.primaryTitle, t.title_basics.originalTitle, t.title_basics.genres, c.name, c.knownForTitles
FROM title_basics t
JOIN name_basics n ON t.title_basics.primaryTitle = n.primaryName
JOIN title_ratings tr ON t.title_basics.tconst = tr.tconst
JOIN title_crew tc ON t.title_basics.tconst = tc.tconst
JOIN name_basics c ON tc.directors = c.nconst OR tc.writers = c.nconst
WHERE tr.averageRating > 7 AND tr.numVotes > 1000
AND (t.title_basics.genres LIKE '%Comedy%' OR t.title_basics.genres LIKE '%Crime%' OR t.title_basics.genres LIKE '%Thriller%')
AND c.knownForTitles LIKE '%Fight Club (1999)%'
AND c.knownForTitles LIKE '%Seven  (1995)%'
AND c.knownForTitles LIKE '%Snatch  (2000)%'
ORDER BY tr.averageRating DESC