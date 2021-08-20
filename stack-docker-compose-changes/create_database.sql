CREATE DATABASE IF NOT EXISTS hello;
USE hello;
CREATE TABLE Messages (
    ID int NOT NULL AUTO_INCREMENT,
    message VARCHAR(255),
    PRIMARY KEY (ID)
);

-- enable docker compose
CREATE USER 'exporter'@'localhost' IDENTIFIED BY '4linux';
GRANT PROCESS, REPLICATION CLIENT ON *.* TO 'exporter'@'localhost';
GRANT SELECT ON performance_schema.* TO 'exporter'@'localhost';