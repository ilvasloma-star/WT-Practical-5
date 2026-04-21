# 🚀 How to Clone and Run the Project

## 📥 Step 1: Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/PR5-Servlet-MySQL.git
cd PR5-Servlet-MySQL
```

---

# 🗄️ Step 2: Setup Database

Start MySQL:

### Fedora

```bash
sudo systemctl start mysqld
```

### Ubuntu

```bash
sudo systemctl start mysql
```

---

Run database script:

```bash
mysql -u root -p < database/db.sql
```

👉 Enter password (default: `tiger`)

---

# 📁 Step 3: Copy Project to Tomcat

### Fedora

```bash
sudo cp -r project /var/lib/tomcat/webapps/PR5
```

### Ubuntu

```bash
sudo cp -r project /var/lib/tomcat10/webapps/PR5
```

---

# ⚙️ Step 4: Compile Servlet

### Fedora

```bash
cd /var/lib/tomcat/webapps/PR5

javac -cp WEB-INF/lib/mysql-connector-j-8.0.33.jar:/usr/share/tomcat/lib/servlet-api.jar servlet.java

sudo mv servlet.class WEB-INF/classes/
```

---

### Ubuntu

```bash
cd /var/lib/tomcat10/webapps/PR5

javac -cp WEB-INF/lib/mysql-connector-j-8.0.33.jar:/usr/share/tomcat10/lib/servlet-api.jar servlet.java

sudo mv servlet.class WEB-INF/classes/
```

---

### Windows (Command Prompt)

```cmd
cd C:\path\to\apache-tomcat\webapps\PR5

javac -cp "WEB-INF\lib\mysql-connector-j-8.0.33.jar;C:\apache-tomcat\lib\servlet-api.jar" servlet.java

move servlet.class WEB-INF\classes\
```

---

# 🔄 Step 5: Restart Tomcat

### Fedora

```bash
sudo systemctl restart tomcat
```

### Ubuntu

```bash
sudo systemctl restart tomcat10
```

### Windows

Run:

```
shutdown.bat
startup.bat
```

---

# 🌐 Step 6: Run the Project

Open browser:

```
http://localhost:8080/PR5/servlet
```

---

# ✅ Expected Output

A table showing:

* Book ID
* Title
* Author
* Price
* Quantity

---

# 🚨 Common Issues

### ❌ 404 Not Found

* Check URL
* Ensure folder name = `PR5`

---

### ❌ 500 Internal Server Error

* Check database connection
* Check servlet code

---

### ❌ MySQL Access Denied

* Wrong password → update in `servlet.java`

---

### ❌ Driver Error

* Ensure file exists:

```
WEB-INF/lib/mysql-connector-j-8.0.33.jar
```

---

# 🧠 Notes

* MySQL must be running
* Password must match (`tiger` recommended)
* Do NOT rename folders
* Use `jakarta.servlet` imports

---

# 🎯 Done!

You have successfully run a Java Servlet connected to MySQL 🎉
