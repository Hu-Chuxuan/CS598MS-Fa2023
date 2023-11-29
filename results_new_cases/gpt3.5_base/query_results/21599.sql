SELECT tb1.primaryTitle 
FROM title_basics tb1 
JOIN title_basics tb2 ON tb1.genres = tb2.genres 
WHERE tb2.primaryTitle = 'Peter Rabbit' 
AND tb1.startYear > 2010 
AND tb1.primaryTitle != 'Peter Rabbit'
AND tb1.primaryTitle NOT IN ('The Martian', 'Mission to Mars')
LIMIT 5