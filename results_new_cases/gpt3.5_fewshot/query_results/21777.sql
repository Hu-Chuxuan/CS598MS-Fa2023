SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Gone Girl' LIMIT 1), tb.genres) > 0
AND tb.startYear > 2000
AND tb.startYear < 2020
AND tb.isAdult = 0
AND tb.tconst not in ('tt1207827', 'tt1633356', 'tt3569230', 'tt0251114', 'tt1477837', 'tt0910936', 'tt0120693')