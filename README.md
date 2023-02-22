<img width="1300 height 300" alt="image" src="https://user-images.githubusercontent.com/110787194/216836804-63ba971f-30ab-467c-9228-9857d468dd3d.png">



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
  
  ![image](https://github.com/cmason1996/Final_Project_Repo/blob/main/SQLDatabase/States_ERD.png)

Once we wrangled our data, created our connections using Entity Relationship Diagrams (ERD) based on the dataframe above, created a query table using PGAdmin database in Postgres giving a visual table as shown below. 

  ![image](https://user-images.githubusercontent.com/110787194/217985288-a27cdfe6-5926-461b-bcfe-94205db3765f.png)   ![image](https://github.com/cmason1996/Final_Project_Repo/blob/main/SQLDatabase/database.png)

# **Section 2:**

The group has completed multiple machine learning models, created the database, and has done some analysis with visuals and plots created in Tableau and python. 

We are working on a draft of the dashboard in a google slides, which can be viewed [here](https://docs.google.com/presentation/d/1B4qO2vJZSNgvrUMuLoZAHXLGW6Bwc3FtPg9xsuCeNOg/edit#slide=id.p). This draft is being used to help put together the interactive html webpage for the final presentation which can be viewed [here](https://elissewright.github.io/testapp/homepage.html). 

## Machine Learning Models:

We have tested a few unsupervised and supervised machine learning models:

### Principle component analysis (PCA):
The actual values for each feature were trained on a PCA, independent of location data. Three clusters were created, and the most significant features were determined using a pairwise comparison of each feature using a Pearson's correlation. The data was imported to postgres before analysis on Tableau.

![PCA 3-D scatterplot](https://github.com/cmason1996/Final_Project_Repo/blob/main/plots/newplot.png "PCA 3-D scatterplot")

![pairwise pearsons coorelation analysis of each feature in class 0](https://github.com/cmason1996/Final_Project_Repo/blob/main/plots/pairwise_class_0.png "pairwise pearsons coorelation analysis of each feature in class 0")

![image](https://github.com/cmason1996/Final_Project_Repo/blob/main/plots/features.png)

#### PCA optimization
Since the clusters were in close proximity to each other in spatial space, a few attempts at optomizing clustering were implimented. 

1. The first attempt included adding in location data as features. There were no noticable differences in clustering 

![image](https://github.com/cmason1996/Final_Project_Repo/blob/main/plots/PCA_optimized_wLocation.png)

2. The second attempt involved decreasing the features to only the significantly coorelated features found from the first PCA model. There was a noticable difference in the separation of clusters. There seemed to be more separation between clusters 1 from clusters 2 and 0, but no noticable difference between clusters 0 and 2. 

![image](https://github.com/cmason1996/Final_Project_Repo/blob/main/plots/PCA_optimizedFeatures.png)

### Timeseries Forecasting

* A few timeseries forecasting prediction models were tested. Because they are trying to predict a value and the options are not binary, a confusion matrix or accuracy score for each could not be calculated. However, a mean absolute error was calculated for each model, which calculates the difference between the predicted and the observed outcomes. The data for each model was split into three different sets of training, validation, and testing by a split of 70%, 20%, and 10% respectively. Plots were created for each part of the model. The mean absolute error was calculated on the testing data only.

#### Linear Model:

* The linear model is the simplest model, which linearly transforms between the input and output, where the output step only depends on that step. The mean absolute error is 9348830.

![image](https://github.com/cmason1996/Final_Project_Repo/blob/main/plots/timeseriesPrediction_LinearModel.png)

#### Recurrent Neural Network (RNN)

* A RNN processes a time series step-by-step, allowing previous outputs to be used as inputs while having hidden states that remembers some information about a sequence. It uses the same parameters for each input as it performs the same task on all the inputs or hidden layers to produce the output. The mean absolute error is 10302069.

![image](https://github.com/cmason1996/Final_Project_Repo/blob/main/plots/timeseriesPrediction_RNN.png)


#### Convolution Neural Network (CNN)

* The CNN is a deep learning algorithm that takes in an input, assigns importance to various aspects of the input, and differentiates one from the other. It reduces the input to a form that is easier to process without losing features that are good for predictions. The kernel shifts in an elementwise multiplication operation, with a certain stride value until it parses the complete width, then hops down to the same stride value and repeats the process until the entire input is traversed. The mean absolute error is 435025.7812

![image](https://github.com/cmason1996/Final_Project_Repo/blob/main/plots/timeseriesPrediction_CNN.png)

# **Section 3:**

## Outcome

For this project our goal was to see if we could use current COVID-19 data to determine what trends exist and, if any, what they can tell us. To do this we used several differnet means to analyze the data but ultimately went with PCA clustering as it was revealed to be the most informative and useful to work with. Using PCA was able to tell us that the data does in fact cluster along some interesting features that we each decided to explore further on our own. Through the Pearson's correlation we found that there were some features that affecting the clustering of the data more than others, such as vaccinations initaited and hosipital bed capacity. 

Taking what we learned from out initial analysis, we delved further into the data to see what creating various visuals could describe of the current trends of COVID-19, our favorite visuals may be found on our dashboard [here](https://elissewright.github.io/testapp/homepage.html). Through exploring the data in Tableau we were able to see that the states with higher populations were the most affected, which isn't much of a surprise but it is nice to know that our model returns valid results. Below is one of our visuals detailing the relationship between vaccinations and cases in all 50 states colored by what class they belong to.

<img width="875" alt="vaccinations:cases" src="https://user-images.githubusercontent.com/112291888/220495154-990532ae-19d7-4cfd-8fd1-c1ac63a63777.png">

## Future Analysis

If we were to continue our analysis of the data we would want to look into the relationship between the various different features as well as what using those features in various models could tell us about the data. To do this we would pull new data from the Act Now COVID API as well as use the data we have already collected to see if there are any differences in our original data trends to more current data. We would run the new data through all of the same processes as the original data and train all of the same models as we originally did during our intial analysis. After this we would explore new models to train with both sets of data to determine if there are indeed new trends in the data. 

## If We Had More Time

If we had had more time to explore the data we would have wanted to answer several questions that we came up with along this journey, such as;

* What features cause Illinois to be partially included in Cluster 1?
* What features caused Wyoming, Alabama, and Vermont to have lower case levels?

As well as some other types of analysis we would like to run on the data to explore more in depth how the clustering of the data reveals trends;

* For PCA analysis, normalize the data according to population.
* Do Spearman’s correlation analysis of the clusters to see if new trends are revealed among the features.