SELECT * FROM 
	title_principals AS TP
WHERE (((TP.job='actress') AND ((TP.category='character')))) OR ((TP.job IN ('assistant','blacksmith','carpenter','compositor','cutter','dolly grip','electrician','editor','makeup artist','miscellaneous crew','property master','set decorator','special effects assistant','stunts','trainee'))) ORDER BY (((ordering=1)),((ordering>1)))