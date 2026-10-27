# Databricks notebook source
from pyspark.sql.functions import *

# COMMAND ----------

employee_data = [
    (101, "Amit", "IT", 70000, "Mumbai", "2022-01-10"),
    (102, "Rahul", "IT", 85000, "Pune", "2021-06-15"),
    (103, "Priya", "HR", 60000, "Mumbai", "2023-03-20"),
    (104, "Sneha", "Finance", 90000, "Delhi", "2020-11-05"),
    (105, "Vikas", "IT", 85000, "Pune", "2022-08-12"),
    (106, "Neha", "HR", None, "Mumbai", "2024-01-15"),
    (107, "Rohit", "Finance", 75000, None, "2023-07-18"),
    (108, "Kiran", "IT", 95000, "Bangalore", "2020-02-10"),
    (109, "Pooja", "Finance", 75000, "Delhi", "2021-09-25"),
    (110, "Arjun", "HR", 65000, "Pune", None)
]

employee_columns = [
    "employee_id",
    "employee_name",
    "department",
    "salary",
    "city",
    "hire_date"
]

df_employee = spark.createDataFrame(employee_data, employee_columns)

display(df_employee)

# COMMAND ----------

customer_data = [
    (1, "Chetan", "chetan@gmail.com", "Mumbai", "2024-01-10"),
    (2, "Rahul", "rahul@gmail.com", "Pune", "2024-02-15"),
    (3, "Priya", "priya@gmail.com", "Delhi", "2024-03-12"),
    (4, "Sneha", None, "Mumbai", "2024-04-20"),
    (5, "Amit", "amit@gmail.com", None, "2024-05-05"),
    (6, "Neha", "neha@gmail.com", "Pune", "2024-05-18"),
    (7, "Rohit", "invalid_email", "Delhi", "2024-06-01"),
    (8, "Kiran", "kiran@gmail.com", "Mumbai", "2024-06-15"),
    (9, "Pooja", "pooja@gmail.com", "Pune", "2024-07-10"),
    (10, "Arjun", "arjun@gmail.com", "Mumbai", "2024-08-20")
]

customer_columns = [
    "customer_id",
    "customer_name",
    "email",
    "city",
    "signup_date"
]

customer_df = spark.createDataFrame(customer_data, customer_columns)

display(customer_df)

# COMMAND ----------

order_data = [
    (1001, 1, "Laptop", "Electronics", 75000, 1, "2024-01-15"),
    (1002, 2, "Phone", "Electronics", 50000, 2, "2024-01-20"),
    (1003, 1, "Mouse", "Accessories", 1500, 3, "2024-02-05"),
    (1004, 3, "Laptop", "Electronics", 80000, 1, "2024-02-10"),
    (1005, 4, "Keyboard", "Accessories", 3000, 2, "2024-02-15"),
    (1006, 5, "Monitor", "Electronics", 25000, 1, "2024-03-01"),
    (1007, 2, "Headphones", "Accessories", 5000, 2, "2024-03-10"),
    (1008, 6, "Phone", "Electronics", 55000, 1, "2024-03-20"),
    (1009, 7, "Laptop", "Electronics", 70000, 2, "2024-04-05"),
    (1010, 1, "Keyboard", "Accessories", 3500, 1, "2024-04-15"),
    (1011, 8, "Monitor", "Electronics", 30000, 1, "2024-05-01"),
    (1012, 9, "Mouse", "Accessories", 2000, 2, "2024-05-10"),
    (1013, 10, "Phone", "Electronics", 60000, 1, "2024-05-20"),
    (1014, 3, "Headphones", "Accessories", 6000, 2, "2024-06-01"),
    (1015, 5, "Laptop", "Electronics", 85000, 1, "2024-06-15")
]

order_columns = [
    "order_id",
    "customer_id",
    "product",
    "category",
    "amount",
    "quantity",
    "order_date"
]

df_orders = spark.createDataFrame(order_data, order_columns)

display(df_orders)

# COMMAND ----------

department_data = [
    ("IT", "Technology"),
    ("HR", "Human Resources"),
    ("Finance", "Finance"),
    ("Marketing", "Marketing")
]

department_columns = [
    "department",
    "department_type"
]

df_department = spark.createDataFrame(
    department_data,
    department_columns
)

display(df_department)

# COMMAND ----------

# MAGIC %md
# MAGIC #Q1. Display all columns from df_employee.

# COMMAND ----------

df_employee.show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q2. Display only:
# MAGIC # Display only: employee_name , department , salary

# COMMAND ----------

df_employee.select(
    "employee_name",
    "department",
    "salary"
).show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q3. Find employees whose salary is greater than ₹75,000.
# MAGIC
# MAGIC

# COMMAND ----------

df_employee.filter(df_employee.salary > 75000).show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q4.Find employees who belong to the IT department.   

# COMMAND ----------

df_employee.filter(df_employee.department == 'IT').show()

# COMMAND ----------

# MAGIC %md
# MAGIC # Q5. Find employees from Pune.

# COMMAND ----------

df_employee.filter(df_employee.city == "Pune").show()

# COMMAND ----------

# MAGIC %md
# MAGIC # Q6. Find employees whose salary is between ₹60,000 and ₹90,000.

# COMMAND ----------

