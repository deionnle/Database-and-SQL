16
CREATE CLUSTERED INDEX PK_Region ON Region (RegionID);
CREATE INDEX idxRegionDescription ON Region (RegionDescription);
CREATE INDEX idxRegionID_Description ON Region (RegionID, RegionDescription);
CREATE INDEX PK_Territories ON Territories (TerritoryID);