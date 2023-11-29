SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
AND (
    tr.averageRating > 6 AND
    tr.numVotes > 1000 AND
    nb.primaryProfession LIKE '%actor%'
)
AND (
    tb.genres LIKE '%Comedy%' AND
    tb.genres LIKE '%Adventure%'
)
AND (
    tb.startYear BETWEEN 1990 AND 2009 AND
    tb.endYear IS NULL
)
AND (
    NOT EXISTS (
        SELECT 1 FROM title_principals tp
        WHERE tp.tconst = tb.tconst AND
              tp.category = 'actor' AND
              tp.job NOT IN ('producer', 'writer')
    )
)
AND (
    NOT EXISTS (
        SELECT 1 FROM title_principals tp
        WHERE tp.tconst = tb.tconst AND
              tp.category = 'director'
    )
)
AND (
    NOT EXISTS (
        SELECT 1 FROM title_principals tp
        WHERE tp.tconst = tb.tconst AND
              tp.category = 'writer'
    )
)
AND (
    NOT EXISTS (
        SELECT 1 FROM title_crew tc
        WHERE tc.tconst = tb.tconst AND
              tc.directors NOT IN ('nm0005690', 'nm0374658')
    )
)
AND (
    NOT EXISTS (
        SELECT 1 FROM title_crew tc
        WHERE tc.tconst = tb.tconst AND
              tc.writers NOT IN ('nm0085156')
    )
)
ORDER BY tr.averageRating DESC, tb.startYear DESC