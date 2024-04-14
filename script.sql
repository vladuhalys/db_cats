USE db_cats;
go
-- Insert data into the Cat table
INSERT INTO [Cat]
VALUES
(1, 'Whiskers', 3, 'Ginger', 'Persian'),
(2, 'Luna', 2, 'Black', 'Maine Coon'),
(3, 'Mittens', 1, 'Tabby Gray', 'Domestic Shorthair'),
(4, 'Snowball', 5, 'White', 'Siberian Forest'),
(5, 'Garfield', 7, 'Orange', 'Persian (Flat Faced)');
go
-- Insert data into the Adress table
INSERT INTO [Adress]
VALUES
(1, '102', 'Main Street', 'New York', 'New York State', 'USA'),
(2, '3B', 'Green Avenue', 'London', 'England', 'UK'),
(3, '5', 'Maple Lane', 'Paris', 'Île-de-France', 'France'),
(4, 'None', '12th Avenue', 'Berlin', 'Brandenburg', 'Germany'),
(5, '777', 'Sunshine Blvd', 'Los Angeles', 'California', 'USA');
go
-- Insert data into the Owner table
INSERT INTO [Owner]
VALUES
('John', 'Doe', '(XXX) XXX-XXXX', 1, 1),
('Jane', 'Smith', '(YYY) YYY-YYYY', 2, 2),
('Emily', 'Williams', '(ZZZ) ZZZ-ZZZZ', 3, 3),
('Michael', 'Johnson', '(WWW) WWW-WWWW', 4, 4),
('Jennifer', 'Anderson', '(PPP) PPP-PPPP', 5, 5);