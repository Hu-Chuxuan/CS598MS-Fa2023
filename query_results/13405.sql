SELECT t.* FROM title_basics AS t INNER JOIN name_basics ON(title_basic.primaryTitle=name_basic.primaryName AND ((title_basic.startYear BETWEEN? AND? OR title_basic.endYear BETWEEN? AND?)) AND (title_basic.genre IN ('comedy','drama') AND NOT EXISTS (SELECT * from genre_other WHERE title_basic.genre = genre_other.genre))) ORDER BY rating DESC LIMIT?