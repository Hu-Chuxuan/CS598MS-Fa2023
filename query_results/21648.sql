SELECT * FROM ( SELECT title_basics.*, rating.averageRating AS avg_rating
FROM title_ratings JOIN title_basics ON title_basics.titleId = rating.titleId ) as tb INNER JOIN ( SELECT CONCAT(primaryName,' ',category) AS character_name
FROM title_principals WHERE category='Actress' AND job IN ('Actor','Director') GROUP BY CONCAT(primaryName,' ',category)) as c ON tb.characterId=c.characer_id