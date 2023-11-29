SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Mel Gibson' 
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('The Shawshank Redemption (1994)', 'American History X (1998)', 'The Green Mile  (1999)', 'Changeling  (2008)', 'The Help  (2011)', 'A Beautiful Mind  (2001)')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5