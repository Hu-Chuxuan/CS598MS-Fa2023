SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Drama%' 
AND startYear = 1999 
AND tconst NOT IN 
    (SELECT tconst 
     FROM title_basics 
     WHERE primaryTitle = 'Fight Club'
     AND startYear = 1999)
AND tconst NOT IN 
    (SELECT knownForTitles 
     FROM name_basics 
     WHERE primaryName = 'Brad Pitt')
AND tconst NOT IN 
    (SELECT knownForTitles 
     FROM name_basics 
     WHERE primaryName = 'Edward Norton')
AND tconst NOT IN 
    (SELECT tconst 
     FROM title_basics 
     WHERE primaryTitle = 'Star Wars' 
     AND startYear = 1977)
LIMIT 5