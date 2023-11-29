SELECT * FROM title_basics WHERE startYear >= $start AND startYear <= $end ORDER BY averageRating DESC LIMIT $limit
FROM title_rating AS tr JOIN title_basic TB ON tr.tconst = TB.tconst
WHERE TB.isAdult == '1' OR TB.isAdult == '0'
AND TB.primaryTitle LIKE '%$input%'
AND TB.genre IN ('%$preferences')
GROUP BY TB.tconst
ORDER BY TB.averageRating DESC
LIMIT $limit OFFSET ($offset)