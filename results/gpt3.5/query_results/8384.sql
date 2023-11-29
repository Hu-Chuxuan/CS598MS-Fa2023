SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' 
AND tb.startYear > 2000
AND tb.primaryTitle NOT IN ('The Ring', 'The Babadook')
AND tb.primaryTitle NOT LIKE '%Japanese%'
AND tb.primaryTitle NOT IN ('The Sixth Sense', 'The Others', 'Get Out', 'The Babadook')
ORDER BY tr.averageRating DESC
LIMIT 5