SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.tconst IN 
    (SELECT tp.tconst
     FROM title_principals tp
     JOIN title_basics tb1 ON tp.tconst = tb1.tconst
     WHERE tp.nconst IN 
         (SELECT tp1.nconst
          FROM title_principals tp1
          JOIN title_basics tb2 ON tp1.tconst = tb2.tconst
          WHERE tb2.primaryTitle = 'Saving Private Ryan' AND tb2.startYear = 1998)
     AND tb1.primaryTitle NOT IN ('Saving Private Ryan', 'Forever Young', 'Powder')
     AND tb1.titleType = 'movie')
ORDER BY tr.averageRating DESC
LIMIT 5