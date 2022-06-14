# README

Name: Merchant-app

Description
* With this application you can manage manage inventory across different warehouses. You can add, edit, delete and view     products as well as assigning the products to different warehouses. You can also view product specific information such as price and product description on the individual show pages of the products.

Usage
1. To get some initial data run rails db:seed. Two products assigned to the Warehouse Kaufland will be created
2. From the main products menu you can then go view all products (across warehouses)
3. To create a new product and assign it to a Warehouse, go to Create a new Product and create the product
4. If you select "Go to all Warehouses" at the bottom of the screen you will get to the list of warehouses where you can see products listed per warehouse.

Roadmap
* One current limitation is that you cannot create several units of the same product in bulk and assign to different warehouses. One idea to address this would be to create a third table just for inventory with product id, warehouse id and quantity as columns.

System Testing and Unit Testing
- I have used rail’s Minitest to perform one System Test using the Capybara gem. The fixtures helper was used.
- I have set up one unit test where I test the Warehouse model (warehouse_test.rb)
- Ideally more tests should be added.

* Ruby version: '3.0.3'

* Database: sqlite3', '~> 1.4'

