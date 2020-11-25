import json
import os
import mysql.connector
from mysql.connector import Error
from flask import Flask

app = Flask(__name__)

@app.route('/health/')
@app.route('/health')
def application_status():
    return "Application health STATUS=UP"

@app.route('/free_recipe')
def recipe():
    text = open('/home/ubuntu/free_recipe.txt', 'r+')
    content = text.read()
    text.close()
    return content

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)