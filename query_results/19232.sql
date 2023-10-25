SELECT * FROM
title_basics tb JOIN
name_basics np ON tb.`primaryName` = np.`primaryName` AND np.`ordering`=np.`ordering`,
title_rating tr ON tb.`id` = tr.`movieId`,
title_crew tw ON tb.`id` = tw.`movieId`