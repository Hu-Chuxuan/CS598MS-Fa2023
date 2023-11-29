SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Superhero%' 
AND tb.primaryTitle NOT IN ('Terminator 2: Judgment Day (1991)', 'Star Wars: Episode I – The Phantom Menace (1999)') 
ORDER BY tr.averageRating DESC