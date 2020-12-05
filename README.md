# Group-6-ETL-Project
# GOOD BOOKS ANALYSIS

Contents:


# Proposal - https://docs.google.com/document/d/1G0u6-kgOMOAQ3_Y3xE-ebsPB27kjThAiU10sGMlV_Rs/edit
Project Name: 
Good Books Analysis

Group Members: 
Ryan Gonzalez, Benjamin Kramskoi, Saroja Shreenivasan, Celeste Muniz-Lithgow

Project Description:
By analyzing the books data, we will be creating readily available data of the good books based on review, price, etc.
Why your final database will be useful to a hypothetical organization:
An interactive database that a client can use to sort through a collection of books by rating, author, popularity(to_read list), genre, price, number of pages, language and best selling books by genre. 

Data Sources:
https://www.kaggle.com/jealousleopard/goodreadsbooks 
https://en.m.wikipedia.org/wiki/Lists_of_The_New_York_Times_Fiction_Best_Sellers 
https://en.m.wikipedia.org/wiki/Oprah%27s_Book_Club 

A brief summary of the three ETL steps you will take to create this database:
Extract - using python from kaggle and web scraping from  barnes and noble
Transform - using pandas, python, sql and transform the data that is extracted
Load - make a connection between pandas and postgres; load the data into the respective tables

A description of what each team member will be responsible for:
Pre-work: (assess the sources and find the best data which will suit the DB) - Ryan, Benjamin Kramskoi, Celeste, Saroja
Extraction - Ryan , Celeste
Transforming - Celeste, Saroja
ERD Diagram - Benjamin Kramskoi
Load - Saroja
Github Repository - Benjamin Kramskoi, Ryan

Information to Extract:
Kaggle - GoodReads
ISBN
Title
Author
Average Rating
ISBN
Language
Num Pages

Table (wikipedia all 3? - Bestsellers)
Title
Year was best seller/ oprah list
month was on oprah list

Tables:
Book_desc{
	ISBN - VARCHAR PK
	Title VARCHAR
	Author VARCHAR
	No_of_pages INT
	Publication_date DATE 
  LanguAGE VARCHAR
	Avg_rating DECIMAL
}

New York Times{
	ISBN - (INT) FK
	YEar (INT)
}

Oprah’s{
	ISBN - (INT) FK
	Bookclub_Month (VARCHAR)
	Boolclub_year (INT)
}
