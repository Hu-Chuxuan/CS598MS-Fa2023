SELECT DISTINCT
    tb.*, tc.*, nr.*, np.*, tc.* FROM titles AS tb LEFT JOIN title_crew as tc ON(tb.titleID = tc.movieID),
        names AS nb WHERE nb.nameID=tb.titleID AND nb.primaryName='Alice' OR nb.primaryName='Edward'