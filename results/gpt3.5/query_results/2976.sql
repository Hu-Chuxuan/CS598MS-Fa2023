SELECT tb.primaryTitle AS Movie_Title, tb.startYear AS Release_Year, tb.genres AS Genres, tr.averageRating AS Average_Rating, tr.numVotes AS Num_Votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle = 'Your Name' AND tb.startYear = 2016