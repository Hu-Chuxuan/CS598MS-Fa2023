SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle LIKE '%WOW BLAST FROM THE PAST I HAVE SEEN THAT AND I LIKED IT A LONG TIME AGO WITH MY MOM%'
OR primaryTitle IN ('Garden State', 'Dazed and Confused', 'Seven Brides for Seven Brothers', 'It\'s a Wonderful Life', 'It Happened at the World\'s Fair')
ORDER BY averageRating DESC