# drop tables

DROP TABLE IF EXISTS median_percent_price_reduction_all_homes;
DROP TABLE IF EXISTS median_percent_price_reduction_condo;
DROP TABLE IF EXISTS median_percent_price_reduction_sfr;


# create median_percent_price_reduction_all_homes table

CREATE TABLE median_percent_price_reduction_all_homes (
    id INT NOT NULL AUTO_INCREMENT,
    zip_id INT NOT NULL,
    date_time DATE NOT NULL,
    percent DECIMAL(12, 2) NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (zip_id)
        REFERENCES zip(id)
        ON DELETE CASCADE
) ENGINE=INNODB;


# create median_percent_price_reduction_condo table

CREATE TABLE median_percent_price_reduction_condo (
    id INT NOT NULL AUTO_INCREMENT,
    zip_id INT NOT NULL,
    date_time DATE NOT NULL,
    percent DECIMAL(12, 2) NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (zip_id)
        REFERENCES zip(id)
        ON DELETE CASCADE
) ENGINE=INNODB;


# create median_percent_price_reduction_sfr table

CREATE TABLE median_percent_price_reduction_sfr (
    id INT NOT NULL AUTO_INCREMENT,
    zip_id INT NOT NULL,
    date_time DATE NOT NULL,
    percent DECIMAL(12, 2) NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (zip_id)
        REFERENCES zip(id)
        ON DELETE CASCADE
) ENGINE=INNODB;

