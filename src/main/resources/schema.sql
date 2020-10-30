drop table if exists inventory;
drop table if exists pooltables;
drop table if exists transaction;


CREATE TABLE inventory (
  id   			INTEGER      NOT NULL AUTO_INCREMENT,
  code 			VARCHAR(128) NOT NULL,
  name 			VARCHAR(128) NOT NULL,
  desc 			VARCHAR(128) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE pooltables (
  id   			INTEGER      NOT NULL AUTO_INCREMENT,
  inventory_id  INTEGER,
  status		INTEGER,
  available		BOOLEAN,
  PRIMARY KEY (id)
);


CREATE TABLE transaction (
  id   			INTEGER      NOT NULL AUTO_INCREMENT,
  time_start	DATE,
  time_end		DATE,
  pooltable_id  INTEGER,
  rack_id 		INTEGER,
  order_id		INTEGER,
  billing_id	INTEGER,
  open_tab		BOOLEAN,
  tab_name		VARCHAR(128),
  close_tab		BOOLEAN,
  PRIMARY KEY (id)
);


);