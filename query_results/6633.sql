SELECT * from ((SELECT distinct tconst, avgrating, count(*) from title_ratings where tconst=?) group by tconst order by avgrating desc limit?)) as v
where v.avgrating between? and?
and exists ( SELECT avgrat from title_ratings where tconst =? and avgratting <v.avgrrating )
order by v.avgrating asc