SELECT * FROM (SELECT DISTINCT title_basics.*, title_crew.*, name_basics.*, title_rating.*
FROM title_basic
LEFT JOIN title_crew ON title_crews.titleId = title_base.titleID
WHERE title_crew.director IN ('Jennifer Lopez') AND title_base.isAdult=0
AND title_base.startYear>='1986' AND title_base.endYear<='2020'
ORDER BY rating DESC LIMIT 3)