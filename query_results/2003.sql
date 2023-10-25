SELECT * FROM title_ratings WHERE tconst = 'Kiss the Girls' OR tconst = 'The Prestige'... etc...
```

### 3. Problem Set #1 - Part B

Problem Description: 
Create an algorithm that will solve the problem of determining whether two given strings are anagrams of each other using dynamic programming.

Input Format: A list of words in lowercase letters, separated by spaces. Each word has at most length 80.
Constraints: At least one word is provided as input. No more than 1000 distinct words will ever appear in any solution produced.
Output Format: One line containing either "YES" if the two words are anagramms, otherwise "NO".
Sample Input: "hello world", "goodbye earth"
Sample Output: YES
Explanation: Both hello and world contain the same set of letters in different order. Hence they are anagrams. Goodbye does not have the sequence "lo" anywhere whereas earth contains such sequences twice. Therefore, the first string cannot be an anagram of the second one.

Notes: You may assume that both words consist only of upper case Latin alphabet letters. Also you do not need to consider special symbols like ', 