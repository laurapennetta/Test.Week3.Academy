CREATE DATABASE PIZZERIA

CREATE TABLE Pizza(
[Codice] [VARCHAR](5) NOT NULL,
[Nome] [VARCHAR](100)NOT NULL,
[Prezzo][DECIMAL] NOT NULL,
CONSTRAINT [PK_Pizza] PRIMARY KEY (Codice),
CHECK ([Prezzo] > 0)
)

CREATE TABLE Ingrediente(
[Codice] [VARCHAR](5) NOT NULL,
[Nome] [VARCHAR](100) NOT NULL,
[Prezzo][DECIMAL] NOT NULL,
[Scorta][DECIMAL] NOT NULL,
CONSTRAINT [PK_Ingrediente] PRIMARY KEY (Codice),
CHECK ([Prezzo] > 0)
)

CREATE TABLE PizzaIngrediente(
[Codice_Pizza] [VARCHAR](5) NOT NULL,
[Codice_Ingrediente] [VARCHAR](5) NOT NULL,
CONSTRAINT [FK_Pizza] FOREIGN KEY (Codice_Pizza) REFERENCES Pizza(Codice),
CONSTRAINT [FK_Ingrediente] FOREIGN KEY (Codice_Ingrediente) REFERENCES Ingrediente(Codice)
)

CREATE INDEX Pizza_NDX ON Pizza (Nome ASC);
CREATE INDEX Ingrediente_NDX ON Ingrediente (Codice ASC);

--PIZZE:
INSERT INTO Pizza VALUES('PZ-01', 'Margherita', 5)
INSERT INTO Pizza VALUES('PZ-02', 'Bufala', 7)
INSERT INTO Pizza VALUES('PZ-03', 'Diavola', 6)
INSERT INTO Pizza VALUES('PZ-04', 'Quattro Stagioni', 6.5)
INSERT INTO Pizza VALUES('PZ-05', 'Porcini', 7)
INSERT INTO Pizza VALUES('PZ-06', 'Dioniso', 8)
INSERT INTO Pizza VALUES('PZ-07', 'Ortolana', 8)
INSERT INTO Pizza VALUES('PZ-08', 'Patate e Salsiccia', 6)
INSERT INTO Pizza VALUES('PZ-09', 'Pomodorini', 6)
INSERT INTO Pizza VALUES('PZ-10', 'Quattro formaggi', 7.5)
INSERT INTO Pizza VALUES('PZ-11', 'Caprese', 7.5)
INSERT INTO Pizza VALUES('PZ-12', 'Zeus', 7.5)
--TAB DI COLLEGAMENTO:
INSERT INTO PizzaIngrediente VALUES('PZ-01','PM-00')
INSERT INTO PizzaIngrediente VALUES('PZ-01','MZ-00')

INSERT INTO PizzaIngrediente VALUES('PZ-02','MZ-01')
INSERT INTO PizzaIngrediente VALUES('PZ-02','PM-00')

INSERT INTO PizzaIngrediente VALUES('PZ-03','PM-00')
INSERT INTO PizzaIngrediente VALUES('PZ-03','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-03','SP-01')

INSERT INTO PizzaIngrediente VALUES('PZ-04','PM-00')
INSERT INTO PizzaIngrediente VALUES('PZ-04','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-04','FN-00')
INSERT INTO PizzaIngrediente VALUES('PZ-04','CR-00')
INSERT INTO PizzaIngrediente VALUES('PZ-04','CT-00')
INSERT INTO PizzaIngrediente VALUES('PZ-04','OL-00')

INSERT INTO PizzaIngrediente VALUES('PZ-05','PM-00')
INSERT INTO PizzaIngrediente VALUES('PZ-05','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-05','FN-01')

INSERT INTO PizzaIngrediente VALUES('PZ-06','PM-00')
INSERT INTO PizzaIngrediente VALUES('PZ-06','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-06','ST-00')
INSERT INTO PizzaIngrediente VALUES('PZ-06','SP-00')
INSERT INTO PizzaIngrediente VALUES('PZ-06','RC-00')
INSERT INTO PizzaIngrediente VALUES('PZ-06','GR-00')

INSERT INTO PizzaIngrediente VALUES('PZ-07','PM-00')
INSERT INTO PizzaIngrediente VALUES('PZ-07','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-07','VS-00')

INSERT INTO PizzaIngrediente VALUES('PZ-08','PT-00')
INSERT INTO PizzaIngrediente VALUES('PZ-08','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-08','SL-00')

INSERT INTO PizzaIngrediente VALUES('PZ-09','PM-01')
INSERT INTO PizzaIngrediente VALUES('PZ-09','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-09','RT-00')

