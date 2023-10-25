SELECT * FROM (
    SELECT DISTINCT ON(titleBasics.primaryTitle)
        titleBasics.*,
            avg(rating) AS ratingAverage,
             COUNT(*) as numberOfReviews
    from title_ratings t join title_basics b using(t.titleBasicsId=b.titleBasicsID)