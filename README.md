# Java-Week3-To Do List With DB
###Description
This project is a todo list app that allows a user to manage his/her tasks with efficiency. It also has category integration so that you can group your tasks. 

### Live Link
<a href="https://todolistwithdb.herokuapp.com/">https://todolistwithdb.herokuapp.com/</a>

### Technologies Used
This project was created using:
 1.Java
 2.Spark
 3.Handlebars
 4.Gradle
 5.Postgresql

### Setup/Installation
1.Install Postgres SQL to be able to create a local database on your machine.
2.Fork this repository.
3.Clone the repository to your machine.
4.Open the folder in your IDE of choice.
5.Run the command postgres in a terminal.
6. Create two `.sql` files named `create.sql` and `drop.sql`. The `create.sql` file should contain
 the following commands:
    `CREATE DATABASE todolist;`
    
    `\c todolist;`
    
    `CREATE TABLE tasks (id SERIAL PRIMARY KEY, description VARCHAR, completed BOOLEAN, categoryid INTEGER);`
    
    `CREATE TABLE categories (id SERIAL PRIMARY KEY, name VARCHAR);`
    
    `CREATE DATABASE todolist_test WITH TEMPLATE todolist;`

The `drop.sql` file should have the following commands:
    `DROP DATABASE todolist_test;`
    
    `DROP DATABASE todolist;`
    
7.Run the command `psql < create.sql` in a separate terminal window.

8.Go to the IDE and navigate to the folder with the main file App.java, then compile and run the
program on the terminal. Alternatively, run the program in your IDE.

9.In the terminal, locate the url address showing the spark server port number. For example
, this can be http://localhost:4567/user

You can then change the routes to access different pages.

### Support  and Contacts
Einstein Eliam Murithi. <br/> If you run into any issues or would like to make a contribution to the
work kindly email me at <a href="einsteineliam@gmail.com">einsteineliam@gmail.com</a>

## License
This project is free to use under the **GNU General Public License**. See the full [LICENSE](https://choosealicense.com/licenses/gpl-3.0/) for details.