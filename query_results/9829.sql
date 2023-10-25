SELECT tc.* FROM title_crew AS tc JOIN
( SELECT r.* from title_ratings as r WHERE r.averageRating >=? AND r.numVotes >? ) as d ON d.director=tc.directors