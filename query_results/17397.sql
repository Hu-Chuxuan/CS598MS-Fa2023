SELECT * FROM titles WHERE (titleType = 'Movie' AND originalTitle LIKE '%Kevin%') OR (genre IN ('Comedy', 'Drama'))