SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
WHERE (tb.genres LIKE '%Disney%' OR tb.genres LIKE '%Family%')
AND tb.primaryTitle NOT IN ('Daddy\'s Girl (1996)', 'Daddy\'s Little Girls (2007)', 'Death Becomes Her (1992)', 'Ghostbusters (2016)', 'Moana (2016)', 'Ghostbusters (1984)', 'Daddy\'s Home (2015)')
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 5