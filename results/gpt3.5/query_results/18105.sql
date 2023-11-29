SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Dwayne The Rock Johnson'
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('The Game Plan (2007)', 'Central Intelligence (2016)', 'Jumanji (2017)', 'The Scorpion King (2002)')
ORDER BY tr.numVotes DESC
LIMIT 10