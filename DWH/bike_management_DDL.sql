CREATE SCHEMA IF NOT EXISTS bike_management;

-- USER
CREATE TABLE bike_management."User" (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(30),
    date_of_birth DATE,
    registration_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- SUBSCRIPTION
CREATE TABLE bike_management.Subscription (
    subscription_id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    plan_type VARCHAR(50),
    user_id INT NOT NULL,
    status VARCHAR(50) NOT NULL,
    CONSTRAINT fk_subscription_user
        FOREIGN KEY (user_id)
        REFERENCES bike_management."User"(user_id)
        ON DELETE CASCADE,
    CONSTRAINT chk_subscription_dates
        CHECK (end_date > start_date)
);

-- STATION
CREATE TABLE bike_management.Station (
    station_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    latitude DECIMAL(9,6) NOT NULL,
    longitude DECIMAL(9,6) NOT NULL,
    address VARCHAR(255),
    capacity INT NOT NULL CHECK (capacity > 0)
);

-- BIKE TYPE
CREATE TABLE bike_management.BikeType (
    bike_type_id SERIAL PRIMARY KEY,
    type_name VARCHAR(30) NOT NULL UNIQUE,
    description TEXT
);

-- BIKE
CREATE TABLE bike_management.Bike (
    bike_id SERIAL PRIMARY KEY,
    serial_number VARCHAR(50) NOT NULL UNIQUE,
    bike_type_id INT NOT NULL,
    status VARCHAR(20) NOT NULL,
    battery_level INT CHECK (battery_level BETWEEN 0 AND 100),
    purchase_date DATE,
    station_id INT,
    CONSTRAINT fk_bike_type
        FOREIGN KEY (bike_type_id)
        REFERENCES bike_management.BikeType(bike_type_id),
    CONSTRAINT fk_bike_station
        FOREIGN KEY (station_id)
        REFERENCES bike_management.Station(station_id)
);

-- MAINTENANCE LOG
CREATE TABLE bike_management.MaintenanceLog (
    maintenance_id SERIAL PRIMARY KEY,
    bike_id INT,
    station_id INT,
    repair_type VARCHAR(254) NOT NULL,
    repair_cost DECIMAL(10,2) NOT NULL,
    repair_days INT NOT NULL,
    FOREIGN KEY (bike_id)
        REFERENCES bike_management.Bike(bike_id),
    FOREIGN KEY (station_id)
        REFERENCES bike_management.Station(station_id),
    CHECK (
        (bike_id IS NOT NULL AND station_id IS NULL) OR
        (bike_id IS NULL AND station_id IS NOT NULL)
    )
);

-- RIDE
CREATE TABLE bike_management.Ride (
    ride_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    bike_id INT NOT NULL,
    start_station_id INT NOT NULL,
    end_station_id INT,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP,
    distance DECIMAL(8,2) CHECK (distance >= 0),
    price DECIMAL(10,2) CHECK (price >= 0),
    ride_status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_ride_user
        FOREIGN KEY (user_id)
        REFERENCES bike_management."User"(user_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_ride_bike
        FOREIGN KEY (bike_id)
        REFERENCES bike_management.Bike(bike_id),
    CONSTRAINT fk_ride_start_station
        FOREIGN KEY (start_station_id)
        REFERENCES bike_management.Station(station_id),
    CONSTRAINT fk_ride_end_station
        FOREIGN KEY (end_station_id)
        REFERENCES bike_management.Station(station_id),
    CONSTRAINT chk_ride_time
        CHECK (end_time IS NULL OR end_time > start_time)
);

-- PAYMENT
CREATE TABLE bike_management.Payment (
    payment_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    subscription_id INT,
    ride_id INT,
    amount DECIMAL(10,2) NOT NULL CHECK (amount >= 0),
    payment_method VARCHAR(30) NOT NULL,
    payment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_payment_user
        FOREIGN KEY (user_id)
        REFERENCES bike_management."User"(user_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_payment_subscription
        FOREIGN KEY (subscription_id)
        REFERENCES bike_management.Subscription(subscription_id),
    CONSTRAINT fk_payment_ride
        FOREIGN KEY (ride_id)
        REFERENCES bike_management.Ride(ride_id),
    CONSTRAINT chk_payment_target
        CHECK (
            (subscription_id IS NOT NULL AND ride_id IS NULL) OR
            (subscription_id IS NULL AND ride_id IS NOT NULL)
        ),
    CONSTRAINT chk_payment_method
        CHECK (
            payment_method IN ('credit_card','debit_card','cash','mobile_payment')
        )
);