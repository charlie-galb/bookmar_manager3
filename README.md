# Bookmark Manager

# Intructions


-- User Stories --
As a user,
so I can see the bookmarks that I've saved,
I would like to see a list of bookmarks.

![alt text](../images/User_story_1.png)

+-----------+                    +------------+        
|    User    +--get bookmark -->+  Bookmarks  
+-----------+                    +------------+    


As a user
so that I can remember websites I like,
I would like to be able to add to my saved bookmarks.

+-----------+                    +------------+        
|    User    +--add bookmark -->+  Bookmarks
+-----------+                    +------------+    

# Creating a database
1. Connect to psql by typing psql in the terminal
2. Create the database using the command CREATE DATABASE bookmark_manager whilst in psql;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Follow the above steps to create a second test database called <code>bookmark_managr_test</code> with an identical table
