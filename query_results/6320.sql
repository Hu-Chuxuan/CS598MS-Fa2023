SELECT * FROM 
( SELECT tc.*, tcr.*, nb.*, tcn.*, tcr.*, nbc.*, tcp.*  
FROM title_basics AS tc INNER JOIN title_ratings as tcr ON tc.title_id = tcr.title_id  
INNER JOIN name_basics AS nb ON tc.name_id = nb.name_id  
INNER JOIN title_crew AS tcn ON tc.movie_id=tcn.movie_id  
INNER JOIN title_principals AS tcp ON tcn.title_id=tcp.title_id ) AS tbl WHERE tbp.genre LIKE '%romance%' AND tbp.average_rating >.8