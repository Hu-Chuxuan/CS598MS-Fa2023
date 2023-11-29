SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle IN ('Zootopia', 'The Incredibles', 'Wreck-It Ralph')
AND tb1.primaryTitle NOT IN ('Zootopia', 'The Incredibles', 'Wreck-It Ralph', 'Pineapple Express', 'Girls Trip', 'Game Night', 'How High')
GROUP BY recommended_movie
ORDER BY COUNT(tb1.primaryTitle) DESC
LIMIT 5