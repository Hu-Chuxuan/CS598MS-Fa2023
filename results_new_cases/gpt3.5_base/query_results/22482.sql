SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND (primaryTitle <> 'Pineapple Express  (2008)' OR primaryTitle <> 'Super Troopers (2001)')
AND primaryTitle NOT IN ('The Incredibles (2004)', 'Super Troopers (2001)', 'Pineapple Express  (2008)')
ORDER BY averageRating DESC
LIMIT 5