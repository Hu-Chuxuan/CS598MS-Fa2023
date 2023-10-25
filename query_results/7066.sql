SELECT * FROM
    ((title_basics INNER JOIN title_rating ON title_basic_.titleType = 'TITLE' AND title_basic_.primaryTitle = title_ratting_.averageRating)
INNER JOIN (name_basics INNER JOIN title_crew ON name_basic_.birthYear < title_crews_.startYear OR name_basic_.deathYear > title_crews_.endYear OR name_basic_.primaryProfession IN ('Director', 'Writer')) AS name_crew ON title_rating_.numVotes >= 8 AND (title_rating_.genre LIKE '%%')
AND ((((title_basics).titleType = 'TITLE' AND (title_basic_.primaryTitle IS NULL)) OR (title_basic_.originalTitle <> '')))
GROUP BY title_basic_.titleType