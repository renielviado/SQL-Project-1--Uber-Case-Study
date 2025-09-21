# Analysis of Uber Cancelled and Incompleted Rides from 2024 Uber Booking Data Set

## 📊 Dataset  
This project uses the [Uber Ride Analytics Dashboard dataset](https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard/data) from Kaggle.  

## 🛠️ Process  
- Extracted and explored raw data from Kaggle.  
- Wrote **5 SQL queries** to analyze key patterns of the cancelled and incomplete rides of customer and drivers
  per vehicle type.  
- Saved query results into **CSV files**.
- Analysis, assumptions and recommendation where provided. 

## 🔍 SQL Queries Overview  

This is an additional analaysis that is not included in the data set dashboard which provide a more in-depth overview 
of the patterns of cancellation and incompelted rides of uber drivers and customers.

**1. Percentage of completed, incomplete and cancelled rides per vehicle type**  
   - Calculates the percentage of completed, incomplete, and cancelled rides per vehicle type.
    - Query - [Percentage of completed, incomplete and cancelled rides per vehicle type.sql](https://github.com/renielviado/SQL-Projects/blob/ba5649bb86f75bedac3659d77f78f3eb43b81685/Percentage%20of%20completed%2C%20incomplete%20and%20cancelled%20rides%20per%20vehicle%20type.sql)
    - Table - [Percentage of completed, incomplete and cancelled rides per vehicle type.csv](https://github.com/renielviado/SQL-Projects/blob/ba5649bb86f75bedac3659d77f78f3eb43b81685/Percentage%20of%20completed%2C%20incomplete%20and%20cancelled%20rides%20per%20vehicle%20type.csv)
  
**2. Ranking and percentage of driver cancellation reason per vehicle type**  
   - Ranks and calculates the percentage of driver cancellation reasons per vehicle type.
   - Top reason for cancellations across all vehicle types is **customer-related issues**, making up the highest share (e.g., 25.89% for Auto, 25.67% for Go Sedan, and 26.87% for Uber XL).
   - **“The customer was coughing/sick”** is consistently among the **top 2 reasons** across most vehicle types (Auto 25.15%, Bike 25.80%, Go Mini 25.05%), showing health concerns as a major driver cancellation factor.
   - **Uber XL** has the **lowest cancellation counts overall**, but its cancellations are more heavily concentrated in **personal & car-related issues (26.38%)** compared to other categories.
   - View [SQL](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20driver%20cancellation%20reason%20per%20vehicle%20type.sql) query here and [table](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20driver%20cancellation%20reason%20per%20vehicle%20type.csv) here.

**3. Ranking and percentage of incomplete rides reason per vehicle type**  
   - Ranks and calculates the percentage of reasons for incomplete rides per vehicle type.
   - **Customer Demand** is the leading cause of incomplete rides across most vehicle types, reaching the highest share with **Auto (34.42%)**.
   - **Vehicle Breakdown** is a consistent issue, particularly for **Bike (34.67%)** and **Go Mini (33.93%)**, making it one of the top reasons for incomplete rides.
   - **Other Issues remain significant** across categories, notably **Premier Sedan (36.50%)**, where it accounts for the highest share of incomplete rides compared to all other vehicle types.
   - View [SQL](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20incomplete%20rides%20reason%20per%20vehicle%20type.sql) query here and [table](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20incomplete%20rides%20reason%20per%20vehicle%20type.csv) here.

**4. Ranking and percentage of reason for cancelling by customer per vehicle type**  
   - Ranks and calculates the percentage of reasons for customer cancellations per vehicle type.
   - **“Change of plans”** is the **most common customer cancellation reason**, topping the list for several vehicle types, such as **Auto (26.83%)** and **Go Sedan (21.02%)**.
   - **Wrong address** is a **frequent issue**, especially for **eBike (26.56%)** and **Go Mini (22.03%)**, showing location-related problems are a major driver of cancellations.
   - **Vehicle-related issues (like AC not working)** are **more significant in higher-end categories** such as **Premier Sedan (20.93%)** and **Uber XL (21.71%)**, suggesting comfort expectations affect customer cancellations.
   - View [SQL](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20reason%20for%20cancelling%20by%20customer%20per%20vehicle%20type.sql) query here and [table](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20reason%20for%20cancelling%20by%20customer%20per%20vehicle%20type.csv) here. 

**5. Top reason for cancelled and incomplete rides per vehicle type**  
   - Identifies the most common reasons for cancelled and incomplete rides per vehicle type.
   - **Customer vs. Driver Differences** – Customers most often cancel due to **change of plans or wrong address**, while drivers mostly cite **customer-related issues or health concerns** (e.g., “customer was coughing/sick”).
   - **Incomplete Rides** – The leading cause varies by vehicle type: **Customer Demand** (Auto, Uber XL), **Vehicle Breakdown** (Bike, eBike, Go Mini, Go Sedan), and **Other Issues** (Premier Sedan).
   - **High-End vs. Low-End Vehicles** – **Premium vehicles** (Premier Sedan, Uber XL) face cancellations due to **comfort/vehicle capacity issues**, while **economy** options (Auto, Bike, Go Sedan) are more affected by **customer demand, wrong addresses, and vehicle breakdowns**.
   - View [SQL](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Top%20reason%20for%20cancelled%20and%20incomplete%20rides%20per%20vehicle%20type.sql) query here and [table](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Top%20reason%20for%20cancelled%20and%20incomplete%20rides%20per%20vehicle%20type.csv) here.
