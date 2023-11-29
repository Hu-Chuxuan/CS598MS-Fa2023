SELECT * FROM `titles` WHERE (`startyear` > 1900 AND `endyear` < 2019) OR (`primaryTitle` LIKE '%coco%') ORDER BY avgrating DESC LIMIT 5

The above code snippet is not complete but it shows how we could write such queries using the IMDb API