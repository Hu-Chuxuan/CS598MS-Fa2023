SELECT t.* FROM title_principals AS p JOIN title_crew AS c ON p.`job` = c.`category`, title_basic as b WHERE `title_type`= &apos