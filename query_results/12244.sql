SELECT * FROM tableA INNER JOIN tableB ON condition WHERE condition

All JOIN statements MUST have an equality condition such as =, <>, <=, >=, IN etc..

The JOIN condition(s) CANNOT refer to any column named "id" or "primaryKey". In other words, do not use any primary key/foreign key pairing between tables. This means that if you are using the "tableA.titleId=tableB.titleId" join syntax then you cannot get credit for this question. Instead please create another joint condition which does NOT involve id or primarykey.

If you have more than one join condition then they ALL MUST appear after each other in order. For example: SELECT * FROM tableA LEFT OUTER JOIN tableB RIGHT OUTER JOIN tableC USING(condition) WHERE condition