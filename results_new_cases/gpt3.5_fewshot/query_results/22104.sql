SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Three Billboards Outside Ebbing, Missouri (2017)' LIMIT 1), tb.genres) > 0
       OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Catch Me If You Can (2002)' LIMIT 1), tb.genres) > 0
       OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Choke (2008)' LIMIT 1), tb.genres) > 0)
AND tb.startYear > 2008
AND tb.startYear < 2022