SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Thriller%'
AND tr.averageRating >= 7.5
AND (nb.primaryName = 'Brad Pitt' OR nb.primaryName = 'Morgan Freeman')
AND tb.primaryTitle <> 'Seven'
AND tb.primaryTitle NOT IN ('Frozen (2013)', 'Coco  (2017)', 'Finding Dory (2016)')
GROUP BY tb.primaryTitle, tb.startYear, tr.averageRating
ORDER BY tr.numVotes DESC
LIMIT 5