SELECT * FROM title_basics
WHERE genre = 'Horror' AND
      EXISTS (SELECT 1 FROM title_ratings
              WHERE title_ratings.tconst = title_basics.tconst
              AND user_preference_history = ANY (SELECT nconst FROM name_basics NATURAL JOIN title_principals)
              AND averageRating > 6)
ORDER BY averageRating DESC