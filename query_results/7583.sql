SELECT DISTINCT titles.titleID AS id FROM title_basics LEFT JOIN cast_members ON title_basics.movieID = cast_members.movieID WHERE titles.isAdult == false AND titles.startYear >= "2000" AND titles.endYear <= "2005"