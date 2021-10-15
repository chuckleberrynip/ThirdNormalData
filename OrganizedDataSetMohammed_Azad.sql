CREATE TABLE StoreRecognition(
	FOREIGN KEY(StoreAwardId) 	REFERENCES Store(StoreAwardId),
	FOREIGN KEY(YearId)			REFERENCES TimeAwarded(YearId),
	RecognitionId	INT PRIMARY KEY
);
CREATE TABLE TimeAwarded (
	YearAwarded		INT,
	ProgramWave		INT,
	YearId			INT PRIMARY KEY.
);
CREATE TABLE Store (
	StoreName		VARCHAR(256),
	FOREIGN KEY(LocationId) 	REFERENCES Location(LocationId),
	StoreAwardId	INT PRIMARY KEY
);
CREATE TABLE Location ( 
	FOREIGN KEY(AddressId) 		REFERENCES PartialAddress(AddressId),
	FOREIGN KEY(ZipCode)		REFERENCES ZipBoroughRelation(ZipCode),
	FOREIGN KEY(LatiudeId)		REFERENCES Coordinates(LatitudeId),
	FOREIGN KEY(BinId)			REFERENCES GovernmentIdentifyLocation(BinId),		
	FOREIGN KEY(CensuseId)		REFERENCES Governmentinfo(CensusId),
	LocationId		INT PRIMARY KEY,
);
CREATE TABLE Coordinates (
	Latitude		VARCHAR(256),
	Longitude 		VARCHAR(256),
	LatitudeId		INT PRIMARY KEY
);
CREATE TABLE PartialAddress (
	StreetName		VARCHAR(256),
	Address			VARCHAR(256),
	AddressId		INT PRIMARY KEY
);
CREATE TABLE ZipBoroughRelation ( 
	ZipCode 		INT PRIMARY KEY,
	Borough			VARCHAR(256)
);
CREATE TABLE GovernmentIdentifyLocation ( 
	Binnum			VARCHAR(256);
	Bblnum			VARCHAR(256);
	BinId			INT PRIMARY KEY
);
CREATE TABLE	Governmentinfo	(
	CommunityBoard	INT,
	CouncilDistrict	INT,
	CensusTract		VARCHAR(256),
	NTA				VARCHAR(256),
	CensusId		INT PRIMARY KEY
);

INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (3,36,'257', 'BEDFORD', 1);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (3, 36, '261', 'BEDFORD', 2 );
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (3, 36, '283', 'STUYVESANT HEIGHTS',3);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (4, 34, '283', 'BUSHWICK SOUTH', 4);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (3, 36, '425', 'BEDFORD', 5);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (4, 34, '257', 'EAST WILLIAMSBURG', 6);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 34, '389', 'BEDFORD', 7);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 34, '491', 'BEDFORD', 8);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 34, '493', 'STUYVESANT HEIGHTS', 9);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 33, '491', 'STUYVESANT HEIGHTS', 10) ;
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (3, 36, '531', 'BEDFORD', 11);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (3, 36, '25901', 'STUYVESANT HEIGHTS', 12);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (3, 36, '283','STUYVESANT HEIGHTS', 13);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 34, '287', 'EAST WILLIAMSBURG', 14 );
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 33, '491', 'EAST WILLIAMSBURG', 15);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 33, '507', 'EAST WILLIAMSBURG', 16);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 34, '507', 'EAST WILLIAMSBURG', 17);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 34, '493', 'CENTRAL HARLEM NORTH-POLO GROUNDS', 18);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (1, 34, '495', 'CENTRAL HARLEM NORTH-POLO GROUNDS', 18);
INSERT INTO Governmentinfo(CommunityBoard, CouncilDistrict, CensusTract, NTA, CensusId) VALUES (NULL, NULL, NULL, NULL, NULL, 19);


INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3338591', '3017390001',1);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3049316', '3017710001',2);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3042883', '3015850035',3);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3072058', '3031640008',4);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3335580', '3017320026',5);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3071692', '3031320007',6);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3325958', '3030970018',7);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3338421', '3030710007',8);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3000000', '3031040001',9);
INSERT INTO GovernmentIdentifyLocation(Binnum, Bblnum, BinId) VALUES ('3061119', '3022310035',10);


INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.696961','-73.949512',1);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.692552','-73.948632',2);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.696576','-73.937777',3);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.701096','-73.930445',4);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.698191','-73.944311',5);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.699745','-73.940176',6);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.704472','-73.941009',7);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.70643','-73.943045',8);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.702939','-73.944235',9);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.701855','-73.955636',10);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.695814','-73.945344',11);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.695505','-73.940544',12);
INSERT INTO Coordinates(Latitude, Longitude, LatitudeId) VALUES('40.696817','-73.936605',13);

INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(11206, 'Brooklyn');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(11207, 'Brooklyn');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(11212, 'Brooklyn');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(11208, 'Brooklyn');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10453, 'Bronx');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10458, 'Bronx');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10460, 'Bronx');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10458, 'Bronx');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10455, 'Bronx');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10457, 'Bronx');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10030, 'New York');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10037, 'New York');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10029, 'New York');
INSERT INTO ZipBoroughRelation(ZipCode, Borough) VALUES(10035, 'New York');

INSERT INTO TimeAwarded(YearAwarded, ProgramWave, YearId) VALUES (2020, 8, 1);
INSERT INTO TimeAwarded(YearAwarded, ProgramWave, YearId) VALUES (2013, 1, 2);
INSERT INTO TimeAwarded(YearAwarded, ProgramWave, YearId) VALUES (2014, 2, 3);
INSERT INTO TimeAwarded(YearAwarded, ProgramWave, YearId) VALUES (2015, 2, 4);
INSERT INTO TimeAwarded(YearAwarded, ProgramWave, YearId) VALUES (2015, 3, 5);
INSERT INTO TimeAwarded(YearAwarded, ProgramWave, YearId) VALUES (2016, 3, 6);
INSERT INTO TimeAwarded(YearAwarded, ProgramWave, YearId) VALUES (2016, 4, 7);
INSERT INTO TimeAwarded(YearAwarded, ProgramWave, YearId) VALUES (2017, 5, 8);


INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('535', 'MARCY', 1);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('643', 'MARCY', 2);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('40' 'LEWIS', 3);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('67', 'CENTRAL AVE', 4);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('777', 'PARK AVE', 5);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('799', 'BROADWAY', 6);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('91','HUMBOLDT ST', 7);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('146','GRAHAM', 8);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('21', 'MANHATTAN', 9);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('198', 'LEE AVE',10);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('164','TOMPKINS', 11);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('920','MYRTLE', 12);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('98', 'MARCUS GARVERY BLVD', 13);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('1102', 'MYRTLE AVE', 14);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('801','FLUSHING AVE', 15;
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('726', 'BROADWAY', 16);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('711', 'FLUSHING AVE', 17);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('204', 'BUSHWICK AVE', 18);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('276', 'HUMBOLDT ST', 19);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('75', 'HUMBOLDT ST', 20);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('400', 'LORIMER ST', 21);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('121', 'GRAHAM AVE', 22);
INSERT INTO PartialAddress(StreetName, Address, AddressId) VALUES ('128', 'EDGECOMBE AVE', 23);

INSERT INTO Location(AddressId, ZipCode,LatitudeId, BinId, CensusId, LocationId) VALUES (1,1,1,1);
INSERT INTO Location(AddressId, ZipCode,LatitudeId, BinId, CensusId, LocationId) VALUES (2,2,2,2);
INSERT INTO Location(AddressId, ZipCode,LatitudeId, BinId, CensusId, LocationId) VALUES (3,3,3,3);
INSERT INTO Location(AddressId, ZipCode,LatitudeId, BinId, CensusId, LocationId) VALUES (4,4,4,4);
INSERT INTO Location(AddressId, ZipCode,LatitudeId, BinId, CensusId, LocationId) VALUES (5,5,5,5);
INSERT INTO Location(AddressId, ZipCode,LatitudeId, BinId, CensusId, LocationId) VALUES (6,6,6,6);
INSERT INTO Location(AddressId, ZipCode,LatitudeId, BinId, CensusId, LocationId) VALUES (7,7,7,7);
INSERT INTO Location(AddressId, ZipCode,LatitudeId, BinId, CensusId, LocationId) VALUES (8,8,8,8);

INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('SIRAH 1720 LLC', 1, 1);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('FIRST STOP GROCERY INC',2,2);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('AANDE DIRECT LLC',3,3);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('CENTRAL ORGANIC',4,4);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('194 THROOP FOOD CORP',5,5);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('BROADWAY ORGANIC DELI INC',6,6);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('MLD 91 FOOD CORP',7,7);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('GRAHAM STOP ONE DELI INC',8,8);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('BOGOPA MANHATTAN INC',9,9);
INSERT INTO Store(StoreName, LocationId, StoreAwardId) VALUES ('LEE HEYWARD GROCERY INC',10,10);

INSERT INTO StoreRecognition(StoreAwardId, YearId, RecognitionId) VALUES (1,1,1);
INSERT INTO StoreRecognition(StoreAwardId, YearId, RecognitionId) VALUES (2,1,1);
INSERT INTO StoreRecognition(StoreAwardId, YearId, RecognitionId) VALUES (3,1,1);
INSERT INTO StoreRecognition(StoreAwardId, YearId, RecognitionId) VALUES (4,1,1);
INSERT INTO StoreRecognition(StoreAwardId, YearId, RecognitionId) VALUES (5,1,1);
INSERT INTO StoreRecognition(StoreAwardId, YearId, RecognitionId) VALUES (6,1,1);
INSERT INTO StoreRecognition(StoreAwardId, YearId, RecognitionId) VALUES (7,1,1);