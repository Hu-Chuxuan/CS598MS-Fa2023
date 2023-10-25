SELECT * FROM (
    SELECT tc.*, rr.[numvotes], rr.[averagerating] as rating
      from ((title_basic tbl JOIN title_ratings tr ON tbl.tconst=tr.tconst)
     LEFT OUTER JOIN title_reviews rr ON tbl.tconst = rr.tconst AND tr.tconst IS NULL)
   WHERE (((tbl.titletype='Movie') OR (tbl.titletype='TV Episode')) AND ((rr.isadult='false')))
GROUP BY tbl.primarytitle