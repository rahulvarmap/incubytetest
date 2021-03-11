import csv 

with open('au.csv') as csv_file:
 data = csv.reader(csv_file, delimiter ='|')
 for row in data:
    print(row)