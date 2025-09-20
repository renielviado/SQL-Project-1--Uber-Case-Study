# Analysis of Uber Cancelled and Incompleted Rides from 2024 Uber Booking Data Set

## 📊 Dataset  
This project uses the [Uber Ride Analytics Dashboard dataset](https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard/data) from Kaggle.  

## 🛠️ Process  
- Extracted and explored raw data from Kaggle.  
- Wrote **5 SQL queries** to analyze key patterns of the cancelled and incomplete rides of customer and drivers
  per vehicle type.  
- Saved query results into **CSV files** for further analysis.  

## 🔍 SQL Queries Overview  

This is an additional analaysis that is not included in the data set dashboard which provide a more in-depth overview 
of the patterns of cancellation and incompelted rides of uber drivers and customers.

**1. Percentage of completed, incomplete and cancelled rides per vehicle type**  
   - Calculates the percentage of completed, incomplete, and cancelled rides per vehicle type.
   - It shows that **Uber XL**, though having the fewest bookings, has the highest completion rate at **67.32%**, while **Go Sedan** has the lowest at **66.22%**.
   - It also shows that drivers are more likely to cancel rides, especially **Go Sedan** drivers, compared to cancellations by customers or incomplete rides.
   - Overall, **Uber XL** demonstrates the **best performance** (highest completion rate, lowest driver cancellations), while **Go Sedan** performs the **worst performance** with the lowest completion rate and the highest driver cancellations.
   - View [SQL](https://github.com/renielviado/SQL-Projects/blob/ba5649bb86f75bedac3659d77f78f3eb43b81685/Percentage%20of%20completed%2C%20incomplete%20and%20cancelled%20rides%20per%20vehicle%20type.sql) query here and [table](https://github.com/renielviado/SQL-Projects/blob/ba5649bb86f75bedac3659d77f78f3eb43b81685/Percentage%20of%20completed%2C%20incomplete%20and%20cancelled%20rides%20per%20vehicle%20type.csv) here.


**2. Ranking and percentage of driver cancellation reason per vehicle type**  
   - Ranks and calculates the percentage of driver cancellation reasons per vehicle type.  

**3. Ranking and percentage of incomplete rides reason per vehicle type**  
   - Ranks and calculates the percentage of reasons for incomplete rides per vehicle type.  

**4. Ranking and percentage of reason for cancelling by customer per vehicle type**  
   - Ranks and calculates the percentage of reasons for customer cancellations per vehicle type.  

**5. Top reason for cancelled and incomplete rides per vehicle type**  
   - Identifies the most common reasons for cancelled and incomplete rides per vehicle type. 
