SELECT * FROM
title_basics tb INNER JOIN title_rating tr ON tb.primaryTitle = tr.titleID WHERE (tb.isAdult=true OR false) AND ((tr.averageRating >= 8) AND (numVotes>=1)) AND ((((genre='Sci-fi') OR ('Fantasy')) AND NOT('Comedy')))