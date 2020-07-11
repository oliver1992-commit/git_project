






/*"FOREIGN KEY SET UP"*/




ALTER TABLE sender ADD FOREIGN KEY(FK_CUSTOMER_DETAILS_ID) REFERENCES customer_details (CUSTOMER_DETAILS_ID);

ALTER TABLE sender ADD FOREIGN KEY(FK_CONTACT_ID) REFERENCES conection (CONTACT_ID);

ALTER TABLE sender ADD FOREIGN KEY(FK_ADDRESS_ID) REFERENCES address (ADDRESS_ID);

ALTER TABLE package ADD FOREIGN KEY (FK_STORE_ID) REFERENCES drop_and_pickup (STORE_ID);

ALTER TABLE package ADD FOREIGN KEY(FK_SENDER_ID) REFERENCES sender(SENDER_ID);

ALTER TABLE package ADD FOREIGN KEY(FK_RECIEVER_ID) REFERENCES reciever(RECIEVER_ID);

ALTER TABLE package_details ADD FOREIGN KEY(FK_PACKAGE_ID) REFERENCES package(PACKAGE_ID);

ALTER TABLE reciever ADD FOREIGN KEY (FK_CUSTOMER_DETAILS_ID) REFERENCES customer_details(CUSTOMER_DETAILS_ID);

ALTER TABLE reciever ADD FOREIGN KEY (FK_CONTACT_ID) REFERENCES conection (CONTACT_ID);

ALTER TABLE reciever ADD FOREIGN KEY(FK_ADDRESS_ID) REFERENCES address(ADDRESS_ID);

ALTER TABLE drop_and_pickup ADD FOREIGN KEY (FK_ADDRESS_ID) REFERENCES address(ADDRESS_ID);

ALTER TABLE drop_and_pickup ADD FOREIGN KEY (FK_COLLECTOR_ID) REFERENCES delivery_collector(COLLECTOR_ID);

ALTER TABLE delivery_collector ADD FOREIGN KEY (FK_WORKER_DETAIL_ID) REFERENCES worker_detail(WORKER_DETAIL_ID);

ALTER TABLE storage_worker ADD FOREIGN KEY (FK_WORKER_DETAIL_ID) REFERENCES worker_detail(WORKER_DETAIL_ID);

ALTER TABLE worker_detail ADD FOREIGN KEY(FK_ADDRESS_ID) REFERENCES address(ADDRESS_ID);

ALTER TABLE worker_detail ADD FOREIGN KEY (FK_CONTACT_ID) REFERENCES conection(CONTACT_ID);

ALTER TABLE deliverer ADD FOREIGN KEY (FK_WORKER_DETAIL_ID) REFERENCES worker_detail (WORKER_DETAIL_ID);

ALTER TABLE process_location ADD FOREIGN KEY(FK_ADDRESS_ID) REFERENCES address(ADDRESS_ID);

ALTER TABLE storage_worker ADD FOREIGN KEY(FK_DELIVERY_LOC_ID) REFERENCES process_location(DELIVERY_LOC_ID);