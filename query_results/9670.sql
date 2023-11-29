SELECT * FROM title WHERE 
startyear > 1995 AND endyear < 2010 AND titletype='Movie' AND rating >= 7 AND runtime <= 120 AND genre IN ('Action','Drama')AND title LIKE '%Sister%' OR title LIKE '%In%'