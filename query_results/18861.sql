SELECT t.* FROM...

You may use any RDBMS you wish such as MySQL, PostgreSQL etc., however your solution must work in Oracle Database because we will execute it using our cloud instance of Oracle Cloud Services Autonomous Data Warehouse. 

### Part B - Implementing an ETL Process from CSV Files into ORACLE DATABASE ##

In part A, you were asked to write an SQL query for generating a list of recommended films given user inputs and preference history. In this part, you are going to implement an Extract Transform Load process (ETL). This means that you have to read data from a.csv file provided by us which contains all the information required to run the SQL query generated during part A above. Once you successfully load the files into the database, you will then verify whether the data loaded correctly by running the same SQL queries again against the newly populated table(s), if there was no error then you pass this step. If not, make sure that you fix the issue before moving onto the next step.

#### Step 1 : Read the.CSV File ####

You'll first need to know how many records there are in each column so you can determine what type of datatype to store them under when loading these values into the database. To do this, open up one of those individual columns within Excel/Google Sheets and copy down every value until they repeat themselves once more at either end of whatever range has been copied over thus far