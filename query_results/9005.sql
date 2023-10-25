SELECT * FROM (
    SELECT t.*
       , r.numVotes AS ratingScore
    FROM ((title_ratings RIGHT JOIN title_basics B ON R.primaryTitle = B.titleId) LEFT JOIN name_basics NB ON B.primaryName = NB.nameID)
         INNER JOIN title_crew TC ON B.primaryName = TC.director OR B.primaryName = TC.writer