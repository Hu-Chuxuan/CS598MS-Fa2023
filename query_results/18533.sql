SELECT * FROM ( SELECT distinct titleId from title_rating where rating >= 8 AND genre = "comedy" ) AS T WHERE titleId IN ('Finding Nemo (2003)','Cars (2006)')
)