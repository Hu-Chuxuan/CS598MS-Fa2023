SELECT * FROM (title_basics tb INNER JOIN title_ratings tr ON tb.primaryTitle = tr.titleID) WHERE tb.genre LIKE '%rom%'