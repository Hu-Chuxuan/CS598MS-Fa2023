SELECT * FROM title_basics WHERE title_type ='movie' AND (startYear BETWEEN $yearFrom AND $yearTo OR endYear BETWEEN $yearFrom AND $yearTo)