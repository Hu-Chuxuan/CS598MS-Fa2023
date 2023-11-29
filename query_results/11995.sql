SELECT * FROM title_basics WHERE title_type ='movie' AND primaryTitle LIKE '%Apes%' OR primaryTitle LIKE '%Horror%' ORDER BY runtimeMinutes DESC LIMIT 1
"""
Output Result:
[{'title_id': 'tt0000001', 'primaryTitle': 'Planet of the Apes (1968)'}]

### Question #2
You have been asked by your boss to write an application where you will take two inputs from the user, the first being a list of names separated by commas, and then the second being another comma delimited string containing the genre tags. Your app should then return a new list containing both the name and its matching tagged genres. For example, if the user entered ['Tom Hanks','Drama','Harrison Ford'], they would receive back ['Tom Hanks','Drama','Action']. Here are some examples of what could happen when entering different combinations of values into our system. If no match exists between the provided data we expect nothing to appear in either column ('Tom Hanks','Drama')
Inputs: ['Tom Hanks','Drama','Harrison Ford']