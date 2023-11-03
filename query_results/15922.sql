SELECT t.* FROM titles AS t INNER JOIN casts AS c ON c.title_id = t.imdbID WHERE c.primaryRole <> 'N/A' AND ((c.character LIKE '%man%' OR c.job LIKE '%man%') AND NOT EXISTS( SELECT * from actors where actor_name='Henry Cavill')) ORDER BY rating DESC LIMIT 6