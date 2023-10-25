SELECT * FROM
( SELECT tb.*, tr.averageRating as avgRat, tr.numVotes AS voteCount,
tr.titleID as TID, rc.*, c.*, p.* from imdb.title_basic tb INNER JOIN imdb.title_rating tr ON tb.titleId = tr.titleid LEFT OUTER JOIN imdb.name_base nb ON tb.primaryTitle=nb.nconst WHERE tb.isAdult!= 'True' AND tb.startyear > 1970 AND tb.endyear < 2018 )
INNER JOIN imdb.title_crew tc ON tc.titleId =?
LEFT OUTER JOIN imdb.title_principal pr ON pr.job =?
WHERE pr.category IN ('Actress','Director') AND pr.characters <> '' GROUP BY tc.directors ORDER BY avgRAT DESC LIMIT 6