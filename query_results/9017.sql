SELECT tc.* FROM title_basics AS tb INNER JOIN
( SELECT avg(rating), COUNT(*) as totalvotes
FROM rating WHERE userid = @userid GROUP BY genre ) AS r ON tb.genre=r.genre AND tb.titleType='movie'
INNER JOIN ( SELECT * FROM name_basics NAME WHERE BIRTHYEAR>@year AND DEATHYEAR<=@year UNION ALL SELECT * FROM CREWCREW WHERE JOB='ACTOR') AS NB ON tb.primaryTitle=NB.PRIMARYNAME