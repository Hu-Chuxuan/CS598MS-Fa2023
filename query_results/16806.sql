SELECT * FROM (
	( SELECT rating.numvoters AS voteCount, rating.avgrating AS avgRatings
    from movielist join title_ratings ON movielist.titleid = title_ratings.movieID) RATINGS
   INNER JOIN ( select title.startyear as year, title.endyear as endyear, title.runtime as runTime
        from title_basics WHERE title.isadult=0 AND title.primarytitle='Gone With The Wind' ) TITLEBASEDYEARS
       LEFT OUTER JOIN (select title.genre as genreListing
                     from title_basic where title.primaryname LIKE 'Clint Eastwood%' OR title.originaltitle like '%Clint%') GENRES
             ON TITLEBASEDYEARS.startyear <= GENRES.genreListing && GENRES.genreListing < TITLEBASEDYEARS.endyear
         INNER JOIN cast CREW
               ON ((CREW.job IN ('director', 'writer'))AND CREW.castingId = TITLEBASEDYEARS.movieID))
          GROUP BY title_ratings.moviemovieid HAVING COUNT(*) > 1