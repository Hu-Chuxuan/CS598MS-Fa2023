SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND (tb.primaryTitle LIKE '%The Exorcist%' OR tb.primaryTitle LIKE '%The Evil Dead%')
AND tb.startYear <= 1981
AND (tb.primaryTitle NOT IN ('Zombieland (2009)', 'Sharknado', 'Shaun of the Dead (2004)')
OR tb.startYear > 1981)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5