# ![](images/plug.png)   Electric Vehicles: <br> Growing Adoption Through Infrastructure 
</hr>
</hr>


### <Strong>Project Team: Data Miners</strong>
<ul>
    <li><a href=mailto:"fahadarehman@gmail.com">Fahad Rehman</a></li>
    <li><a href=mailto:"clavallee2@gmail.com">Collin Lavallee</a></li>
    <li><a href=mailto:"john.okimosh@gmail.com">John Okimosh</a></li>
    <li><a href=mailto:"jmmadson@gmail.com">Jenni Madson</a></li>
</ul>
</br>


-------------
## Overview:
-------------
This repository is our final project for the UW Extension - Data Analytics BootCamp. For this project, we have chosen to focus on a topic that could have a positive impact on the current climate crisis: Electric Vehicle Adoption.

Electric Vehicles require a certain amount of infrastructure to make them a viable means of transportation for consumers. While many factors go into the purchase of an electric vehicle, we feel there is a strong correlation between the number of charging stations available and the number of electric vehicles sold in those areas. That is the basis of our hypothesis for this analysis.

We're going to use our data sets and machine learning models to confirm or reject our hypothesis as well as help predict where additional charging stations could be placed to increase sales. We also plan to examine additional factors that may contribute to the purchase of electric sales decreasing the negative impact of fossil fuel vehicles on the environment.

</br>

-------------
## Questions:
-------------
Through our modeling and analysis we are planning to solve the following questions:
<ul>
    <li>How many charging stations in a location help drive sales and what locations could add more to increase adoption?</li>
    <li>What other factors affect the sales of electric vehicles?</li>
  	<li>Can we predict the next location (zip code) to install a EV charger?</li>
</ul>

 </br>


-------------
## Technology:
-------------
The following are the technologies we plan to utilize for the project at this stage:
 
|  Technology | Application |
|---|---|
|  pgAdmin & PostGres | Database Management  |
|  scikit-learn (LinearRegression, e.g.)|  Machine Learning |
|  Amazon Web Services | Connecting the Database to Machine Learning |
|  Pandas | Data Cleaning, Transformation, & Analysis |
|  Python | Data Cleaning, Transformation, & Analysis  |
|  Tableau | Dashboard |
|  Plotly | Data Analysis & Visualization |
|  CSV Files | Datasets |
|  Google Collab | Writing & executing our machine learning code|
|  Quick Database Diagrams | ERD creation |


While the technologies we use may change as we work through this project, we will start with some of those we are most familiar with.   We will then explore them more in depth to determine if they are right for the project as well as to increase the effectiveness of our analysis and visualization. 

 </br>

-------------
## Machine Learning Algorithm:
-------------

### Models 
The following lays out our current plan for the Machine Learning Model 
<ul>
  <li>Supervised Learning will be used</li>
  <li>Support Vector Machine will be used</li>
  <li>​Alternative: Decision Tree Model</li>
</ul>


Zip Code samples will be used to determine one of two categories.
</br>1 = EV Station Built, 0 = EV Station Not Built

The current version of model: </br>
A zip code with a quantity greater than 0 will be classified by 1.



### Training Data Sets:

<ul>
  <li>EV Charging Stations</li>
  <li>​New York Station EV Registration by Zip Code</li>
  <li>New York State Zip code List</li>
</ul>


Our Model will be trained on New York State data to predict where to build a new EV Charging Station.
From there, Wisconsin EV Registration data will be input into the model to predict zip codes in Wisconsin to install EV charging stations.


### Potential features to be added:
Based on time and availability we might look into bringing additional data sources in our model (aspirational future model):
<ul>
  <li>Median Income by Zip Code</li>
  <li>Average Climate by Zip Code</li>
  <li>Controlling Political Party by Zip Code</li>
  <li>Average Fuel Price by Zip Code</li>
</ul>

</br>


-------------
## Data Sets:
-------------

The following are the data sets we plan to utilize for the project at this stage. This may change after further data review & manipulation:

- **Electric Vehicle Charging Stations**

  - Link: **https://www.kaggle.com/prasertk/electric-vehicle-charging-stations-in-usa**

  - Description: The dataset contains EV Charging station information(Name, City, Zip, Latitude, Longitude etc.). Additional features we will be using from this dataset are: Charging cost, Owner Type, Facility Type, Facility Time etc.

    ![](images\EV_Charging_Stations.PNG)

- **Electric Vehicle Registration** 

  - Link: **https://www.atlasevhub.com/materials/state-ev-registration-data**

  - Description: The dataset contains EV registration data by state with additional EV attribution(Make, Model, Year etc.)

    <img src="images\EV_Registration_by_state.PNG" style="zoom:60%;" />

- **Electric Vehicle Sales by State**

  - Link: **https://evadoption.com/ev-market-share/ev-market-share-state**

  - Description: The dataset contains EV Sales count by State and the EV Market Share

    <img src="images\EV_Sales_by_state.PNG" style="zoom:60%;" />

- **ZIP CODE Master Data**

  - Link: **https://www.kaggle.com/danofer/zipcodes-county-fips-crosswalk**

  - Description: Master data on zip code for zip code validation against the above three sources

    <img src="images\Zip_Code_Master.PNG" style="zoom:60%;" />




-------------
## Database Structure:
-------------

We've done some initial planning for the structure of our database. 

- [Entity Relation Diagram](https://github.com/jmmadson/data_miners/blob/main/database_related/ERD.png) 
- [PGADMIN SQL File](https://github.com/jmmadson/data_miners/blob/main/database_related/pgadmin_import.sql)
- [Additional Documentation](https://github.com/jmmadson/data_miners/tree/main/database_related)
