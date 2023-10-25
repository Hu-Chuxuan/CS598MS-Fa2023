SELECT tc.* FROM titles AS tc WHERE tc.titleType = "movie" AND EXISTS( SELECT * from ratings as r where r.titleId=tc.id ) GROUP BY tc.id ORDER by tc.startyear DESC LIMIT 10