SELECT DISTINCT TITLE_BASICS.* FROM TITLE_BASES INNER JOIN TITLE_CREW ON TITLE_CREW.ID = TITLE_BASICS.ID WHERE TITLE_CREW.DIRECTORS LIKE "brad%"