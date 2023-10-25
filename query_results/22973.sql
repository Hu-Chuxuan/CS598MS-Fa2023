SELECT * FROM (
    SELECT tb.*, rr.*, c.*, p.*, i.rating AS totalRating
FROM titles as tb LEFT JOIN ratings as rr ON tb.titleID = rr.movieID
LEFT JOIN names as n ON n.nameID = tb.primaryName OR n.nameID IS NULL AND tb.originalTitle <> '' UNION ALL
LEFT JOIN crew as c ON c.job = 'Director' OR c.job = 'Writer' OR c.job IN ('Actor','Actress') UNION ALL
LEFT JOIN principalCrews as pc ON pc.category='Character' AND pc.character = tb.primaryName OR pc.category=NULL AND tb.originalTitle <> '') AS t INNER JOIN (select rating from ratings where userID in (1)) as u WHERE t.totalRating >= u.rating GROUP BY t.id ORDER BY totalRating DESC LIMIT 6