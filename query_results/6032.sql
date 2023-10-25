SELECT DISTINCT tc.* FROM title_basics as tb INNER JOIN 
title_crew AS tcr ON tcb.movieID = tcr.movieID AND tcr.job = "Director" OR 
tcb.movieID = tcr.movieID AND tcr.job = "Writer"