df_employee.filter((df_employee.salary >= 60000) & (df_employee.salary <= 90000)).show()

# COMMAND ----------

# MAGIC %md
# MAGIC # Q7. Find employees whose department is either IT or Finance.

# COMMAND ----------

df_employee.filter(df_employee.department.isin("IT", "Finance")).show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q8.Sort employees by salary in descending order.

# COMMAND ----------

df_employee.orderBy(df_employee.salary.desc()).show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q9.Display the top 3 highest-paid employees

# COMMAND ----------

df_employee.orderBy(df_employee.salary.desc()).limit(3).show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q10.Count the total number of employees.

# COMMAND ----------

df_employee.count()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q11.Create a new column:

# COMMAND ----------

df_employee.withColumn("annual_salary" , df_employee.salary * 12).show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q12.Create: salary_category
# MAGIC #Rules: 
# MAGIC ###salary >= 90000 → High
# MAGIC ###salary >= 70000 → Medium
# MAGIC ###otherwise → Low

# COMMAND ----------

df_employee.withColumn(
    "salary_category",
    when(df_employee.salary >= 90000 , "High")
    .when(df_employee.salary >= 70000, "Medium")
    .otherwise("Low")
).show()

# COMMAND ----------

# MAGIC %md
# MAGIC Q13
# MAGIC
# MAGIC Create:
# MAGIC
# MAGIC experience_level
# MAGIC
# MAGIC Based on hire year:
# MAGIC
# MAGIC Before 2022 → Experienced
# MAGIC 2022 or later → Recent

# COMMAND ----------

from pyspark.sql.functions import year, when

# COMMAND ----------


df = df_employee.withColumn(
    "experience_level",
    when(year('hire_date') < '2022' , "Experienced 2022")
    .otherwise("Recent") 
)
df.show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q14.Increase salary by 10% for IT employees.

# COMMAND ----------

df = df_employee.withColumn(
    "salary",
    when(df_employee.department == "IT" , df_employee.salary * 1.10)
    .otherwise(df_employee.salary)
)
df.show()

# COMMAND ----------

# MAGIC %md
# MAGIC Q15
# MAGIC
# MAGIC Create:
# MAGIC
# MAGIC salary_after_bonus
# MAGIC
# MAGIC Rules:
# MAGIC
# MAGIC IT       → 15% bonus
# MAGIC Finance  → 10% bonus
# MAGIC HR       → 5% bonus

# COMMAND ----------

df = df_employee.withColumn(
    "salary_after_bonus",
    when(df_employee.department == "IT" , df_employee.salary * 1.15)
    .when(df_employee.department == "Finance" , df_employee.salary * 1.10)
    .when(df_employee.department == "HR" , df_employee.salary * 1.5)
    .otherwise(df_employee.salary)
)
df.show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q16. Replace NULL salary with 0.

# COMMAND ----------

df = df_employee.fillna({"salary": 0})

df.show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q17.Replace NULL city with "Unknown".
# MAGIC
# MAGIC

# COMMAND ----------

df_employee = df_employee.fillna({"city": "unknown"})
df_employee.show()

# COMMAND ----------

df_employee = df_employee.fillna({"salary": 0})
df_employee.show()

# COMMAND ----------

# MAGIC %md
# MAGIC Q18
# MAGIC
# MAGIC Create a column:
# MAGIC
# MAGIC employee_info
# MAGIC
# MAGIC Output:
# MAGIC
# MAGIC Amit - IT - Mumbai

# COMMAND ----------

from pyspark.sql.functions import concat_ws, col

# COMMAND ----------

df_employee = df_employee.withColumn( 
            "employee_information",
    concat_ws(" - " , col("employee_name"), col("department"), col("city"))
).show()

# COMMAND ----------

df_customer.show()

# COMMAND ----------

from pyspark.sql.functions import upper, col

# COMMAND ----------

# MAGIC %md
# MAGIC #Q19.Convert customer names to uppercase.

# COMMAND ----------

df_customer=df_customer.withColumn(
"customer_name",
upper("customer_name")
).show()

# COMMAND ----------

# MAGIC %md
# MAGIC #20.Convert email addresses to lowercase.

# COMMAND ----------

df_customer = df_customer.withColumn(
    "email",
    lower("email")
).show()

# COMMAND ----------

# MAGIC %md
# MAGIC Q21
# MAGIC
# MAGIC Extract the email domain.
# MAGIC
# MAGIC Example:
# MAGIC
# MAGIC chetan@gmail.com → gmail.com

# COMMAND ----------

df = customer_df.withColumn(
    "Domain_Extraction",
     get(split(col("email"), "@"), 1)
)
df.show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q22.Find customers whose email contains "gmail".

# COMMAND ----------

df = customer_df.filter(col("email").contains("gmail"))
df.show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q23.Find customers whose name starts with "A".

# COMMAND ----------

df = customer_df.filter(col("customer_name").like("A%"))
df.show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q24.Create a column containing the length of each customer's name.

# COMMAND ----------

df = customer_df.withColumn("name_length", length("customer_name"))
df.show()

# COMMAND ----------

# MAGIC %md
# MAGIC #Q25.Remove leading/trailing spaces from a customer name.

# COMMAND ----------

df = customer_df.withColumn(
    "customer_name",
    trim("customer_name")
)
df.show()

# COMMAND ----------

