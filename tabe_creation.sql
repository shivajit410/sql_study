CREATE DATABASE dbo;

CREATE TABLE dbo.Player(
	PlayerID int PRIAMRY KEY NOT NULL,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	PositionID int NULL
);

CREATE TABLE dbo.PlayerPosition(
	PositionID int PRIMARY KEY NOT NULL,
	PositionName varchar(50) NOT NULL
);

CREATE TABLE dbo.Salary(
	SalaryID int PRIMARY KEY NOT NULL,
	Amount float NOT NULL,
	PlayerID int NULL
);

CREATE TABLE dbo.ScoredGoal(
	GoalId int PRIMARY KEY NOT NULL,
	Minute int NOT NULL,
	PlayerID int NULL,
	GameID int NOT NULL
);



INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (1, N'Gabriel', N'Upson', 8);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (2, N'Becka', N'Edgeller', 5);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (3, N'Brnaby', N'Ruprich', 9);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (4, N'Lucia', N'Tonkin', 8);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (5, N'Clywd', N'Strudwick', 3);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (6, N'Cristine', N'Rydeard', 6);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (7, N'Coretta', N'Hegley', 10);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (8, N'Wallie', N'Curling', 10);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (9, N'Dore', N'Ryles', 9);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (10, N'Arie', N'Bamfield', 10);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (11, N'Simonette', N'Hoggins', 1);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (12, N'Kerstin', N'Tsar', 1);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (13, N'Neale', N'Hardwick', 10);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (14, N'Shelley', N'Towersey', 8);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (15, N'Heriberto', N'Skillicorn', 9);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (16, N'Brear', N'Hinstock', 8);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (17, N'Sherm', N'Ceschelli', 1);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (18, N'Enrico', N'Trevaskiss', 5);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (19, N'Ossie', N'Albers', 7);
INSERT INTO Player (PlayerID, FirstName, LastName, PositionID) VALUES (20, N'Leon', N'Birks', 2);
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (1, N'Attacking midfield');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (2, N'Sweeper');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (3, N'Center-back');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (4, N'Full-back');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (5, N'Wing-back');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (6, N'Center midfield');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (7, N'Wide midfield');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (8, N'Defensive midfield');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (9, N'Second striker');
INSERT INTO PlayerPosition (PositionID, PositionName) VALUES (10, N'Winger');
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (1, 189.05, 1);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (2, 150.45, 2);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (3, 412.81, 3);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (4, 477.65, 4);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (5, 323.92, 5);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (6, 477.65, 6);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (7, 423.84, 7);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (8, 288.86, 8);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (9, 227.76, 9);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (10, 443.25, 10);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (11, 145.7, 11);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (12, 106.97, 12);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (13, 302.78, 13);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (14, 126.74, 14);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (15, 282.12, 15);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (16, 416.19, 16);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (17, 120.96, 17);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (18, 195.5, 18);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (19, 193.82, 19);
INSERT INTO Salary (SalaryID, Amount, PlayerID) VALUES (20, 499.14, 20);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (1, 18, 19, 3);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (2, 16, 2, 1);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (3, 5, 3, 3);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (4, 5, 19, 3);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (5, 19, 5, 1);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (6, 24, 6, 8);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (7, 17, 7, 4);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (8, 1, 8, 5);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (9, 27, 16, 1);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (10, 3, 10, 4);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (11, 10, 11, 8);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (12, 0, 12, 7);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (13, 19, 10, 4);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (14, 11, 19, 6);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (15, 4, 15, 5);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (16, 19, 16, 1);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (17, 4, 17, 9);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (18, 9, 18, 10);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (19, 1, 19, 3);
INSERT INTO ScoredGoal (GoalId, Minute, PlayerID, GameID) VALUES (20, 22, 19, 6);


ALTER TABLE Player  WITH CHECK ADD FOREIGN KEY(PositionID)
REFERENCES Position (PositionID);

ALTER TABLE Salary  WITH CHECK ADD FOREIGN KEY(PlayerID)
REFERENCES Player (PlayerID);

ALTER TABLE ScoredGoal  WITH CHECK ADD FOREIGN KEY(PlayerID)
REFERENCES Player (PlayerID);

commit;
