SELECT tb.* FROM title_basics AS tb INNER JOIN rating_user AS ru ON tb.titleId = ru.titleId AND ru.userId = 'YOUR ID' WHERE ru.rating > 7 ORDER BY avg(ru.rating)