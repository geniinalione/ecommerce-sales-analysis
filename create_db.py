import sqlite3
import pandas as pd

conn = sqlite3.connect("data/ecommerce.db")

files = {
    "orders": "data/olist_orders_dataset.csv",
    "order_items": "data/olist_order_items_dataset.csv",
    "products": "data/olist_products_dataset.csv",
    "customers": "data/olist_customers_dataset.csv",
    "payments": "data/olist_order_payments_dataset.csv",
    "reviews": "data/olist_order_reviews_dataset.csv",
}

for table_name, path in files.items():
    df = pd.read_csv(path)
    df.to_sql(table_name, conn, if_exists="replace", index=False)
    print(f"✅ {table_name} загружена ({len(df)} строк)")

conn.close()
print("База данных создана: data/ecommerce.db")

