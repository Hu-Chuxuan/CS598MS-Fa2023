SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Romantic Comedy', tb.genres) > 0
AND FIND_IN_SET('A Fish Called Wanda', tb.primaryTitle) > 0
OR FIND_IN_SET('Trading Places', tb.primaryTitle) > 0