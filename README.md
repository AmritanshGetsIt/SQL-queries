Basic Analysis
The database contains the following tables:

product_category_name_translation

sellers

customers

geolocation

order_items

order_payments

order_reviews

orders

products

leads_qualified

leads_closed

Next, we will inspect the structure of key tables like customers, orders, order_items, and products to align the SQL queries with the actual schema. ​​

Here’s a quick breakdown of key tables and relevant columns for our SQL queries:

customers: customer_id, customer_unique_id, customer_city, customer_state

orders: order_id, customer_id, order_status, order_purchase_timestamp

order_items: order_id, product_id, price, freight_value

products: product_id, product_category_name, product_weight_g

Now, we will execute the queries based on this schema and provide the outputs. ​​

Here are the results of the SQL queries:

Customers Who Placed More Than 5 Orders

No results found (possibly due to data constraints in the orders table).

Top 5 Product Categories by Average Price

pcs: 203 products, avg price $1098.34

portateis_casa_forno_e_cafe: 76 products, avg price $624.29

eletrodomesticos_2: 238 products, avg price $476.12

agro_industria_e_comercio: 212 products, avg price $342.12

instrumentos_musicais: 680 products, avg price $281.62

First 5 Orders with Customer Locations

Order e481f51cbdc54678b7cc49136f2d6af7: São Paulo, Status: Delivered

Order 53cdb2fc8bc7dce0b6741e2150273451: Barreiras, Status: Delivered

Order 47770eb9100c2d0c44946d9cf07ec65d: Vianópolis, Status: Delivered

Order 949d5b44dbf5de918fe9c16f97b45f8a: São Gonçalo do Amarante, Status: Delivered

Order ad21c59c0840e6cb83a9ceb5573f8159: Santo André, Status: Delivered

Customers Without Orders

No results found, meaning all customers in the dataset have at least one order.

Top 5 Most Expensive Orders

Order 03caa2c082116e1d31e67e9ae3700499: $13,440.00

Order 736e1922ae60d0d6a89247b851902527: $7,160.00

Order 0812eb902a67711a1cb742b3cdaa65ae: $6,735.00

Order fefacc66af859508bf1a7934eab1e97f: $6,729.00

Order f5136e38d1a14a4dbd87dff67da82701: $6,499.00

Total Revenue and Average Order Value

Total Revenue: $13,591,643.70

Average Order Value: $120.65

Let me know if you need any modifications or additional queries!
