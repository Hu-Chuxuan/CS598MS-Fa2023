SELECT DISTINCT titles.titleType FROM title_basics AS tb INNER JOIN title_ratings as tr ON(tb.tconst = tr.tconst)