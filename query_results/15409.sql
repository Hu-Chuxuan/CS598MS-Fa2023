SELECT * from
(
    SELECT m.*, cast('0' || substr(t.genre, length(t.genre)-1)) genre from movie m left join title_genre t on m.primaryTitle = t.tconst where m.isAdult='0' order by m.runtimeMinutes desc limit 5 offest 0
) x inner join title y using ('tconst') where y.startYear > '1999' and y.endYear < '2019' and x.numVotes>x.averageRating*y.numvotes group by x.primaryTitle having count(*)>=2