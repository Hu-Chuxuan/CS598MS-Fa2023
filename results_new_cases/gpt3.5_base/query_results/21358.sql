SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres IN 
    (SELECT genres 
     FROM title_basics 
     WHERE primaryTitle = 'The Evil Dead' AND startYear = 1981)
AND tb.primaryTitle NOT IN ('City of Angels', 'Dumb and Dumber', 'Pretty Woman')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5