SELECT TITLE_BASICS.* FROM MOVIES WHERE TITLE_BASICS.ISADULT = TRUE AND GENRES LIKE '%COMEDIY%' ORDER BY AVERAGE RATING DESC LIMIT 0, 6