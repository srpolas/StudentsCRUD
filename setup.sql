-- Create the Students table
CREATE TABLE Students (
    StudentId INT PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT
);
GO

-- Stored Procedure to insert a new student
CREATE PROCEDURE sp_InsertStudent
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Age INT
AS
BEGIN
    INSERT INTO Students (FirstName, LastName, Age)
    VALUES (@FirstName, @LastName, @Age);
END
GO

-- Stored Procedure to get all students
CREATE PROCEDURE sp_GetAllStudents
AS
BEGIN
    SELECT * FROM Students;
END
GO

-- Stored Procedure to update a student
CREATE PROCEDURE sp_UpdateStudent
    @StudentId INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Age INT
AS
BEGIN
    UPDATE Students
    SET FirstName = @FirstName,
        LastName = @LastName,
        Age = @Age
    WHERE StudentId = @StudentId;
END
GO

-- Stored Procedure to delete a student
CREATE PROCEDURE sp_DeleteStudent
    @StudentId INT
AS
BEGIN
    DELETE FROM Students WHERE StudentId = @StudentId;
END
GO
