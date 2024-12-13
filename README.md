# Bank Churn Analysis Project SQL-Portfolio
Here’s a GitHub repository description tailored for your **Bank Churn Analysis Project**:

---

# Bank Churn Analysis Project

## **Overview**

This project involves analyzing a bank's customer data to uncover insights into customer demographics, account behavior, and churn patterns. By identifying trends and customer segments, the goal is to better understand factors influencing customer retention and churn, helping the bank optimize its operations and improve customer satisfaction.

---

## **Data**

The dataset contains customer information such as demographic details, account balances, credit scores, and churn status. The analysis focuses on understanding the behavior and characteristics of different customer segments, especially those who are likely to churn.

### **Dataset Description**

| Column Name          | Description                                | Data Type        |
|----------------------|--------------------------------------------|------------------|
| `CustomerId`         | Unique identifier for each customer        | INT              |
| `Surname`            | Customer's last name                      | VARCHAR(255)     |
| `CreditScore`        | Credit score of the customer               | INT              |
| `Geography`          | Customer's country (France, Germany, Spain)| VARCHAR(50)      |
| `Gender`             | Gender of the customer                    | VARCHAR(10)      |
| `Age`                | Age of the customer                       | INT              |
| `Tenure`             | Number of years the customer has been with the bank | INT     |
| `Balance`            | Bank account balance                      | DECIMAL(10,2)    |
| `NumOfProducts`      | Number of products the customer is using  | INT              |
| `HasCrCard`          | Whether the customer has a credit card (1 = Yes, 0 = No) | TINYINT(1) |
| `IsActiveMember`     | Whether the customer is an active member (1 = Yes, 0 = No) | TINYINT(1) |
| `EstimatedSalary`    | Customer's estimated annual salary        | DECIMAL(10,2)    |
| `Exited`             | Churn status (1 = Churned, 0 = Retained)  | TINYINT(1)       |

---

## **Approach**

1. **Data Wrangling**  
   - Checked for missing values and cleaned the data.  
   - Verified data types and ensured proper formatting.  

2. **Feature Engineering**  
   - Categorized customers based on age, balance, and activity status to create meaningful segments.  
   - Computed churn rates and other metrics for analysis.  

3. **Exploratory Data Analysis (EDA)**  
   - Explored demographic patterns (age, gender, geography).  
   - Identified differences in account behavior across geographies.  
   - Analyzed factors contributing to churn, such as balance, credit score, and activity status.  

---

## **Business Questions Addressed**

1. **What do the overall demographics of the bank's customers look like?**  
   - Analyzed customer distributions by age, gender, and geography.  

2. **Is there a difference between German, French, and Spanish customers in terms of account behavior?**  
   - Compared average credit scores, balances, and activity levels across geographies.  

3. **What types of segments exist within the bank's customers?**  
   - Segmented customers based on age, balance, and product usage to identify distinct groups.  

4. **Which factors contribute most to customer churn?**  
   - Explored correlations between churn and variables like credit score, balance, and activity level.  

---

## **Key Insights**

- **Customer Demographics:**  
  - Majority of the customers are middle-aged, with balanced representation across genders and geographies.  

- **Geographic Patterns:**  
  - Customers from Germany had higher average balances but also a higher churn rate compared to France and Spain.  

- **Churn Factors:**  
  - Low credit scores and inactivity were major drivers of churn.  
  - Customers with no balance and fewer products were more likely to churn.  

- **Segments Identified:**  
  - Young, low-balance customers with low tenure are at the highest risk of churn.  
  - High-balance, active members tend to remain loyal.  

---

## **Conclusion**

This analysis provides actionable insights into customer churn and demographic patterns, enabling the bank to:  
- Develop retention strategies for high-risk segments.  
- Personalize product offerings for different customer groups.  
- Improve overall customer satisfaction and reduce churn rates.  

This project is a step toward data-driven customer relationship management.  




