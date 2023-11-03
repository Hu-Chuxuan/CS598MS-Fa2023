SELECT tc.*, nr.* FROM title_ratings as tr JOIN (title_principals as pr) ON pr.job = 'actor' WHERE pr.characters like '%Sandra%') AS rr JOIN (title_basic as bb) ON bb.titleType='Movie' AND bb.primaryTitle LIKE CONCAT('%', rr.movie,'%) GROUP BY rr.movie HAVING COUNT(*)>0 ORDER by count(rr.movie)) as movies LIMIT 6