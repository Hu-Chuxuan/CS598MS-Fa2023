SELECT * FROM
(title_basics tb UNION ALL select tc.primaryTitle as Title, count(*) AS votes from (select distinct titleType, primaryTitle, titleID from title_basic) tc GROUP BY titleType, primaryTitle ORDER BY votes DESC LIMIT 10 ) AS T WHERE T.Title LIKE "The" OR T.Title LIKE "%Mission%" AND T.Title NOT IN ("The Godfather", "The Shawshank Redemption")