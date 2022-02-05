

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
 
We're going to use our data sets and machine learning models to confirm our hypothesis as well as help predict where additional charging stations could be placed to increase sales. We also plan to examine additional factors that may contribute to the purchase of electric sales decreasing the negative impact of fossil fuel vehicles on the environment.
 
</br>
 
------------- 
## Questions:
-------------
Through our modeling and analysis we are planning to solve the following questions:
<ul>
    <li>Does the number of and location of charging stations affect the number of electric vehicles sold in those locations? </li>
    <li>How many charging stations in a location help drive sales and what locations could add more to increase adoption?</li>
    <li>What other factors affect the sales of electric vehicles?</li>
</ul>
 </br>


------------- 
## Technology:
-------------
The following are the technologies we plan to utilize for the project at this stage:
 
|  Technology | Version  |  Application |
|---|---|---|
|  pgAdmin & PostGres |  14 | Database Management  |
|  scikit-learn (LinearRegression, e.g.) | V13  |  Machine Learning |
|  Amazon Web Services | V13  |  Connecting the Database to Machine Learning |
|  Pandas | V2.4  |  Data Cleaning, Transformation, & Analysis |
|  Python | 7.0  | Data Cleaning, Transformation, & Analysis  |
|  Tableau | V13  |  Dashboard |
|  Plotly | V13  |  Data Analysis & Visualization |
|  CSV Files | V13  |  Datasets |
|  Google Collab | V13  |  Datasets |
|  Quick Database Diagrams | V13  | We are using this application to create ERDs |


While the technologies we use may change as we work throught this project, we will start with some of those we are most familiar with.   We will then explore them more in depth to determine if they are right for the project as well as to increase the effectiveness of our analysis and visualization. 

 </br>

-------------
## Machine Learning Algorithm:
 -------------
 We are planning to use XX model w/ XX to do X. 

 
</br>

-------------
## Data Sets:
-------------

The following are the data sets we plan to utilize for the project at this stage. This may change after further data review & manipulation:

- **Electric Vehicle Charging Stations**

  - Link: **https://www.kaggle.com/prasertk/electric-vehicle-charging-stations-in-usa**

  - Description: The dataset contains EV Charging station information(Name, City, Zip, Latitude, Longitude etc.). Additional features we will be using from this dataset are: Charging cost, Owner Type, Facility Type, Facility Time etc.

    ![](\images\EV_Charging_Stations.PNG)

- **Electric Vehicle Registration** 

  - Link: **https://www.atlasevhub.com/materials/state-ev-registration-data**

  - Description: The dataset contains EV registration data by state with additional EV attribution(Make, Model, Year etc.)

    <img src="\images\EV_Registration_by_state.PNG" style="zoom:60%;" />

- **Electric Vehicle Sales by State**

  - Link: **https://evadoption.com/ev-market-share/ev-market-share-state**

  - Description: The dataset contains EV Sales count by State and the EV Market Share

    <img src="\images\EV_Sales_by_state.PNG" style="zoom:60%;" />

- **ZIP CODE Master Data**

  - Link: **https://www.kaggle.com/danofer/zipcodes-county-fips-crosswalk**

  - Description: Master data on zip code for zip code validation against the above three sources

    <img src="\images\Zip_Code_Master.PNG" style="zoom:60%;" />

Based on time and availability we might look into bringing additional data sources in our model(aspirational future model):

- Median Income 
- Fuel Prices
- Political Affiliation


-------------
## Database Structure:
-------------

We've done some initial planning for the structure of our database. 

- [Link to ERD (Entity Relation Diagram)](https://github.com/jmmadson/data_miners/blob/main/database_related/ERD.png) 
- [Link to PGADMIN SQL File](https://github.com/jmmadson/data_miners/blob/main/database_related/pgadmin_import.sql)
- [Additional documentation](https://github.com/jmmadson/data_miners/tree/main/database_related)
