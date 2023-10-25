SELECT * FROM ((title_basics tb INNER JOIN title_rating tr ON tb.id = tr.movieId) LEFT OUTER JOIN title_crew c ON tb.id=c.movieID)
INNER JOIN title_principal p ON tb.id = p.movieId AND p.job IN ('director','writer')
WHERE p.category='acting' OR p.character LIKE '%Actor%' OR p.character LIKE '%Actress%'