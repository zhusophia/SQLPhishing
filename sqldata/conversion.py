## convert csv to SQLite


import sqlite3
import pandas as pd

df = pd.read_csv('web-page-phishing.csv')
df.columns = df.columns.str.strip()
connection = sqlite3.connect('web-page-phishing.db')
df.to_sql('phishdata', connection, if_exists="replace")
connection.close()