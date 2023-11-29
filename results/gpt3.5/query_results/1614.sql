SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres AS genre
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('Cold Mountain  (2003)', 'Changeling  (2008)', "You're Not You (2014)", 'The Black Dahlia  (2006)', 'Million Dollar Baby (2004)')
AND (tb.primaryTitle LIKE '%Angelina Jolie%' OR tb.primaryTitle LIKE '%Hilary Swank%')
ORDER BY tr.averageRating DESC, tr.numVotes DESC