from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="dbms_project"
)

@app.route("/")
def home():
    return render_template('index.html')

@app.route("/view")
def view():
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM EMPLOYYEE")
    data = cursor.fetchall()
    return render_template('ViewData.html', data=data, delete_button=True)

@app.route('/search', methods=['POST'])
def search():
    empid = request.form['empid']
    cursor = mydb.cursor()
    query = "SELECT * FROM EMPLOYYEE WHERE EMP_ID = %s"
    cursor.execute(query, (empid,))
    data = cursor.fetchall()
    return render_template('ViewData.html', data=data)

@app.route('/delete', methods=['POST'])
def delete():
    empid = request.form['empid']
    cursor = mydb.cursor()
    query = "DELETE FROM EMPLOYYEE WHERE EMP_ID = %s"
    cursor.execute(query, (empid,))
    mydb.commit()
    return render_template('index.html')

@app.route('/insert', methods=['GET','POST'])
def insert():
    if request.method == 'POST':
        empid = request.form['empid']
        compname = request.form['compname']
        lname = request.form['lname']
        fname = request.form['fname']
        phone = request.form['phone']
        salary = request.form['salary']
        mycursor = mydb.cursor()
        sql = "INSERT INTO EMPLOYYEE (EMP_ID, EMP_COMPANY_NAME, EMP_LNAME, EMP_FNAME, EMP_PHONE, EMP_SALARY) VALUES (%s, %s, %s, %s, %s, %s)"
        val = (empid, compname, lname, fname, phone, salary)
        mycursor.execute(sql, val)
        mydb.commit()
        mycursor.close()
    return render_template('InsertData.html')

app.run(debug=True)
