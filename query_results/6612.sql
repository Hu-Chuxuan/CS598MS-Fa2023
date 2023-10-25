SELECT DISTINCT movie.* FROM (title_basics tb INNER JOIN title_ratings tr ON tb.tconst = tr.tconst AND tr.primaryTitle IS NOT NULL), (name_basins nb INNER JOIN title_crew TC ON nb.nconst=TC.tconst WHERE TC.director OR TC.writer IS NOT NULL), (title_prinicpal TP inner join name_basis NB where TP.category ='character') WHERE ((tb.isAdult = false)) AND ((tr.averageRating>6/10)) AND ((nb.ordering < 10)) AND ((np.job <> "Director") AND (NP.Job <>"Writer")) AND ((np.category="Character"))