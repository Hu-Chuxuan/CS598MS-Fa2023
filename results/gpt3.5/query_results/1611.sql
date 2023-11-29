SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND NOT tb.genres LIKE '%Drama%'
AND NOT tb.genres LIKE '%Romance%'
AND NOT tb.genres LIKE '%Thriller%'
AND tr.averageRating > 6.5
AND tr.numVotes > 500
AND tb.tconst NOT IN ('tt0091474', 'tt0283160', 'tt0114369', 'tt0252487')