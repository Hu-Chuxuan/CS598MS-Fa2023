SELECT * FROM (
    SELECT title_principals.*, title_crew.*, title_basic.*, name_basic.*
       , AVG(rating)/numvotes AS avgratings
      FROM ((title_basic INNER JOIN name_basic ON (title_basics.nconst=name_basic.nconst))
          INNER JOIN title_crew ON (title_basics.tconst = title_crews.tconst)
            INNER JOIN title_principal ON (title_basics.tconst = title_prinicpal.tconst)
       WHERE (((title_basics.startyear <= @startyear AND (@endyear IS NULL OR title_basics.endyear >= @endyear))) OR (@endyear IS NOT NULL))
           AND (((title_basics.genre LIKE '%@genre%' ) OR ('@genre' IN (title_basics.genres))))
              AND (((title_basics.isadult='true') OR (@isadult IS NOT NULL AND @isadult = 'false'))))
         GROUP BY title_princaps.nconst ORDER BY avgratings DESC LIMIT @limit OFFSET @offset)
    LEFT OUTER JOIN (SELECT DISTINCT rating, tconst from title_ratings where tconst not like '' AND tconst!= '') rated ON rated.rating = title_rated.avgratings
GROUP BY title_princeps.nconst HAVING count(*) > 1
ORDER BY COUNT(*) desc limit @limit offset @offset