SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Drama%' 
AND (primaryTitle != 'The Martian' OR primaryTitle != 'Interstellar') 
AND (primaryTitle IN (SELECT primaryTitle 
                      FROM title_basics 
                      WHERE genres LIKE '%Sci-Fi%')
     OR primaryTitle IN (SELECT primaryTitle 
                         FROM title_basics 
                         WHERE genres LIKE '%Thriller%'))
ORDER BY averageRating DESC 
LIMIT 5