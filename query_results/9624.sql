SELECT * FROM (
    SELECT r.*, i.avg AS imdbAvg, i.numvotes AS imdbNumVote
       , d.imdbAvg AS tmdbAvg, d.numvotes AS tmdbNumvote
FROM title_ratings r INNER JOIN title_principals p ON r.tconst = p.tconst AND p.category='character'
INNER JOIN name_basic n ON p.nconst=n.nconst
INNER JOIN (SELECT tconst, avg(averageRating), count(*) from title_ratings group by tconst order by avg desc limit 1) i ON i.tconst =r.tconst
INNER JOIN (SELECT tconst, avg(ratingValue), count(*) from item where contentType="Movie" GROUP BY tconst ORDER BY AVG DESC LIMIT 1 ) j ON j.tconst =i.tconst
LEFT OUTER JOIN ( SELECT tconst, avg(ratingValue),count(*) from item where contentType="Movie" GROUP BY tconst ORDER BY AVG DESC LIMIT 1 ) k ON k.tconst =j.tconst
LEFT OUTER JOIN ( SELECT tconst, avg(ratingValue),count(*) from item where contentType="TVSeries" GROUP BY tconst ORDER BY AVG DESC LIMIT 1 ) l ON l.tconst =k.tconst
LEFT OUTER JOIN ( SELECT tconst, avg(ratingValue),count(*) from item where contentType="TVShow" GROUP BY tconst ORDER BY AVG DESC LIMIT 1 ) m ON m.tconst =l.tconst
WHERE i.imdbAvg IS NOT NULL OR j.tmdbAvg IS NOT NULL OR k.tmdbAvg IS NOT NULL OR l.tmdbAvg IS NOT NULL OR m.tmdbAvg IS NOT NULL
GROUP BY tconst, imdbAvg, imdbNumVote, tmdbAvg, tmdbNumvote
ORDER BY imdbAvg, tmdbAvg
LIMIT 20 