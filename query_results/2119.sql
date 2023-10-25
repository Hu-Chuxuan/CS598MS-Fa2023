SELECT DISTINCT tb.* FROM title_basics AS tb INNER JOIN title_ratings AS tr ON tb.titleID = tr.titleID AND ((tr.averageRating >=.75)) WHERE EXISTS( SELECT * FROM title_principals as tw WHERE tb.titleID=tw.titleID AND tw.job='Actor') AND NOT EXISTS((SELECT * from title_crew where type="Director" ))