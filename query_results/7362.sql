SELECT tb.* FROM title_basics AS tb JOIN name_basics ON tb.titleID = name_basics.titleID WHERE ((tb.isAdult!= "true") AND (name_basics.primaryName LIKE '%good%' OR name_basics.primaryName LIKE '%bad%')) ORDER BY rating DESC LIMIT 1