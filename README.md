# Analysis of Uber Cancelled and Incompleted Rides from 2024 Uber Booking Data Set

## Dataset  
This project uses the [Uber Ride Analytics Dashboard dataset](https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard/data) from Kaggle.  

## Process  
- Extracted and explored raw data from Kaggle.  
- Wrote **5 SQL queries** to analyze key patterns of the cancelled and incomplete rides of customer and drivers
  per vehicle type.  
- Saved query results into **CSV files**.
- Analysis, assumptions and recommendation where provided. 

## SQL Queries Overview  

This is an additional analaysis that is not included in the data set dashboard which provide a more in-depth overview 
of the patterns of cancellation and incompelted rides of uber drivers and customers.

**1. Percentage of completed, incomplete and cancelled rides per vehicle type**  
- Calculates the percentage of completed, incomplete, and cancelled rides per vehicle type.  
  - **Query** – [Percentage of completed, incomplete and cancelled rides per vehicle type.sql](https://github.com/renielviado/SQL-Projects/blob/ba5649bb86f75bedac3659d77f78f3eb43b81685/Percentage%20of%20completed%2C%20incomplete%20and%20cancelled%20rides%20per%20vehicle%20type.sql)  
  - **Table** – [Percentage of completed, incomplete and cancelled rides per vehicle type.csv](https://github.com/renielviado/SQL-Projects/blob/ba5649bb86f75bedac3659d77f78f3eb43b81685/Percentage%20of%20completed%2C%20incomplete%20and%20cancelled%20rides%20per%20vehicle%20type.csv)  

  
**2. Ranking and percentage of driver cancellation reason per vehicle type**
- Ranks and calculates the percentage of driver cancellation reasons per vehicle type.  
  - **Query** – [Ranking and percentage of driver cancellation reason per vehicle type.sql](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20driver%20cancellation%20reason%20per%20vehicle%20type.sql)  
  - **Table** – [Ranking and percentage of driver cancellation reason per vehicle type.csv](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20driver%20cancellation%20reason%20per%20vehicle%20type.csv) 


**3. Ranking and percentage of incomplete rides reason per vehicle type** 
- Ranks and calculates the percentage of reasons for incomplete rides per vehicle type.  
  - **Query** – [Ranking and percentage of incomplete rides reason per vehicle type.sql](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20incomplete%20rides%20reason%20per%20vehicle%20type.sql)
  - **Table** – [Ranking and percentage of incomplete rides reason per vehicle type.csv](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20incomplete%20rides%20reason%20per%20vehicle%20type.csv)


**4. Ranking and percentage of reason for cancelling by customer per vehicle type**  
- Ranks and calculates the percentage of reasons for customer cancellations per vehicle type.  
  - **Query** – [Ranking and percentage of reason for cancelling by customer per vehicle type.sql](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20reason%20for%20cancelling%20by%20customer%20per%20vehicle%20type.sql)
  - **Table** – [Ranking and percentage of reason for cancelling by customer per vehicle type.csv](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Ranking%20and%20percentage%20of%20reason%20for%20cancelling%20by%20customer%20per%20vehicle%20type.csv)

**5. Top reason for cancelled and incomplete rides per vehicle type**  
- Identifies the most common reasons for cancelled and incomplete rides per vehicle type.
  - **Query** – [Top reason for cancelled and incomplete rides per vehicle type.sql](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Top%20reason%20for%20cancelled%20and%20incomplete%20rides%20per%20vehicle%20type.sql)
  - **Table** – [Top reason for cancelled and incomplete rides per vehicle type.csv](https://github.com/renielviado/SQL-Projects/blob/9e2e5ead166ccbb4935f63f68387ec04ea6477fa/Top%20reason%20for%20cancelled%20and%20incomplete%20rides%20per%20vehicle%20type.csv)

## Analysis  
_To keep the case concise and more readable, the analysis focuses primarily on the **Top 3 vehicle types with the lowest completion rate**._  

### Top 3 Vehicle Types with the Lowest Completion Rate  
1. **Go Sedan** – Lowest completion rate at **66.22%**, highest driver cancellation at **19.98%**, and ranked 2nd in incomplete rides at **6.52%**.  
2. **Auto** – Completion rate at **66.66%**, ranked 2nd in customer cancellations at **7.71%**, and 3rd in incomplete rides at **6.51%**.  
3. **Go Mini** – Completion rate at **66.74%**, ranked 1st in incomplete rides at **6.53%**, and 3rd in customer cancellations at **7.55%**.  

### Other Insights  
- Drivers are more likely to cancel rides than customers or incomplete rides combined.  
- **Vehicle breakdown** is a leading cause of incomplete rides for most low- to mid-cost vehicle types, namely **Bike, eBike, Go Mini, and Go Sedan**.  

## Assumptions to be Validated  
_The following points are assumptions based on the limited dataset and should not be interpreted as firm conclusions. They are intended to highlight possible areas for further investigation, and Uber may validate or refine them by collecting more comprehensive data._  

**1. Go Sedan**  
Go Sedan has the highest driver cancellation rate, with reasons almost evenly distributed. A notable factor is **“personal and car-related issues.”** When cross-checked with incomplete rides, Go Sedan also ranks second, with **vehicle breakdown** as the leading cause.  
**Assumption**: Many sedans may be of lower quality or insufficiently maintained. This could explain why some drivers cancel rides due to vehicle issues, while others continue operating and experience breakdowns during trips.  

**2. Auto**  
Customer cancellation reasons are relatively evenly distributed, but when cross-checked with incomplete rides, a pattern emerges. The top cancellation reasons are **“change of plans”** and **“wrong address,”** while the leading cause of incomplete rides is **“customer demand.”**  
**Assumption**: Because Autos are often used for short-distance travel, customers may find alternative transport options more convenient after booking, leading to *“change of plans”* cancellations. *“Wrong address”* may overlap with this behavior, as rushed or indecisive customers input incorrect locations and either cancel or adjust the ride. This reflects the uncertainty and flexibility common in short-distance trips.  
In some cases, customers cancel before pickup, but others continue and then request changes mid-trip — which may explain why **“customer demand”** is the top reason for incomplete rides.  

**3. Go Mini**  
Go Mini records the **highest rate of incomplete rides.** While reasons are fairly evenly distributed, **vehicle breakdown** and **customer demand** stand out when compared with customer cancellation reasons.  
**Assumption**: Similar to Go Sedan, many Go Mini drivers may neglect regular vehicle maintenance. This is suggested by the link between incomplete rides due to breakdowns and cancellations citing **AC not working.**  
Additionally, a pattern similar to Auto is observed, where **customer demand** overlaps with **wrong address.** This may indicate that customers frequently enter incorrect destinations or change drop-off locations mid-trip, contributing to cancellations or incomplete trips.  

**4. Driver Cancellation**  
Driver cancellations account for the largest share overall. The most common reasons across vehicle types are **customer-related issues, sick passengers,** and **more than permitted people in there.** Go Mini is the only exception, where **personal and car-related issues** lead.  
**Assumption**: While driver cancellations are high, they may still be primarily driven by **customer behavior** rather than driver-specific factors.  

**5. Vehicle Breakdown**  
**Vehicle breakdown** is a recurring leading cause of incomplete rides across several vehicle types, including **Bike, eBike, Go Mini, and Go Sedan**. These categories belong to Uber’s **low- to mid-cost booking range.**  
**Assumption**: Drivers in these segments may prioritize maximizing earnings by delaying or reducing vehicle maintenance to lower costs. This cost-cutting practice could contribute to the higher incidence of breakdowns and incomplete rides.  

## Recommendations (Conditional on Validation)  
_The following recommendations are suggested only if further investigation by Uber confirms the assumptions outlined in the case. They should not be implemented without validation to avoid misdirected actions._  

**1. Vehicle Maintenance & Breakdowns**  
- Enforce stricter vehicle inspection and mandatory service checks to reduce on-road failures.  
- Provide structured support for drivers in low-to-mid-cost categories, such as subsidized service packages, installment-based repair options, or partnerships with local garages.  
- Educate drivers on the long-term financial and safety benefits of regular maintenance versus the higher risks of breakdowns and lost earnings from cost-cutting.  

**2. Customer Plans & Address Accuracy**  
- Enhance app features for address validation, destination changes, and trip confirmation to reduce wrong-address errors and last-minute plan changes.  
- Educate customers on proper booking practices to minimize cancellations and incomplete rides.  

**3. Driver Cancellations Linked to Customer Behavior**  
- Strengthen customer guidelines on passenger limits, accurate bookings, and health-related considerations.  
- Pilot stricter cancellation policies for recurring offenders (customers who frequently violate policies or cancel irresponsibly).  
- Introduce micro-penalties for frequent last-minute cancellations to discourage unnecessary or careless bookings.  
- Give drivers greater flexibility to cancel without penalty when issues clearly stem from customer behavior.  
