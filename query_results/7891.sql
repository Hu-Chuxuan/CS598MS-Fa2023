SELECT t.titleID as TITLEID, tb.primaryTitle AS PRIMITIVETITLE FROM title_basic t JOIN title_rating tr ON(tr.titleID=tb.titleID AND tr.averageRating>6 ) WHERE t.titleType='movie'