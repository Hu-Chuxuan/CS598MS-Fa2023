SELECT DISTINCT t.* FROM title_ratings AS rr LEFT JOIN title_crew as c ON c.id = rr.director AND rr.title = c.title LEFT JOIN title_principals as p ON p.job = "character" AND p.category LIKE "%Jim Carrey%" AND rr.title = p.title WHERE ((rr.averageRating >= 6 OR rr.numvotes > 10)) AND EXISTS( SELECT * from title_principals where title= p.title AND character="Jim Carey") ORDER BY rating DESC