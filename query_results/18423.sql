SELECT * FROM (SELECT DISTINCT TITLE_BASICS.*, TITLE_CREW.*, NAME_BASE.* WHERE TITLE_TYPE = "Movie") AS A INNER JOIN (SELECT DISTINCT TITLE_PRINCIPALS.*) B ON A.NCONST=B.CHARACTERS