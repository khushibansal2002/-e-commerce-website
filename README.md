
## Banasthali Bazaar

“Banasthali Bazaar” is a web-based project developed for the students of
Banasthali Vidyapith to simplify buying and selling hostel utilities.

This Website is built for following purpose:-

- For buying product online
- Adding and managing products
-  User Friendly
- This is a Mini-project developed using Java,      hibernate, Bootstrap.

Admin Have Following Access for this E-Commerce website:-

- Add New Category
- View Available Products
- View Current Users
- View Category

Users Have Following Access for this E-Commerce website:-

- Create New Account or Register
- Login
- View Available Products
- Select Product to Buy
- Select Product Quantity
- Add To cart
- Go to Checkout Page
- Sell product
- Add product

## Technologies used:-

Front-End Development:

- Html
- Css
- Javascript
- Bootstrap 4

Back-End Development:

- Java
- JDBC
- Servlet
- Hibernate
- Maven Support
- Database used
- Sql/MySql

Note:- This is a basic Project so we have not think about the security and we have only implemented this project using the generic servlet .

## Installation

1. Development Platform - Netbeans 11.2

  - [Netbeans 11.2](https://netbeans.apache.org/download/nb112/nb112.html)

2. Server - Apache Tomcat Server

- [Apache Tomcat](https://tomcat.apache.org/download-90.cgi)

3. Build Tool - Maven

- [Maven](https://maven.apache.org/download.cgi)

4.  Database-sqlyog

- [Sqlyog](https://sqlyog.en.download.it/)

5.  Database- mysql

- [Mysql](https://www.mysql.com/)

6. Configuring tomcat with Eclipse (windows) 

- [Click here](https://javapointers.com/how-to/add-tomcat-server-netbeans/#:~:text=Add%20Tomcat%20Server%20to%20NetBeans&text=Open%20your%20NetBeans.,server%20that%20will%20be%20added.)

7.  Installation of maven in eclipse

- [Click here](https://netbeans.apache.org/kb/docs/javaee/maven-entapp.html)

8.  Run your mysql Database.

9. Configure your databse configuration in hibarnate.cfg.xml 

```bash
  <hibernate-configuration>
    <session-factory>       
        <property name="connection.driver_class">com.mysql.jdbc.Driver</property>    
        <property name="connection.url">jdbc:mysql://localhost:3306/mycart</property>        
        <property name="connection.username">root</property>        
        <property name="connection.password">password</property>       
        <property name="dialect">org.hibernate.dialect.MySQL57Dialect</property>
        <property name="hbm2ddl.auto">update</property> 
        <property name="show_sql">true</property>    
        <mapping class="com.learn.mycart.entities.User" />  
        <mapping class="com.learn.mycart.entities.Category" />  
        <mapping class="com.learn.mycart.entities.Product" />  
            
        
    </session-factory>
    
</hibernate-configuration>
```

10. Instrall Dependency

```bash
 <dependency>
            <groupId>javax</groupId>
            <artifactId>javaee-web-api</artifactId>
            <version>7.0</version>
            <scope>provided</scope>
        </dependency>

      
        
        <dependency>
            <groupId>org.hibernate</groupId>
            <artifactId>hibernate-core</artifactId>
            <version>5.4.2.Final</version>
        </dependency>
```
11. Run on server




## Usage 

Accessing application

- Open a web browser and nevigate to the home page of the banasthali bazaar project.
- If you are a new user , click on register button and fill in the required details the required details to create an account .
If you are an existing user enter your login credentials to access your account .

Buy a product

- Click on add to cart button to add product on cart.
 - Click on checkout button .

 Sell a product

 - Click on sell button .
 - Add product details .
 - Click on add product.

 ## Screenshorts:-


![image](https://user-images.githubusercontent.com/111282513/233967135-949d500a-5864-4078-b495-60560269ceca.png)

![image](https://user-images.githubusercontent.com/111282513/233967397-6fd5439f-e43e-414b-8b0b-bd60bebc9db1.png)

![image](https://user-images.githubusercontent.com/111282513/233967472-20bb48fb-6935-4219-8652-55b70c1fdf81.png)

![image](https://user-images.githubusercontent.com/111282513/233967516-3ac37992-ad71-423f-90aa-7ac837623bb4.png)

![image](https://user-images.githubusercontent.com/111282513/233967589-e3b8293f-3155-4802-9fc6-608a01b0679f.png)




