SELECT * 
FROM title_basics 
WHERE titleType = 'Horror' 
AND (originalTitle LIKE '%Annabelle%' 
OR originalTitle LIKE '%The Conjuring%') 
AND genres LIKE '%Horror%' 
AND NOT (directors LIKE '%Sandra Bullock%' 
OR directors LIKE '%Romantic Comedy%') 
AND NOT (primaryProfession LIKE '%Actress%' 
OR primaryProfession LIKE '%Comedy%') 
AND NOT (knownForTitles LIKE '%Romantic Comedy%' 
OR knownForTitles LIKE '%Comedy%') 
AND NOT (category LIKE '%Romance%' 
OR category LIKE '%Comedy%') 
AND job LIKE '%Actress%' 
AND characters LIKE '%Horror%') 
AND (numVotes > 100000 
OR averageRating > 7) 
AND startYear > 2010 
AND endYear < 2020