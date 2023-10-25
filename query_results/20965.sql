SELECT * FROM
( SELECT tc.*,
          rr.rating AS ratingRecommendedMovie,
          tc.titleType as typeOfMoviesToBeRecommendation,
          sum((n.primaryName = 'Tony Stark' OR n.primaryName = 'Natasha Romanoff') AND (rcs.job = "Actor" OR rcs.job="Director")) AS numberOfActorsInTheMovie,
           case when count(*) > 6 then sum(case when rcms.characters=1 THEN 1 ELSE 0 END)/count(*) else NULL end AS numberOfCharactersInTheMovie
        from title_basics tb
       inner join title_ratings tr ON tb.id =tr.movieID
         left outer join name_basics nb ON tb.nameID=nb.id
         LEFT OUTER JOIN role_casting_movies rcm ON nb.id = rcm.actorID
         LEFT OUTER JOIN role_character_movies rcm ON nb.id = rcm.actressID
             INNER JOIN role_casting_movies rcs ON rbm.directorID = rcs.actorID
              INNER JOIN role_character_movies rcm ON rbm.actorID = rcm.actressID
                WHERE tb.isAdult='TRUE'
                    GROUP BY tb.id ) A
INNER JOIN (select * from title_ratings where isAdult='FALSE' order by avgRating desc limit 20) B ON A.movieID =B.movieID
WHERE (typeOfMoviesToBeRecommendation = 'Marvel Movies')AND ((numberOfActorsInTheMovie>2))AND((numberOfCharactersInTheMovie<9))