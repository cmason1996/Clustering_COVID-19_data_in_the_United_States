
# **FINAL Project - COVID 19**

# Purpose:

To find out what clustering data can tell us about COVID-19 in the United States.  

This project is divided into three sections: 
  - Section 1:  Selecting a topic for the project, selecting a dataset based on our topic for analysis, clustering data about COVID in the U.S.

  - Section 2:  Description of the data exploration and analysis phase of the project, which technologies, languages, tools, and algorithms were used throughout the project.

  - Section 3:  The results of the analysis, recommendations for future analysis, and anything the team would do differently given more time.

# **Section 1:**

  - First we selected our Topic, COVID.
  - Then we selected our dataset from the website [COVID ActNow](https://apidocs.covidactnow.org), "All states timeseries.csv".   

  - We pulled the API csv file, prepared and analyzed the dataset using a Python Pandas DataFrame in Jupyter Notebook; this included cleaning our data, setting an index which separated features for our data to be further analyzed. 

Below shows one of the first tables of our cleaned dataset from the original API file.  Once our features were separated and scaled, by using the StandardizedScaler Library, the data was then transitioned into a Principle Component dataframe and plotted by using the 3 principle components as shown below. 
  
  ![image](https://user-images.githubusercontent.com/110787194/217718172-f138f107-bfe0-409e-b2be-5eb3281af1c3.png)   ![image](https://user-images.githubusercontent.com/110787194/217718190-3405d908-21a7-42eb-adaa-adae1b814913.png)

Once we wrangled our data, created our connections using Entity Relationship Diagrams (ERD) based on the dataframe above, created a query table using PGAdmin database in Postgres giving a visual table as shown below. 

  ![image](https://user-images.githubusercontent.com/110787194/217985288-a27cdfe6-5926-461b-bcfe-94205db3765f.png)   ![image](https://user-images.githubusercontent.com/110787194/217718303-dd70bdb4-2d7c-49ab-8b8c-b2857017466d.png)

# **Section 2:**

The group has completed multiple machine learning models, created the database, and has done some analysis with visuals and plots created in Tableau and python. 

We are working on a draft of the dashboard in a google slides, which can be viewed [here](https://docs.google.com/presentation/d/1B4qO2vJZSNgvrUMuLoZAHXLGW6Bwc3FtPg9xsuCeNOg/edit#slide=id.p). This draft is being used to help put together the interactive html webpage for the final presentation. 

## Machine Learning Models:

We have tested a few unsupervised and supervised machine learning models:

### Principle component analysis (PCA):
The actual values for each feature were trained on a PCA, independent of location data. Three clusters were created, and the most significant features were determined using a pairwise comparison of each feature using a pearson's correlation. The data was imported to postgres before analysis on Tableau. 

### Timeseries Forecasting

A few timeseries forecasting prediction models were tested. Because they are trying to predict a value and the options are not binary, a confusion matrix or accuracy score for each could not be calculated. However, a mean absolute error was calculated for each model, which calculates the difference between the predicted and the observed outcomes. The data for each model was split into three different sets (training, validation, and testing) with plots created for each. The mean absolute error was calculated on the testing data only.

* Linear Model:

The linear model is the simplest model, which linearly transforms between the input and output, where the output step only depends on that step. 

* Recurrent Neural Network (RNN)

A RNN processes a time series step-by-step, allowing previous outputs to be used as inputs while having hidden states that remembers some information about a sequence. It uses the same parameters for each input as it performs the same task on all the inputs or hidden layers to produce the output.

* Convolution Neural Network (CNN)

The CNN is a deep learning algorithm that takes in an input, assigns importance to various aspects of the input, and differentiates one from the other. It reduces the input to a form that is easier to process without losing features that are good for predictions. The kernel shifts in an elementwise multiplication operation, with a certain stride value until it parses the complete width, then hops down to the same stride value and repeats the process until the entire input is traversed. 
