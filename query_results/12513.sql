SELECT DISTINCT(title_id), rating FROM title WHERE rating > 6 AND genre = 'Drama' OR genre = 'Crime'