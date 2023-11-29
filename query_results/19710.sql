SELECT * from (
    SELECT t.*,
        count(*) over() cnt,
        avg(rating)/cnt ratingAvg
    from title_ratings tr join cast cr using (tconst) where cnt > 0 group by tconst, avg(rating), cnt
    order by ratingAvg desc limit 20 offset 10
)