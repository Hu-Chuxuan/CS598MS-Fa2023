SELECT * FROM table WHERE...

Answer: \section{You don't have to do all of them}
\begin{itemize}
\item Avoid using `AS` in your `FROM` clauses - they are redundant as you can just use aliases like so instead : `from title_recommendation r join...`.
\item Also avoid repeating yourself by putting things into subqueries if possible. For example, rather than doing something like this:

\begin{code}
(select avg(rating), count(*) from ratings group by rating) rated_movies