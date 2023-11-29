SELECT primaryTitle 
FROM title_basics 
WHERE tconst IN 
    (SELECT knownForTitles 
     FROM name_basics 
     WHERE primaryName = 'Kevin James')
AND startYear > 2009
AND titleType = 'movie'
AND tconst != 'tt1159705' -- exclude Paul Blart: Mall Cop (2009)
AND tconst != 'tt3450650'