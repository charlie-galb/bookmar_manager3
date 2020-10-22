* User stories

1. As a user I would like to be able to see a list of bookmarks

+-----------+                    +------------+        
|    User    +--get bookmark -->+  bookmark.rb  
+-----------+                    +------------+      




* Setting up a database
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. git Run the query we have saved in the file 01_create_bookmarks_table.sql


* Setting up a test database
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 02_create_test_bookmarks_table.sql