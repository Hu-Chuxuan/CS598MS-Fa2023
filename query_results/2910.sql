SELECT * FROM title_basics tb JOIN cast c ON c.titleId = tb.id WHERE (tb.primaryTitle LIKE '%The%' OR tb.originalTitle LIKE '%The%') AND tb.startYear <= 2007 AND tb.endYear >= 2009