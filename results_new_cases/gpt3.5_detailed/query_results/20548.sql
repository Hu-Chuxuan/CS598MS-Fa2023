SELECT tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('Me Before You', 'The Shawshank Redemption (1994)', 'Thor: Ragnarok (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5