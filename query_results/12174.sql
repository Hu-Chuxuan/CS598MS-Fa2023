SELECT * FROM (title_principals t INNER JOIN title_crew c ON t.`category` = c.`job`) WHERE ((c.`director` OR c.`writer`)) AND (`primaryProfession` LIKE "Director") AND `characters`!= 'None' ORDER BY `ordering`