SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Pineapple Express' LIMIT 1), tb.genres) > 0
       OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Super Troopers' LIMIT 1), tb.genres) > 0)
      AND tb.startYear > 1980
      AND tb.startYear < 2000
      AND tb.titleType = 'movie'