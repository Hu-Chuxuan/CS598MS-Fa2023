SELECT DISTINCT rating_average AS avgRat FROM ratings WHERE director IN ('John Carpenter','David Cronenberg') AND genre='Horror' ORDER BY rating_avg DESC LIMIT 1