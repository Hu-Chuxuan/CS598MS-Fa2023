SELECT tb.* FROM imdb.title_basics AS tb JOIN imdb.name_basics AS n WHERE tb.primaryTitle LIKE '%' ||? || '%'