SELECT DISTINCT movies.* FROM (
    SELECT * from imdb_title where primaryTitle like 'The%' OR originalTitle like '%Dark%'