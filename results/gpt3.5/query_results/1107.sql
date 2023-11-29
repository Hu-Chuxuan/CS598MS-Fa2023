SELECT tb2.tconst, tb2.primaryTitle, tb2.startYear, tb2.runtimeMinutes, tb2.genres, tr.averageRating
FROM title_basics tb1
JOIN title_principals tp ON tb1.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
JOIN title_crew tc ON tb1.tconst = tc.tconst
JOIN title_basics tb2 ON tb2.tconst = ANY(string_to_array(nb.knownForTitles, ','))
JOIN title_ratings tr ON tb2.tconst = tr.tconst
WHERE tb1.primaryTitle = 'Boondock Saints'
AND tc.directors = ANY(string_to_array(nb.knownForTitles, ','))
AND tb2.titleType = 'movie'
AND NOT 'Horror' = ANY(string_to_array(tb2.genres, ','))
AND tb2.primaryTitle != 'Overnight'
ORDER BY tr.averageRating DESC
LIMIT 5