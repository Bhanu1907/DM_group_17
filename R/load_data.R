library(readr)
library(RSQLite)

# Establish a connection to the SQLite database
my_connection <- dbConnect(SQLite(), "Database/hi_import.db")

# Read datasets
customer_dataset <- readr::read_csv("Ecommerce/hi_customer_dataset.csv")
delivery_dataset <- readr::read_csv("Ecommerce/hi_delivery_dataset.csv")
orders_dataset <- readr::read_csv("Ecommerce/hi_orders_dataset.csv")
product_dataset <- readr::read_csv("Ecommerce/hi_product_dataset.csv")
productcategory_dataset <- readr::read_csv("Ecommerce/hi_productcategory_dataset.csv")
promotion_dataset <- readr::read_csv("Ecommerce/hi_promotion_dataset.csv")
supplier_dataset <- readr::read_csv("Ecommerce/hi_supplier_dataset.csv")
transactions_dataset <- readr::read_csv("Ecommerce/hi_transactions_dataset.csv")

# Write tables to the database
dbWriteTable(my_connection, 'customer_table', customer_dataset)
dbWriteTable(my_connection, 'delivery_table', delivery_dataset)
dbWriteTable(my_connection, 'orders_table', orders_dataset)
dbWriteTable(my_connection, 'product_table', product_dataset)
dbWriteTable(my_connection, 'productcategory_table', productcategory_dataset)
dbWriteTable(my_connection, 'promotion_table', promotion_dataset)
dbWriteTable(my_connection, 'supplier_table', supplier_dataset)
dbWriteTable(my_connection, 'transactions_table', transactions_dataset)