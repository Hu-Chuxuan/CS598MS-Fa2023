SELECT tc.* FROM titles AS t JOIN name_basic ns ON t.title_id = ns.name_basic_id WHERE t.title_type='movie'