SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Family%' OR tb.genres LIKE '%Animation%' OR tb.genres LIKE '%Kids%')
AND (tb.primaryTitle NOT IN ('Bolt (2008)', 'We Bought a Zoo', 'Zootopia', "Kiki's Delivery Service (1989)"))
AND tb.startYear >= 1980
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10