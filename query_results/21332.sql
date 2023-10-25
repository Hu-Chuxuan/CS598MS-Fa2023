SELECT * FROM 
( SELECT tc.*, tcr.*, tnc.*, tcp.*, tcn.*, tnp.*, tnd.*, tnr.*
FROM   imdb.title_basic AS tb UNION ALL
SELECT tbd.*, tbr.*, tnb.*, tbp.*, tbn.*, tnp.*, tnn.*, tns.*
FROM   imdb.name_basic as nb JOIN imdb.title_basic AS b ON nb.primaryName = b.primaryName AND b.nconst=nb.nconst)