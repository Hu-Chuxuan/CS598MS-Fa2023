SELECT * FROM
    ((select tb.* from title_basics as tb left join cast(name_basics na as tc where tc.primaryName = tb.titleType order by na.ordering desc limit 10)) as t1
     inner join (select tb.* from title_rating tr right outer join rating rd where rd.averageRating between 8/10 AND 10/10 group by tb.titleID)as t2
         on t1.movieId=t2.movieId
        ) as t3
        inner join ( select np.*from name_profs np inner join person p on np.personid=np.personid and np.job=p.job and np.category='actress') as t4
            on t3.primaryName = t4.nameId