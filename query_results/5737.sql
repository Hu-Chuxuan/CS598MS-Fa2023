SELECT * FROM `title_basic` WHERE `isadult` = false AND (`startyear` BETWEEN? AND? OR (`endyear` BETWEEN? AND?)) AND (`runtimeminutes` <?)