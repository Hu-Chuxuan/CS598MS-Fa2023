SELECT * FROM (title_rating JOIN title_crew ON rating.tconst = crew.tconst) WHERE rating.numvotes > 1 AND rating.averageRATING < 7