CREATE TABLE Sensor
(
    id   int generated always as identity,
    name varchar(100) not null unique
);

CREATE TABLE Measurement
(
    id      int primary key generated always as identity,
    value   double precision not null,
    raining boolean          not null,
    sensor  varchar(100) references Sensor (name)
);

ALTER TABLE Measurement
    ADD COLUMN measurement_date_time TIMESTAMP;