SELECT * FROM (title_ratings WHERE avgRat >=?) INNER JOIN (name_basics WHERE birthYear <? AND deathYear >?) ON title_rating.primaryName = name_basic.primaryName