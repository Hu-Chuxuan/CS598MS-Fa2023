SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.titleType = 'movie' 
AND tb1.originalTitle LIKE CONCAT('%', SUBSTRING_INDEX(SUBSTRING_INDEX(tb2.primaryTitle, ':', 1), ':', -1), '%')
WHERE tb2.primaryTitle = 'The Hunger Games: Mockingjay – Part 1 (2014)'
AND tb1.startYear > tb2.startYear
ORDER BY tb1.startYear DESC