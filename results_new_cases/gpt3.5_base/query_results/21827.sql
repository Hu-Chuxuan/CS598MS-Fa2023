SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 2010
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0361748', 'tt3569230', 'tt0457913', 'tt7772580')