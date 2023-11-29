SELECT * FROM title_basics
WHERE genres = 'Action,Adventure,Comedy'
AND (
    (primaryTitle LIKE '%Jumanji%' AND startYear = 2017)
    OR (primaryTitle LIKE '%Baywatch%' AND startYear = 2017)
    OR (primaryTitle LIKE '%Rampage%' AND startYear = 2018)
)
ORDER BY averageRating DESC, numVotes DESC