CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(50),
    Team VARCHAR(50),
    Salary DECIMAL(10, 2)
);

CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Staff VALUES
(1, 'Alice', 'HR', 60000),
(2, 'Bob', 'Finance', 75000),
(3, 'Charlie', 'IT', 80000),
(4, 'David', 'IT', 85000);

INSERT INTO Teams VALUES
(1, 'HR', 'New York'),
(2, 'Finance', 'London'),
(3, 'IT', 'San Francisco');

CREATE VIEW IT_Staff AS
SELECT Name, Salary
FROM Staff
WHERE Team = 'IT';

CREATE VIEW Staff_Team_Details AS
SELECT 
    s.StaffID,
    s.Name,
    s.Salary,
    t.TeamName,
    t.Location
FROM Staff s
JOIN Teams t ON s.Team = t.TeamName;

CREATE VIEW HR_Staff AS
SELECT *
FROM Staff
WHERE Team = 'HR'
WITH CHECK OPTION;

SELECT * FROM IT_Staff;

SELECT * FROM Staff_Team_Details;

SELECT * FROM HR_Staff;

UPDATE HR_Staff SET Salary = 65000 WHERE Name = 'Alice';
