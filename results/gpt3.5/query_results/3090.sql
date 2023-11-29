SELECT tb2.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb1
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics AS nb1 ON tp1.nconst = nb1.nconst
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_basics AS tb2 ON tb1.tconst = tb2.tconst
JOIN title_principals AS tp2 ON tb2.tconst = tp2.tconst
JOIN name_basics AS nb2 ON tp2.nconst = nb2.nconst
WHERE tb1.primaryTitle = 'Kick-Ass' 
AND tb2.titleType = 'movie'
AND tr.numVotes > 1000
AND nb2.primaryName != 'nb1.primaryName'
AND tr.averageRating >= 7.5
AND nb2.primaryProfession LIKE '%actor%'
AND nb2.knownForTitles NOT LIKE '%tt0468569%'
AND nb2.knownForTitles NOT LIKE '%tt0451279%'
AND nb2.knownForTitles NOT LIKE '%tt0974015%'
AND nb2.knownForTitles NOT LIKE '%tt0438973%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5