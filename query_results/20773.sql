SELECT tc.* FROM title_basics AS tb JOIN title_ratings AS tr ON tb.title_id = tr.title_id WHERE tb.isAdult=false AND tb.startyear>='2016' AND tb.endyear<='2019'