INSERT INTO PizzaIngrediente VALUES('PZ-10','GR-00')
INSERT INTO PizzaIngrediente VALUES('PZ-10','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-10','GZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-10','PR-00')

INSERT INTO PizzaIngrediente VALUES('PZ-11','PM-02')
INSERT INTO PizzaIngrediente VALUES('PZ-11','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-11','BS-00')

INSERT INTO PizzaIngrediente VALUES('PZ-12','BR-00')
INSERT INTO PizzaIngrediente VALUES('PZ-12','MZ-00')
INSERT INTO PizzaIngrediente VALUES('PZ-12','RC-00')
--INGREDIENTI:
INSERT INTO Ingrediente VALUES('PM-00', 'Pomodoro', 3, 100.5)
INSERT INTO Ingrediente VALUES('MZ-00', 'Mozzarella', 5.2, 75.5)
INSERT INTO Ingrediente VALUES('MZ-01', 'Mozzarella di Bufala', 8.3, 75.5)
INSERT INTO Ingrediente VALUES('SP-01', 'Spianata Piccante', 2.4, 50.5)
INSERT INTO Ingrediente VALUES('FN-00', 'Funghi', 1.6, 30.5)
INSERT INTO Ingrediente VALUES('CR-00', 'Carciofi', 1.4, 10.5)
INSERT INTO Ingrediente VALUES('CT-00', 'Cotto', 2.5, 50.5)
INSERT INTO Ingrediente VALUES('OL-00', 'Olive', 1.4, 50.5)
INSERT INTO Ingrediente VALUES('FN-01', 'Funghi Porcini', 2.6, 30.5)
INSERT INTO Ingrediente VALUES('ST-00', 'Stracchino', 2.8, 10.5)
INSERT INTO Ingrediente VALUES('SP-00', 'Speck', 2.8, 50.5)
INSERT INTO Ingrediente VALUES('RC-00', 'Rucola', 1.1, 10.5)
INSERT INTO Ingrediente VALUES('GR-00', 'Grana', 1.8, 30.5)
INSERT INTO Ingrediente VALUES('VS-00', 'Verdure di Stagione', 1.2, 40.5)
INSERT INTO Ingrediente VALUES('PT-00', 'Patate', 1, 60.5)
INSERT INTO Ingrediente VALUES('SL-00', 'Salsiccia', 2.2, 70.5)
INSERT INTO Ingrediente VALUES('PM-01', 'Pomodorini', 1, 70.5)
INSERT INTO Ingrediente VALUES('RT-00', 'Ricotta', 5.2, 30.5)
INSERT INTO Ingrediente VALUES('PR-00', 'Provola', 3.2, 20.5)
INSERT INTO Ingrediente VALUES('GZ-00', 'Gorgonzola', 4.3, 20.5)
INSERT INTO Ingrediente VALUES('PM-02', 'Pomodoro Fresco', 1.3, 70.5)
INSERT INTO Ingrediente VALUES('BS-00', 'Basilico', 1.3, 80.5)
INSERT INTO Ingrediente VALUES('BR-00', 'Bresaola', 3.3, 5.5)
------------------------------------------------------------------------------------------------------------------
CREATE VIEW [Menu] AS (
	SELECT p.Codice, p.Nome, i.Nome as 'Ingrediente', p.Prezzo
	FROM Pizza p
	JOIN PizzaIngrediente piz
	ON piz.Codice_Pizza=p.Codice
	JOIN Ingrediente i
	ON i.Codice = piz.Codice_Ingrediente
);
SELECT * FROM Menu
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [InserimentoPizza]
@Codice varchar(5),
@Nome varchar(100),
@Prezzo decimal
AS
BEGIN
INSERT INTO Pizza (Codice, Nome, Prezzo) 
VALUES (@Codice, @Nome, @Prezzo)
END
EXECUTE [InserimentoPizza] @Codice = 'PZ-13', @Nome = 'Piccantella', @Prezzo = 6.5
EXECUTE [InserimentoPizza] @Codice = 'PZ-14', @Nome = 'Marinara', @Prezzo = 5
SELECT * FROM Pizza
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [InserimentoIngrediente]
@Codice varchar(5),
@Nome varchar(100),
@Prezzo decimal,
@Scorta decimal
AS
BEGIN
INSERT INTO Ingrediente (Codice, Nome, Prezzo, Scorta) 
VALUES (@Codice, @Nome, @Prezzo, @Scorta)
END
EXECUTE [InserimentoIngrediente] @Codice = 'NJ-00', @Nome = 'Nduja', @Prezzo = 6.5, @Scorta = 45.79
SELECT * FROM Ingrediente
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [InserimentoIngredientePizza]
@Codice_Pizza varchar(5),
@Codice_Ingrediente varchar(5)
AS
BEGIN
INSERT INTO PizzaIngrediente (Codice_Pizza, Codice_Ingrediente) 
VALUES (@Codice_Pizza, @Codice_Ingrediente)
END
EXECUTE [InserimentoIngredientePizza] @Codice_Pizza = 'PZ-13', @Codice_Ingrediente = 'NJ-00'
EXECUTE [InserimentoIngredientePizza] @Codice_Pizza = 'PZ-13', @Codice_Ingrediente = 'PM-00'
EXECUTE [InserimentoIngredientePizza] @Codice_Pizza = 'PZ-13', @Codice_Ingrediente = 'MZ-00'
EXECUTE [InserimentoIngredientePizza] @Codice_Pizza = 'PZ-01', @Codice_Ingrediente = 'BS-00'
EXECUTE [InserimentoIngredientePizza] @Codice_Pizza = 'PZ-14', @Codice_Ingrediente = 'PM-00'
SELECT * FROM Menu
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE DeletePizzaIngrediente @Codice_Pizza varchar(5), @Codice_Ingrediente varchar(5)
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
	 DELETE FROM PizzaIngrediente WHERE Codice_Pizza = @Codice_Pizza AND Codice_Ingrediente = @Codice_Ingrediente
	 IF @@ERROR > 0
		ROLLBACK TRANSACTION

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_LINE(), ERROR_MESSAGE()
		ROLLBACK TRANSACTION 
	END CATCH
