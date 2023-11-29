SELECT t.title_basics.title, t.title_basics.primaryTitle, t.title_basics.originalTitle, t.title_basics.isAdult, t.title_basics.startYear, t.title_basics.endYear, t.title_basics.runtimeMinutes, t.title_basics.genres, t.title_ratings.averageRating, t.title_ratings.numVotes, n.name_basics.primaryName, n.name_basics.birthYear, n.name_basics.deathYear, n.name_basics.primaryProfession, n.name_basics.knownForTitles
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryName
WHERE t.primaryTitle LIKE '%Christopher Walken%'
AND t.genres LIKE '%Action%'
AND t.genres LIKE '%Adventure%'
AND t.startYear > 2010
AND t.endYear < 2020
AND n.birthYear > 1940
AND n.deathYear < 2020
AND n.primaryProfession = 'Actor'
AND n.knownForTitles LIKE '%Wonder Woman%'
AND n.knownForTitles LIKE '%Justice League%'
AND n.knownForTitles LIKE '%Batman v Superman: Dawn of Justice%'
ORDER BY t.averageRating DESC, n.primaryName ASC