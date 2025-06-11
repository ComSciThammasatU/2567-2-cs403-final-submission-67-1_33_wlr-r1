**รหัสโครงงาน:** 67-1_33_wlr-r1

**ชื่อโครงงาน (ไทย):** ระบบจัดการพัสดุของหอพัก

**Project Title (Eng):** DORMITORY PACKAGE MANAGEMENT SYSTEM

**อาจารย์ที่ปรึกษาโครงงาน:** ผศ. ดร.วิลาวรรณ รักผกาวงศ์

**ผู้จัดทำโครงงาน:**
1. นายนันทกร ลามอ 6409682553 nunthakorn.lam@dome.tu.ac.th

**Project Structure**
```
├── demo/
│ ├── 67-2_CS403_67-1_33_wlr-r1_demo.mp4 		# ไฟล์วิดีโอแสดงขั้นตอนการติดตั้งโปรแกรม
├── final_reports/
│ ├── 67-2_CS403_67-1_33_wlr-r1.pdf 			# ไฟล์เล่มรายงานฉบับสมบูรณ์
│ ├── 67-2_CS403_67-1_33_wlr-r1_abstract_th.txt 	# ไฟล์บทคัดย่อโครงงาน (ภาษาไทย)
│ ├── 67-2_CS403_67-1_33_wlr-r1_abstract_en.txt 	# ไฟล์บทคัดย่อโครงงาน (ภาษาอังกฤษ)
├── README.md 				# ไฟล์ README.md
├── .github/ 				# GitHub Actions workflows สำหรับการ deploy GitHub Pages
├── api/ 				# โฟลเดอร์รวมไฟล์ Soure Code ฝั่ง Backend
├── public/ 				# โฟลเดอร์สำหรับเก็บ static assets รูปภาพต่างๆ
├── src/ 				# โฟลเดอร์หลักของ Source code ฝั่ง Frontend
│ ├── pages/ 				# โฟลเดอร์หลักของหน้าต่างๆ ในโปรแกรม
│ ├── assets/ 				# Assets ที่ใช้ในหน้าต่างๆ
│ ├── utils/ 				# โฟลเดอร์รวมไฟล์ตั้งค่าฟังก์ชันเพิ่มเติม
│ └── main.jsx 				# ไฟล์แสดง Route ของโปรแกรม
├── templates/ 				# Template ใช้สำหรับการตั้งค่าไฟล์โปรแกรม
│ ├── env_template.txt 		        # Template ของไฟล์ .env
│ ├── database_template.sql             # Template ในการ Setup database
├── .gitignore 				# ไฟล์ตั้งค่า gitignore
├── .eslintrc.js 			# ไฟล์ตั้งค่า ESlint
├── index.html 				# โฟลเดอร์ Html หลัก
├── package.json 			# ไฟล์ dependenies ของระบบ
├── package-lock.json 		        # ไฟล์ Locks dependency versions ของระบบ
└── vite.config.js 			# ไฟล์ตั้งค่า Vite Config
```
  

## ⚙️สิ่งที่จำเป็นเพื่อให้โปรแกรมใช้งานได้

**โปรแกรมที่จำเป็น**

1. **Node.js** สำหรับรันโปรแกรม 
[ดาวน์โหลด Node.js](https://nodejs.org/en/download)
2. **XAMPP** สำหรับฐานข้อมูล MySQL 
[ดาวน์โหลด XAMPP](https://www.apachefriends.org/download.html)
3. **Text Editor** เช่น Notepad หรือ VS Code

**เพิ่มเติม**
- **บัญชี Gmail** สำหรับใช้ส่งอีเมลผ่านโปรแกรม

  
  
  

## 🛠️ขั้นตอนการติดตั้ง (ทำครั้งเดียว)
**ทำการ clone project**
1. เปิด cmd ขึ้นมา จากนั้นรันคำสั่ง
```bash
git clone https://github.com/ComSciThammasatU/2567-2-cs403-final-submission-67-1_33_wlr-r1.git
cd 2567-2-cs403-final-submission-67-1_33_wlr-r1
npm install

cd api
npm install
```
---
  **ตั้งค่า Gmail Account**
1. เข้า [Google Account Security](https://myaccount.google.com/security)
2. ทำการตั้งค่าเปิดการยืนยันแบบ 2 ขั้นตอน
3. ค้นหา "App password"
4. สร้างรหัสผ่านใหม่ เช่นชื่อ "myproject"
5. หลังจากนั้นจะได้รหัส 16 หลัก เช่น "abcd efgh ijkl mnop" ซึ่งจะใช้สำหรับการตั้งค่า Email account สำหรับใช้ส่งอีเมลของโปรแกรม
---
**การตั้งค่าฐานข้อมูล**
1. เปิดโปรแกรม XAMPP
2. กด **Start** ที่เมนู Apache และ MySQL จนทั้งสองเมนูขึ้นแถบสีเขียว
3. ที่แถบ MySQL กดที่ปุ่ม **Admin** ระบบจะเด้งไปยังหน้า Browser สำหรับจัดการฐานข้อมูล
4. ที่แถบมุมบนขวา กดปุ่ม **New** สำหรับสร้างฐานข้อมูลใหม่
5. กรอกชื่อฐานข้อมูล พร้อมกดปุ่ม **create**
6. กดเข้าไปที่ฐานข้อมูลที่สร้างใหม่ แล้วกดไปยังแถบ **import**
7. เลือกไฟล์ `database_template.sql` ที่ได้จากการ clone โปรแกรม ซึ่งอยู่ใน folder templates จากนั้นกดปุ่ม **import**

---
**ต่อมาหลังจาก Set-up Gmail Account กับ ฐานข้อมูลแล้ว ให้ดำเนินการดังนี้**
สร้างไฟล์ `.env` ใน folder `api/` โดย copy จาก format ด้านล่าง

```env
JWT_SECRET=my_secret_key

# EMAIL
EMAIL_USER='your_email'
EMAIL_PASS='your_email_16_digit_code'

# DATABASE
DB_HOST=127.0.0.1
DB_PORT=3306
DB_USER=root
DB_PASSWORD=
DB_NAME='your_database_name'
```
โดยให้เปลี่ยนการตั้งค่าตาม account ของตนเอง 
**EMAIL_USER** → อีเมลของตนเอง
**EMAIL_PASS** → รหัส 16 หลัก
**DB_NAME** → ชื่อ database ที่ตั้งไว้

## ⌨️ขั้นตอนการรันโปรแกรม
### Start Database
1. เปิด **XAMPP** → กดปุ่ม Start ทั้ง **Apache** และ **MySQL** จนขึ้นแถบ 🟩สีเขียว
### Start Frontend
2. ไปที่โฟลเดอร์โปรเจกต์
3. รัน cmd ที่ folder `2567-2-cs403-final-submission-67-1_33_wlr-r1` พิมพ์คำสั่ง
```bash
npm run dev
```
### Start Backend
4. ไปที่โฟลเดอร์โปรเจกต์ แล้วกดเข้าไปยัง folder `api/` แล้วรัน cmd อีกหนึ่งอัน พร้อมพิมพ์คำสั่ง 
```bash
npm run dev
```

---