SELECT * FROM
title_basics tb JOIN name_basics np ON tb.isAdult = np.primaryName AND tb.startYear > np.deathYear WHERE tb.genre IN ('Action','Comedy') ORDER BY tb.rating DESC LIMIT 6