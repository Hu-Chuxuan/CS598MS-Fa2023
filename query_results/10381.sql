SELECT * FROM (title_basic JOIN rating_basic ON title_basics.id = rating_basic.titleId) WHERE ((rating_basic.averageRating >= '7') AND (rating_basic.numvotes > '0')) ORDER BY rating_basic.averageRating DESC LIMIT '6'