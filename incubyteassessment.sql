CREATE TABLE CUST_DATA(
    customer_name varchar(255) PRIMARY KEY,
    customer_ID varchar(18) NOT NULL,    
    customer_open_date date NOT NULL,
    last_Consulted_date date NOT NULL,
    vaccination_type char(5),
    doctor_cons varchar(25),
    state_1 char(5),
    country char(5),
    post_code number(5),
    dob date,
    active_cust char(1)
 );

INSERT ALL
    INTO CUST_DATA(customer_name, customer_ID, customer_open_date, last_Consulted_date, vaccination_type, doctor_cons, state_1, country, post_code, dob, active_cust)
    VALUES ('Alex', '123457', to_date('20101012'), to_date('20121013'), 'MVD', 'Paul', 'SA', 'USA', 10090, to_date('06031987'), 'A' )
    INTO CUST_DATA(customer_name, customer_ID, customer_open_date, last_Consulted_date, vaccination_type, doctor_cons, state_1, country, post_code, dob, active_cust)
    VALUES ('John', '123458', to_date('20101012'), to_date('20121013'), 'MVD', 'Paul', 'TN', 'IND', 67098, to_date('09041988'), 'A' )
    INTO CUST_DATA(customer_name, customer_ID, customer_open_date, last_Consulted_date, vaccination_type, doctor_cons, state_1, country, post_code, dob, active_cust)
    VALUES ('Mathew', '123459', to_date('20101012'), to_date('20121013'), 'MVD', 'Paul', 'WAS', 'PHIL', 20987, to_date('16061989'), 'A' )
    INTO CUST_DATA(customer_name, customer_ID, customer_open_date, last_Consulted_date, vaccination_type, doctor_cons, state_1, country, post_code, dob, active_cust)
    VALUES ('Matt', '12345', to_date('20101012'), to_date('20121013'), 'MVD', 'Paul', 'BOS', 'NYC', 30978, to_date('17101986'), 'A' )
    INTO CUST_DATA(customer_name, customer_ID, customer_open_date, last_Consulted_date, vaccination_type, doctor_cons, state_1, country, post_code, dob, active_cust)
    VALUES ('Jacob', '1256', to_date('20101012'), to_date('20121013'), 'MVD', 'Paul', 'VIC', 'AU', 90878, to_date('29071985'), 'A' )
SELECT 1 FROM DUAL;

CREATE TABLE USA_table AS select * from CUST_DATA WHERE COUNTRY='USA';
CREATE TABLE INDIA_table AS select * from CUST_DATA WHERE COUNTRY='IND';
CREATE TABLE PHIL_table AS select * from CUST_DATA WHERE COUNTRY='PHIL';
CREATE TABLE NYC_table AS select * from CUST_DATA WHERE COUNTRY='NYC';
CREATE TABLE AU_table AS select * from CUST_DATA WHERE COUNTRY='AU';