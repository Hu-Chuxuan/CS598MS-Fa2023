SELECT * from title_principals where tconst='tt0000001' order by nconst asc limit 10
union all SELECT * from title_rating where tconst = 'tt0000001'
order by avg desc limit 10
order by numvotes desc limit 10
order by ratedate desc limit 10