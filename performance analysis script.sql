-- Query 1 (Before Index)
SELECT *
FROM Person.Person
WHERE FirstName = 'John';

-- Create Index
CREATE NONCLUSTERED INDEX IX_Person_FirstName
ON Person.Person (FirstName);

-- Query 1 (After Index)
SELECT *
FROM Person.Person
WHERE FirstName = 'John';

--------------------------------------------------

-- Query 2 (Before Index)
SELECT *
FROM Production.Product
WHERE Name = 'Blade';

-- Create Index
CREATE NONCLUSTERED INDEX IX_Product_Name
ON Production.Product (Name);

-- Query 2 (After Index)
SELECT *
FROM Production.Product
WHERE Name = 'Blade';