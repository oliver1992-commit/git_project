

/* Find all the rows in the address table*/

SELECT COUNT(*)
FROM address;

/* Find the full name from the sneders how's name is 'Mikel'*/

SELECT FIRST_NAME, LAST_NAME
FROM sender
WHERE FIRST_NAME = 'MIKEL';

/* Find all customer how has hers/his birthday between 1990 - 2000 */

SELECT * FROM customer_details
WHERE BIRTHDAY BETWEEN '1990-01-01' AND '2000-01-01';

/* Find the name all worker they earn in a year over 20000 $ */

SELECT FIRST_NAME,LAST_NAME FROM worker_detail
WHERE SELLARY_IN_YEAR > 20000;

/* Find the address from the senders */

SELECT FIRST_NAME, LAST_NAME, CITY, ADDRESS, ADDRESS_NUM
FROM `sender`
INNER JOIN `address` on FK_ADDRESS_ID = ADDRESS_ID;

/* Find the cuntry from the recievers */

SELECT FIRST_NAME, LAST_NAME, STATE
FROM `reciever`
INNER JOIN `address` on FK_ADDRESS_ID = ADDRESS_ID;









