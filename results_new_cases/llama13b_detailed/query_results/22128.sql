SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tp.category NOT IN ('actor', 'producer')
AND tr.numVotes > 1000
AND tc.directors NOT IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'actor')
ORDER BY tr.averageRating DESC