SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND tb.primaryTitle NOT IN ('Me Before You ', 'The Shawshank Redemption (1994)', 'Thor: Ragnarok (2017)')