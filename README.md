# Music World - Premium JSP Online Music Portal

Welcome to **Music World**, a modernized, high-performance web application designed for browsing, searching, and downloading premium audio/video tracks. Overhauled from a legacy structure, this portal features a stunning Spotify-inspired dark glassmorphism layout, responsive card grids, instant asynchronous search, and full admin capabilities.

---

## 🌟 Key Features

* **Spotify-Style Dark Theme:** Immersive radial-gradient dark palette utilizing the **Inter** font family, soft shadows, and clean layouts.
* **Modern CSS Flex & Card Grids:** Tabular song layouts have been completely modernized using CSS Grid card systems featuring subtle 3D hover-lift micro-animations and glowing indicators.
* **Asynchronous Search Bar:** A streamlined, horizontally aligned search engine supporting instant search on enter key or search button click without standard page refreshes.
* **Expanded Music Catalog:** Pre-populated with **150 curated tracks** (75 Bollywood classics and 75 Pop anthems) stored across synchronized MySQL databases.
* **Functional Download System:** Ready-to-go environment with 450+ matching dummy media assets (.mp3 files and .jpg artwork) so that direct download links resolve perfectly with zero 404 errors.
* **Stunning "About Us" & Feedback Portal:** An ad-free, sleek branding screen featuring curational statistics and an interactive glassmorphic feedback submission form.
* **Secure Admin Control Panel:** Full capability to add, update, or remove song metadata, artwork, and streaming links securely.

---

## 🛠️ Technology Stack

* **Backend:** Java Server Pages (JSP) 2.3, JRE 8 (Java Runtime Environment)
* **Database:** MySQL 8.4 / MariaDB (running on port `3306`)
* **Web Server:** Apache Tomcat 9.0 (listening on port `8080`)
* **Frontend:** HTML5, CSS3 (Vanilla CSS, Google Font: Inter)

---

## 📁 Workspace Folder Structure

```text
📁 Project Root
├── 📁 apache-tomcat-9     # 🚀 Active Tomcat Web Server Binaries & Logs
├── 📁 mysql_data          # 🗄️ Active Local MySQL Database Data Files (Gitignored)
├── 📁 music               # 💻 WEB APP CONTEXT (JSP, CSS, Images, Scripts)
│   ├── 📁 css             # Custom Glassmorphic CSS Style sheets (layout.css, html.css)
│   ├── 📁 menu            # JSP Includes for Headers, Menus, Footers & Sidebars
│   ├── 📄 about.jsp       # Modern About Us page & Feedback submission
│   ├── 📄 search.jsp      # Search bar & Asynchronous search engine JSPs
│   ├── 📄 login.jsp       # Admin Login Form
│   ├── 📄 schema.sql      # Starter database SQL Import Schema
│   └── (150+ songs)       # Directly downloadable media files
├── 📄 .gitignore          # Repository size exclusions
└── 📄 README.md           # You are here!
```

---

## 🚀 How to Run & Deploy

### 1. Initialize & Start the Database
The project utilizes a private database folder to isolate configurations and prevent host port issues.
1. Start the MySQL daemon mapping to the `mysql_data` folder on port `3306`:
   ```powershell
   & "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysqld.exe" --datadir="c:\path\to\mysql_data" --port=3306
   ```
2. Configure the database credentials to match `DConnection.jsp` specifications:
   * **User:** `root`
   * **Password:** `jayvik`
3. Create databases `jayvik123` (audio) and `jayvik12` (video):
   ```sql
   CREATE DATABASE jayvik123;
   CREATE DATABASE jayvik12;
   ```
4. Import the starter SQL schema script `music/schema.sql` to initialize tables.

### 2. Start the Tomcat Server
1. Ensure the Java JRE 8 path is correctly set:
   ```powershell
   $env:JRE_HOME="C:\Program Files\Java\jre1.8.0_481"
   ```
2. Run the Tomcat startup batch file:
   ```powershell
   & "c:\path\to\apache-tomcat-9\bin\catalina.bat" run
   ```

### 3. Access in Browser
Open your preferred web browser and navigate to:
👉 **[http://localhost:8080/music/index.jsp](http://localhost:8080/music/index.jsp)**

---

## 🔐 Admin Access & Credentials

To manage songs, delete tracks, or check feedback, click **Login** in the main menu:
* **Username:** `jayvik`
* **Password:** `kishu`
