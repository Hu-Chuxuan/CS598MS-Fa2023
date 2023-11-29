SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.startYear = 1982
AND tb1.genres LIKE '%Sci-Fi%'
AND tb1.tconst <> 'tt0083658' -- Exclude Blade Runner (1982)
AND tb1.tconst NOT IN ('tt0293976', 'tt0808371') -- Exclude User Preference History
ORDER BY tr.averageRating DESC
LIMIT 5