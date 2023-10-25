SELECT * FROM
(select tb.* from title_basic as tb inner join cast(title_rating as char) r ON tb.titleID = r.titleID ) AS t INNER JOIN 
( select tc.* from title_crew as tc inner join cast(title_principal as char) pc on tc.titleId=pc.titleId WHERE pc.category='acting') AS tc ON tC.titleId = t.titleId AND tc.job in ('director','writer')