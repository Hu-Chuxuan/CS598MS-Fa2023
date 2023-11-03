SELECT t.titleID AS id, t.titleType as type, p.primaryTitle as primaryTitle, p.originalTitle as originalTitle, i.isAdult as adultFlag, yr.startYear as yearOfMovie, yr.endYear as yearsOfMovies, mins.runtimeMinutes as minutesInTheMovie, g.genreLists as genreList, c.category as Category, j.jobDescription as JobDescrption from movietable AS M left join title_basicstitle AS T ON (T.titleID = M.movieId) LEFT JOIN title_ratingstitle AS R ON(R.titleID=T.titleID) left join NameBasictitle NB on (NB.titleid = T.titleID) left Join TitleCrewtitel As C On (C.titleid = T.titleID) Left Join MoviePrincipalstable MP On (MP.titleid = T.titleID) Where T.titleID in ('$input') AND YEAR(yr.yearofmovie)='$userInput' GROUP BY MIN(mins.minutesInTheMovie), MAX(g.genreList)...