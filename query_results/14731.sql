SELECT * FROM (title_basic INNER JOIN title_rating ON title_base.tconst = title_rate.tconst WHERE title_base.isadult!= true AND ((title_base.startyear > "1980" OR title_base.endyear < "2016") AND (title_base.runtimeminutes >= "85")) AND title_base.genre IN ('Action','Comedy')) INNER JOIN (name_basic INNER JOIN title_crew ON name_base.nconst = crew_member.nconst WHERE crew_member.job LIKE '%director%' UNION ALL SELECT DISTINCT name_base.* from(name_basic INNER JOIN title_crew ON name_base.nconst=crew_member.nconst WHERE crew_member.job NOT LIKE '%director%') ) ON title_base.primaryTitle = name_base.primaryName INNER JOIN (name_basic INNER JOIN title_principal ON name_base.nconst=principal_role.nconst WHERE principal_role.category='actress' AND principal_role.ordering>="1" ORDER BY principal_role.ordering LIMIT 1) ON title_base.primaryTitle = actress_role.primaryName