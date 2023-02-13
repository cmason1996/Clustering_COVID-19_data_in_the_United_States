
# **FINAL Project - COVID 19**

### Purpose of this Final Project is to find out what clustering data can tell us about COVID-19 in the United States.  

This project is divided into three sections: 
  - Section 1:  Selecting a topic for the project, selecting a dataset based on our topic for analysis, clustering data about COVID in the U.S.

  - Section 2:  Description of the data exploration and analysis phase of the project, which technologies, languages, tools, and algorithms were used throughout the project.

  - Section 3:  The results of the analysis, recommendations for future analysis, and anything the team would do differently given more time.

### **Description:**

### **Section 1:**

  - First we selected our Topic, COVID.
  - Then we selected our dataset from the website [COVID ActNow](https://apidocs.covidactnow.org), "All states timeseries.csv".   

  - We pulled the API csv file, prepared and analyzed the dataset using a Python Pandas DataFrame in Jupyter Notebook; this included cleaning our data, setting an index which separated features for our data to be further analyzed. 

  - We pulled the API csv file, prepared and analyzed the dataset using a Python Pandas DataFrame in Jupyter Notebook; this included cleaning our data, setting an index which separated features for our data to be further analyzed. 


Below shows one of the first tables of our cleaned dataset from the original API file.  Once our features were separated and scaled, by using the StandardizedScaler Library, the data was then transitioned into a Principle Component dataframe and plotted by using the 3 principle components as shown below. 
  
  ![image](https://user-images.githubusercontent.com/110787194/217718172-f138f107-bfe0-409e-b2be-5eb3281af1c3.png)   ![image](https://user-images.githubusercontent.com/110787194/217718190-3405d908-21a7-42eb-adaa-adae1b814913.png)

Once we wrangled our data, created our connections using Entity Relationship Diagrams (ERD) based on the dataframe above, created a query table using PGAdmin database in Postgres giving a visual table as shown below. 

  ![image](https://user-images.githubusercontent.com/110787194/217985288-a27cdfe6-5926-461b-bcfe-94205db3765f.png)   ![image](https://user-images.githubusercontent.com/110787194/217718303-dd70bdb4-2d7c-49ab-8b8c-b2857017466d.png)

 ### **Conclusion:**
  
  Based on our analysis so far, we have determined our features and will continue to analyze our data into the next Section.
