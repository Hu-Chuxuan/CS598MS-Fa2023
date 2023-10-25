SELECT t.* FROM
(select distinct titles.titleID from ratings where rating > 7 order by rating desc limit 3) as r
INNER JOIN title_ratings as tr ON r.titleID = tr.titleID AND r.rating = tr.averageRating
INNER JOIN title_basics as tb ON tr.titleID=tb.titleID
WHERE r.titleID IN ('Sing','Frozen') OR r.titleID in ('Secret Life Of Pets')