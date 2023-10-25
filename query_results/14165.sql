SELECT * FROM
title_principals AS p WHERE
p.job = 'actress' AND p.characters IN ('Sam Witwicky', 'Mikaela Banes') OR
p.job = 'actor' AND p.character IS NULL