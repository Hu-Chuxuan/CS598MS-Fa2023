SELECT * FROM ( SELECT title_crew.*, name_basics.*,title_principals.* WHERE title_principals.job LIKE '%actor%' AND ((name_basics.primaryProfession='Actor' OR name_basics.primaryProfession = 'Actress') AND (genre IN ('Drama','Comedy')) ) AND (title_rating.averageRATING >=.8)) AS rating_list INNER JOIN title_crew ON rating_list.director=title_crew.directors GROUP BY director ORDER BY director DESC LIMIT 10