SELECT DISTINCT TITLE_BASICS.* FROM IMDB_MOVIES AS TITLE_BASICS WHERE
((((TITLE_BASICS.titleType = "movie" OR TITLE_BASICS.titleType IS NULL)) AND ((TITLE_CREW.director = 'John Carpenter'))) OR
(TITLE_PRINCIPALS.category IN ('actor') AND TITLE_PRINCIPALS.job LIKE '%act%'))
ORDER BY RANDOM() LIMIT 1