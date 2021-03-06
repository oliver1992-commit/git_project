






/*"THAT'S THE SET UP OF THE TABLES" */


CREATE TABLE customer_details (
    CUSTOMER_DETAILS_ID INT,
    SEX CHAR(1),
    AGE INT,
    BIRTHDAY DATE,
    PRIMARY KEY (CUSTOMER_DETAILS_ID));

CREATE TABLE sender (
    SENDER_ID INT,
    FIRST_NAME CHAR(30),
    LAST_NAME CHAR(30),
    FK_CUSTOMER_DETAILS_ID INT,
    FK_CONTACT_ID INT,
    FK_ADDRESS_ID INT,
    PRIMARY KEY (SENDER_ID)
);

CREATE TABLE package (
    PACKAGE_ID INT,
    FK_STORE_ID INT,
    FK_SENDER_ID INT,
    FK_RECIEVER_ID INT,
    PRIMARY KEY (PACKAGE_ID)
);

CREATE TABLE package_details (
    DETAIL_ID INT,
    DEPOSITED DATE,
    RECIEVED DATE,
    WEIGHT CHAR(10),
    STATUS ENUM ('YES','NO'),
    FK_PACKAGE_ID INT,
    PRIMARY KEY (DETAIL_ID)
);

CREATE TABLE reciever (
    RECIEVER_ID INT,
    FIRST_NAME CHAR(30),
    LAST_NAME CHAR(30),
    FK_CUSTOMER_DETAILS_ID INT,
    FK_CONTACT_ID INT,
    FK_ADDRESS_ID INT,
    PRIMARY KEY (RECIEVER_ID)
);

CREATE TABLE drop_and_pickup (
    STORE_ID INT,
    FK_ADDRESS_ID INT,
    FK_COLLECTOR_ID INT,
    PRIMARY KEY(STORE_ID));

CREATE TABLE address (
    ADDRESS_ID INT,
    STATE CHAR (30),
    CITY CHAR(30),
    ADDRESS CHAR (30),
    ADDRESS_NUM INT,
    POST_CODE INT,
    PRIMARY KEY (ADDRESS_ID)
);

CREATE TABLE delivery_collector (
    COLLECTOR_ID INT,
    FK_WORKER_DETAIL_ID INT,
    PRIMARY KEY (COLLECTOR_ID)
);

CREATE TABLE storage_worker (
    WORKER_ID INT,
    FK_WORKER_DETAIL_ID INT,
    FK_DELIVERY_LOC_ID INT,
    PRIMARY KEY(WORKER_ID));


CREATE TABLE worker_detail (
    WORKER_DETAIL_ID INT,
    FIRST_NAME CHAR(30),
    LAST_NAME CHAR(30),
    SEX CHAR(1),
    SELLARY_IN_YEAR INT,
    HIRED DATE,
    FK_ADDRESS_ID INT,
    FK_CONTACT_ID INT,
    PRIMARY KEY (WORKER_DETAIL_ID)
);

CREATE TABLE deliverer (
    DELIVERER_ID INT,
    FK_WORKER_DETAIL_ID INT,
    PRIMARY KEY (DELIVERER_ID)
);

CREATE TABLE process_location (
    DELIVERY_LOC_ID INT,
    FK_ADDRESS_ID INT,
    PRIMARY KEY (DELIVERY_LOC_ID)
);

CREATE TABLE conection (
    CONTACT_ID INT,
    PHONE_NUMBER INT,
    `E-MAIL` CHAR(30),
    PRIMARY KEY(CONTACT_ID)
);