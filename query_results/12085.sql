SELECT * FROM `title` WHERE titleType='movie' AND startYEAR>1960 ORDER BY rating DESC LIMIT 3"""
	crsr=moviesDB.execute(query)
	for res in crsr:
		return res[0],res[1],res[2]+','+str(int((float(res[2])/float(len(res)))))+"%," + str(int(float(res[4])))+":"+str(int(float(res[5])))
	else: return False,False,True

# Main Function
while True:
	try:
		userInput=input("\nEnter Movie Title ")
		if len(userInput)>0 and userInput!="" and userInput not in ["exit","quit"]:
			break
		elif userInput=="exit"or userInput=="quit": break