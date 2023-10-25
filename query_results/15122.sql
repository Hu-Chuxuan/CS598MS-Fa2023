SELECT * FROM title_rating WHERE ((averageRating>6 OR averageRating<7)) AND title IN (' + ', '.join([str(x) for x in movieList])+')'
#print query

dbConn= mysql.connector.connect(host="localhost", user='root', passwd='password', db='imdb-database')
cursor = dbConn.cursor()
cursor.execute('SET CHARACTER SET utf8