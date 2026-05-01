import pyodbc 
import pandas as pd 
print(pyodbc.drivers())
con=pyodbc.connect(
    "Driver={SQL Server};"
    "SERVER=DESKTOP-AV9ABDJ\SQLEXPRESS;"
    "Database=anubhi;"
    "trusted_connection=yes;"
    )
query="select*from Employee_Data;"
data=pd.read_sql(query,con)
y=pd.DataFrame(data)
print(y)
data2=y.dropna()
print(data2)
print(data2.isnull())
y.to_excel('EMPLOYEE DATA.xlsx',index=False)