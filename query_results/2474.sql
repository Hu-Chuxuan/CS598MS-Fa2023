SELECT * FROM
(SELECT tc.*, rr.rating AS ratingFromReviewers, rl.rating AS ratingFromLikes
FROM
    (title_basic tb LEFT JOIN title_ratings tr ON tb.id = tr.movieId)
LEFT OUTER JOIN
    (title_reviews tr RIGHT JOIN user ur USING (userID)) rr ON (tr.movieId=rr.movieId AND rr.reviewDate >= DATEADD('d','-7',GETDATE()))
LEFT OUTER JOIN
    (title_likes tl RIGHT JOIN user ul USING (userID)) rl ON (tl.movieId=rl.movieId AND rl.likeDate >= DATEADD('d','-7',GETDATE())))
WHERE
tb.primaryTitle LIKE '%Avator%' OR tb.originalTitle LIKE '%Avater%')
AND EXISTS( SELECT * FROM (title_reviews tr RIGHT JOIN user ur USING (userID)) WHERE tr.movieId IN ('Avatar', 'Fifth element'))
GROUP BY tb.titleId ORDER BY SUM(rr.rating)/COUNT(*) DESC