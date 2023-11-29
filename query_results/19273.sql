SELECT * FROM (SELECT distinct titleid from tconst join title_basic where titleid = tconst.titleid AND titletype='movie') AS T
JOIN title_rating ON (T.titleid=title_rating.titleid)
WHERE ((avgrating between 3.5 and 5))AND((numvotes>10))