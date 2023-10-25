SELECT DISTINCT t.titleID AS TitleID FROM title_basics AS t JOIN title_rating as r ON r.titleID = t.titleID WHERE t.titleType!= "TV Series" AND r.numvotes >= 10