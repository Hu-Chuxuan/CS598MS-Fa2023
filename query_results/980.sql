SELECT t1.* FROM (title_basics as tb INNER JOIN title_ratings AS tr ON tb.primaryTitle = tr.primaryTitle AND tr.numVotes >= 7 AND tr.averageRating > 8) LEFT OUTER JOIN (name_basics as nb INNER JOIN title_crew AS tc ON nb.primaryName = tc.directors OR nb.primaryName IN(tc.writers)) WHERE ((tb.isAdult=TRUE) OR (nb.category='Actor') OR (nb.job='Writer')) GROUP BY t1.primaryTitle ORDER by t1.startYear ASC LIMIT 2