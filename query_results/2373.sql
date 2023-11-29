SELECT * FROM title WHERE titleType='movie' AND ((startYear BETWEEN 1990 AND 1999))
AND (((genre = 'Drama') OR (genre IN ('Crime','Suspense'))))