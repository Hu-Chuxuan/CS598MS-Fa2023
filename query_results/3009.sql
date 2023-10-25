SELECT DISTINCT titles.* FROM
title_recommendation AS recs JOIN title_ratings as ratings ON recs.`primaryTitle` = ratings.`movieId`,
title_basic as basics ON titles.`titleID`= basics.`titleID`