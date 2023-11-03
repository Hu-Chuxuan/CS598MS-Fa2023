SELECT DISTINCT tb.title_id AS id, tb.isadult, tb.startyear, tb.endyear, tb.runtimeminutes FROM title_basic as tb JOIN name_basic as n ON n.primaryname = tb.originaltitle AND n.deathyear < year(now()) WHERE n.primaryprofession LIKE '%actress%' OR n.primaryprofession LIKE '%actor%'