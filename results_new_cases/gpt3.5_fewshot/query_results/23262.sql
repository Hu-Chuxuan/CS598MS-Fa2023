SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Animation', tb.genres) > 0
       OR FIND_IN_SET('Family', tb.genres) > 0)
      AND (tb.startYear = 2016 OR tb.startYear = 2003)