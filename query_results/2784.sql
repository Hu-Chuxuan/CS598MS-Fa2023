SELECT`. I think you meant something like this instead:

\begin{code}
WHERE imdbID IN(select imbdID FROM title_basic WHERE imdblID = <movie IDs>)