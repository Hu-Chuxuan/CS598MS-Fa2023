SELECT * FROM
( SELECT tb.*, nb.*, tc.*, nc.*, tr.*, ncr.* from title_basic as tb INNER JOIN name_base as nb ON tb.`primaryTitle` = nb.`nconst` AND tb.`titleType` ='movie', 
	title_rating AS tr RIGHT OUTER JOIN title_crew as tc USING `director` WHERE tc.`averageRating` >.98 GROUP BY tb.`id`,nb.`name`,tb.`year`,tr.`avg`,tr.`numvoters` LEFT OUTER JOIN name_character as ncr ON tc.`job`=nc.`category` AND tc.`ordering`=nc.`job` ORDER BY tr.`avg` DESC LIMIT 1 ) AS movies
WHERE rating <.6