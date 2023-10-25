SELECT * FROM movieRecommendationSystem(?)

Answer: \section{Python}

\begin{code}
import pymysql #https://github.com/PyMySQL/PyMySQL
from sqlalchemy import create_engine
connection = pymysql.connect("localhost", "root","")
cursor= connection.cursor()
sql="select rating, count(*) from ratings where title in ('Moana','Jumanji') group by rating"
result = cursor.execute(sql).fetchall()[0][1]/float(result[-1])*100