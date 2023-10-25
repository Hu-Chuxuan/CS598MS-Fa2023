SELECT * FROM
( SELECT tc.*, nr.* FROM imdb.title_basics as tb JOIN imdb.name_basics AS nm ON tb.primaryTitle =nm.primaryName UNION ALL SELECT tc.*, nr.* from imdb.title_crew as tcr join imdb.name_basics as nm on tcr.director = nm.primaryName ) A
WHERE tb.startYear <= 2006 AND tb.endYear >= 2018 OR tb.isAdult=true ORDER BY nr.numvotes DESC LIMIT 3