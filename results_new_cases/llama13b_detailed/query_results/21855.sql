SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tr.averageRating > 6 AND nb.primaryProfession IN ('actor', 'writer')
AND (
    (tb.title = 'Dumb and Dumber (1994)' OR tb.title = 'Superbad (2007)')
    OR (
        tb.title IN (SELECT title FROM title_basics WHERE primaryProfession IN ('actor', 'writer') AND title NOT IN (SELECT title FROM title_basics WHERE primaryProfession IN ('actor', 'writer') AND title = 'Dumb and Dumber (1994)') AND title NOT IN (SELECT title FROM title_basics WHERE primaryProfession IN ('actor', 'writer') AND title = 'Superbad (2007)'))
    )
)
AND NOT EXISTS (
    SELECT 1 FROM title_principals tp
    WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'Blacksmith'
)
ORDER BY tr.averageRating DESC