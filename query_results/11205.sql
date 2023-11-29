SELECT * FROM ( SELECT tconst AS MovieID,
                       titleType AS MovieType,
                       originalTitle AS Title,
                       titleBasics.startYear AS YearOfRelease,
                       5*titleCrews.directors AS DirectorCount,
                        10*(titlePrincipals.category+titlePrincipals.job)*titlePrincipals.ordering + titlePrincipals.categories AS ActorsCount,
                          titleRatings.*
FROM   titleBasics
INNER JOIN titleCrews ON titleBasics.tconst=titleCrews.tconst
LEFT OUTER JOIN titlePrincipals USING(tconst)
LEFT OUTER JOIN titleRatings USING(tconst)