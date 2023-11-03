SELECT DISTINCT(title_basics.primaryTitle), title_basic.startYear FROM title_basics WHERE title_basics.isAdult = true AND ((title_basic.genre IN ('Science Fiction') OR title_basic.category ='science fiction')) ORDER BY title_basic.startYear DESC