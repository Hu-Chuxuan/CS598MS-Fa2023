SELECT t.title, t.startYear, t.runtimeMinutes, t.genres, c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryName = n.nconst
JOIN title_crew c ON t.tconst = c.tconst
WHERE t.genres = 'Drama' AND tr.averageRating > 7 AND n.birthYear > 1980 AND n.knownForTitles NOT LIKE '%Notebook%'
ORDER BY tr.averageRating DESC, t.startYear DESC