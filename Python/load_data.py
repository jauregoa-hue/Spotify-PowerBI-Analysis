import pandas as pd
import sqlite3

CSV_FILE = "dataset.csv"
DB_FILE = "spotify.db"
TABLE = "spotify_raw"

df = pd.read_csv(CSV_FILE)

conn = sqlite3.connect(DB_FILE)
df.to_sql(TABLE, conn, if_exists="replace", index=False)
conn.close()

print(f"Loaded {len(df):,} rows into table: {TABLE}")
print("Columns:", list(df.columns))