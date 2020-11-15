/* This line tries to get the population of Germany with in "world" table. The 
SELECT gets data, the FROM command points to where the data is and the WHERE 
command is a way to help show more precise data. */ 

SELECT population FROM world WHERE name = 'Germany'

/* This line is very similar to the first one but it does something different. 
It is still selecting from the "world" table but now it is selecting a name from that table.
 The name has to come be in the format of %X%. This basically means that the name has to contain the letter X. The % symbol is there because it can match any characters.
 The LIKE command is a way to check stuff like names. */

SELECT name FROM world WHERE name LIKE '%X%'

/* This line shows all of the data in the graph that corresponds to name, 
continent and population. 

SELECT name, continent, population FROM world 

/* This line shows the winner of the nobel prize where the year is 1960 and the subject is Literature.
 The AND operator basically allows more specific and precise querying. */

SELECT winner FROM nobel WHERE yr = 1960 AND subject = 'Literature'

/* This line utilizes two SELECT commands. This is like a nested SELECT command.The SELECT in the parentheses finds the population of Romania.
 The first SELECT statement finds the name of the country where the population is greater than    Romania. */

SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name='Romania')

/* This line basically adds up all of the population. The keyword SUM means to add.
 That table would look like just one column of the SUM of every population number. */

SELECT SUM(population) FROM world


