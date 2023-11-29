SELECT DISTINCT t.* FROM (
    SELECT * from imdb where primaryTitle!= '' AND primaryTitle not like '%documentary%' order by avgrating desc limit 3)