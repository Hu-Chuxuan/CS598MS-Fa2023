SELECT * FROM
( SELECT rating AS rtg, count(*) as cnt from title_ratings WHERE genre = "comedy" GROUP BY rtg )
INNER JOIN
( SELECT tc.*, nb.* from title_crew tc INNER JOIN name_basics nb ON tc.director = nb.primaryName )
ON ((rtg < 8 AND userPreferHistory LIKE "%[%[r%]]%" OR rtg > 6))
AND (nb.category!= '' AND nb.job <> '')
GROUP BY rtg