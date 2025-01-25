15.7
CREATE TABLE Region (
    RegionID int NOT NULL,
    RegionDescription nchar(50) NOT NULL );

CREATE TABLE Territories (
    TerritoryID nvarchar(20) NOT NULL,
    TerritoryDescription nchar(50) NOT NULL,
    RegionID int NOT NULL );

INSERT INTO Region (RegionID, RegionDescription)
VALUES ('1', 'Eastern');

INSERT INTO Region (RegionID, RegionDescription)
VALUES ('2', 'Western');

INSERT INTO Region (RegionID, RegionDescription)
VALUES ('3', 'Northern');

INSERT INTO Region (RegionID, RegionDescription)
VALUES ('4', 'Southern');

INSERT INTO Territories (TerritoryID, TerritoryDescription, RegionID)
VALUES ('01581', 'Westboro', '1');

INSERT INTO Territories (TerritoryID, TerritoryDescription, RegionID)
VALUES ('80202', 'Denver', '2');

INSERT INTO Territories (TerritoryID, TerritoryDescription, RegionID)
VALUES ('48084', 'Troy', '3');

INSERT INTO Territories (TerritoryID, TerritoryDescription, RegionID)
VALUES ('29202', 'Columbia', '4');