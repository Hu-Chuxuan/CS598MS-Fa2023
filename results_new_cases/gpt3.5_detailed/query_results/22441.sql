SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Girls Trip (2017)', 'How High (2001)', 'The Hangover (2009)', 'Super Troopers (2001)', 'Pineapple Express  (2008)', 'Hangover  (2014)', 'Super Troopers 2 (2018)')
ORDER BY tr.averageRating DESC
LIMIT 10