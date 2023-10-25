SELECT * FROM \"title_basic\" WHERE \"primaryTitle\" LIKE %s AND ("+
		"\"genre\" IN ('%s') OR \"job\" IN ('%s')) ORDER BY RAND() LIMIT 5