END
EXEC DeletePizzaIngrediente @Codice_Pizza = 'PZ-01', @Codice_Ingrediente = 'BS-00'
SELECT * FROM Menu
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE CambiaPrezzo @Codice_Ingrediente varchar(5)
AS
BEGIN
UPDATE Pizza SET Prezzo += Prezzo*0.1 FROM PizzaIngrediente 
WHERE Codice_Pizza = Pizza.Codice AND Codice_Ingrediente = @Codice_Ingrediente
END
------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION [GetListinoPrezzi]()
RETURNS TABLE
AS
RETURN(
SELECT p.Nome, p.Prezzo
FROM Pizza p)
SELECT * FROM dbo.GetListinoPrezzi() LP ORDER BY LP.Nome
------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION [GetPizzaConIngrediente](@Codice_Ingrediente varchar(5))
RETURNS TABLE
AS
RETURN
SELECT p.Nome, p.Prezzo
FROM Pizza p
JOIN PizzaIngrediente piz
ON p.Codice = piz.Codice_Pizza AND piz.Codice_Ingrediente = @Codice_Ingrediente
------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION [GetListinooPizzeeeSenzaIngredienteeeee](@Codice_Ingrediente char(5))
RETURNS TABLE
AS
RETURN(
SELECT p.Nome, p.Prezzo
FROM Pizza p
EXCEPT
SELECT p.Nome, p.Prezzo
FROM Pizza p
JOIN PizzaIngrediente piz
ON piz.Codice_Pizza = p.Codice AND piz.Codice_Ingrediente = @Codice_Ingrediente)
SELECT * FROM dbo.GetListinooPizzeeeSenzaIngredienteeeee('MZ-00')
------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION Numero_PizzeConIngrediente(@Codice_Ingrediente varchar(5))
RETURNS INT
AS
BEGIN
DECLARE @result INT
SELECT @result = Count(distinct Nome)
FROM Pizza p
JOIN PizzaIngrediente piz
ON p.Codice = piz.Codice_Pizza AND piz.Codice_Ingrediente = @Codice_Ingrediente
RETURN @result
END
SELECT dbo.Numero_PizzeConIngrediente('NJ-00') as value
------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION Numero_PizzeSenzaIngrediente(@Codice_Ingrediente varchar(5))
RETURNS INT
AS BEGIN
	DECLARE @nrPizze INT
	SELECT @nrPizze = Count(*)
	FROM dbo.GetListinooPizzeeeSenzaIngredienteeeee(@codice_Ingrediente)
	RETURN @nrPizze
END
SELECT dbo.Numero_PizzeSenzaIngrediente('MZ-00') as value
------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION Numero_Ingredienti(@Codice_Pizza char(5))
RETURNS INT
AS
BEGIN
DECLARE @result INT
SELECT @result = count(piz.Codice_Ingrediente)
FROM PizzaIngrediente piz
WHERE piz.Codice_Pizza = @Codice_Pizza
RETURN @result
END
SELECT dbo.Numero_Ingredienti('PZ-01') as value
------------------------------------------------------------------------------------------------------------------