SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Bill Murray'
AND tb.titleType = 'movie'
AND tb.startYear <= 2022
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Hangover (2010)', 'Game Night (2018)', 'Date Night (2010)', 'Girls Trip (2017)', 'Step Brothers  (2008)', 'Bridesmaids  (2011)')
ORDER BY tr.averageRating DESC
LIMIT 10