SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND tb.startYear > 2000
AND tb.startYear < 2020
AND (tb.primaryTitle NOT IN ('Pineapple Express', '21 Jump Street') OR tb.tconst NOT IN 
    ((SELECT tconst FROM title_basics WHERE primaryTitle = 'Pineapple Express' LIMIT 1), 
    (SELECT tconst FROM title_basics WHERE primaryTitle = '21 Jump Street' LIMIT 1)))