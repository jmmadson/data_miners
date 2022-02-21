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
## Deliverables:
-------------

[Final Project Presentation Slides](https://docs.google.com/presentation/d/14Eq1qvtn5LfKm8ZZqlp7LCTWsukR1nGEvLfNuLsjIQs/edit?usp=sharing)

[Final Project Dashboard Storyboard](https://docs.google.com/presentation/d/1Qia_KQZcDebXRpabq48SAZv1Zmk2K6Zg8QCuIoLd_CE/edit?usp=sharing")

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
|  SQL Alchemy | Data Analysis thru Python |
|  CSV Files | Datasets |
|  Jupyter Notebook | Writing & executing our Python code|
|  Google Collab | Writing & executing our machine learning code|
|  Quick Database Diagrams | ERD creation |


While the technologies we use may change as we work through this project, we will start with some of those we are most familiar with.   We will then explore them more in depth to determine if they are right for the project as well as to increase the effectiveness of our analysis and visualization. 

 </br>

-------------
## Machine Learning Algorithm:
-------------

### Model 

The goal of the model is to analyze the relationship of EV registration counts, the dependent variable, with the independent variables of the remaining features.

<ul>
  <li>Supervised Learning was selected based on the labeled dated present in the data sets.</li>
  <li>NOT as classification problem</li>
  <li>Regression analysis selected to predict target data</li>
  <li>Sklearn LinearRegression selected for linear relationships present in the data</li>
</ul>



Using pd.corr( ) a correlation matrix was created.

Positive relationships exist between quantity of EV Registration Counts and all features, although correlation between the pairs are not strong at less than .50

|                            | Reg_Counts |
| -------------------------- | ---------- |
| NETWORK_TYPE_Other-Network | 0.275864   |
| TOTAL_HOUSEHOLDS           | 0.275418   |
| MEDIAN_INCOME              | 0.275283   |
| EV_LEVEL_2                 | 0.271770   |
| EV_TOTAL                   | 0.266710   |
| NETWORK_TYPE_ChargePoint   | 0.248188   |
| EV_FAST                    | 0.122623   |
| NETWORK_TYPE_Non-Networked | 0.040663   |
| EV_LEVEL_1                 | 0.008519   |

### Preproccessing:

##### Core EV Station Location Dataset:

<ul>
  <li>Initial preprocessing was completed on the core dataset with EV Station locations.</li>
  <li> Columns were dropped that did not provide useful data or missing data for this segment of the project.</li>
  <li>Columns selected include: Station location data, EV Charger Type, and Charger Network Type</li>
  <li>Network Type was binned into “ChargePoint”, “Other-Network”, and “Non-Networked.”</li>
  <li>The team selected States to analyze: MI, MN, NJ, NY, OR, TX, WA, and WI. All other rows were dropped</li>
  <li>These States were selected based on the vehicle registration datasets. These sets provided registrations based on zip code. Other State sets omitted zip code and recorded registrations based on County</li>
  <li>NaNs in columns for EV_Level_1, EV_Level_2, and EV_Fast were converted to zero</li>
  <li>The NaNs represent zero of that type of charger at the location.</li>
  <li>OneHot Encoding was used to identify and count the EV Charging Network type used at each location</li>
</ul>

##### Electric Vehicle Registration Datasets:

<ul>
  <li>Electric Vehicle Registration data was processed to count the values for each zip code in the State’s registration datasets</li>
  <li>Each State set was merged to generate the core registration dataset.</li>
</ul>

##### Median Income Dataset:

<ul>
  <li>Rows were dropped that included unusable data. This includes string datatypes not easily converted to integer datatype.</li>
</ul>

##### Final ML_Model Dataset

  <ul>
  <li>All location data was dropped except for Zip Code</li>
  <li>Station data was merged with Median Income data</li>
  <li>Station-Median Income data was merged with Registration Data</li>
  <li>NaNs in column for Registration Count per zip code were converted to zero. This represents zero registrations in a particular zip code.</li>
  <li>Remaining rows with NaN data were dropped. These NaNs represent no charger data per </li>
  <li>Target: REG_COUNTS</li>
  <li>§ Features: EV_LEVEL_1, EV_LEVEL_2, EV_FAST, EV_TOTAL, NETWORK_TYPE_ChargePoint, NETWORK_TYPE_Non-Networked, NETWORK_TYPE_Other-Network, TOTAL_HOUSEHOLDS, MEDIAN_INCOME</li>
</ul>

### Training & Testing:

<ul>
  <li>The target dataset was scaled using Sklearn StandardScaler</li>
  <li>Training and Testing sets were split using Sklearn train_test_split with a test size of 0.33</li>
  <li>A simple linear regression was used using the target value (EV_Counts) and total EV Chargers per zip code.</li>
  <li>A multivariable linear regression was used on the complete dataset</li>
  <li>Training and test sets were split using Sklearn train_test_split with a test size of 0.33.</li>
</ul>

### Performance:

<ul>
  <li>Intercept: -1.0227523392233875</li>
  <li>Coefficients: 8.24406147e-03, -1.40307537e-02, -2.35843837e-03, -5.78669218e-03, 7.77312638e-02, 3.33269198e-02, 1.06158111e-01, 2.72669078e-05, 8.41900424e-06</li>
  <li>Explained Variance Score: 0.21</li>
  <li>Max Error: 7.62</li>
  <li>Mean Absolute Error: 0.41</li>
  <li>Mean Squared error: 0.70</li>
  <li>Coefficient of determination: 0.21</li>
</ul>


### Fine Tuning:

Future versions of the model may include additional features that have a stronger correlation to the target value, EV Registrations:

<ul>
  <li>Average Climate by Zip Code</li>
  <li>Political Climate per Zip Code</li>
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

    <img src="images\EV_Charging_Stations.PNG" style="zoom:60%;" />

- **Electric Vehicle Registration** 

  - Link: **https://www.atlasevhub.com/materials/state-ev-registration-data**

  - Description: The dataset contains EV registration data by state with additional EV attribution(Make, Model, Year etc.)

    <img src="images\EV_Registration_by_state.PNG" style="zoom:60%;" />

- **Electric Vehicle Sales by State**

  - Link: **https://evadoption.com/ev-market-share/ev-market-share-state**

  - Description: The dataset contains EV Sales count by State and the EV Market Share

    <img src="images\EV_Sales_by_state.PNG" style="zoom:60%;" />

- **Census Median Income**

  - Link: **https://data.census.gov/cedsci/table?q=Median%20Income&tid=ACSST1Y2019.S1903**

  - Description: This data set contains 2019 Census Median Income data by Zip Code.

    <img src="images\Census_Median_Income.PNG" style="zoom:60%;" />

  - 

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
