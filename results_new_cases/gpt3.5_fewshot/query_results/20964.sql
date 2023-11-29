SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.startYear > 2015
AND tb.startYear < 2020
AND tb.tconst != 'tt5463162'
AND FIND_IN_SET('Action', tb.genres) > 0
AND tb.tconst NOT IN ('tt4154756', 'tt0110475', 'tt0389860', 'tt0389860', 'tt0389860', 'tt0389860', 'tt0150136', 'tt0335266', 'tt0129387')