SELECT * FROM title_details"))
#find how many times certain words appear in the titles
for word in d.keys():
    counts={}
    for x in d.values():
        if x ==word :
            counts[x]=counts.setdefault(word,[0]+list(map(int, str(x))+[0]))+(str(x),)+[0]+list(map(int, str(x)))
        else:
            counts[x].extend([(str(x),)]*len(counts[x]))
print("Top words used in these movies are:" + "\n".join(['{}'.format(k) for k in sorted(list(counts.items()), key=lambda item:(item[1][-1], item[1][-2]), reverse=True)[::-1]][:8]))
#sort everything out alphabetically
result = [(k," ".join([str(v) for v in d[k][:-2]])+" ("+str(d[k][-1])+")") for k in sorted(list(d))]

#now create the query to do what we want - find similar movies
query="""select t.* from title_details t where t.titleType='Movie'