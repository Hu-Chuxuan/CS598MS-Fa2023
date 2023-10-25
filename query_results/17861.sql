SELECT t.* FROM titles AS t WHERE
(t.genre = "Action" OR t.genre IN ("Action", "Fantasy")) AND
(t.runtime >= 86 MINUTES)