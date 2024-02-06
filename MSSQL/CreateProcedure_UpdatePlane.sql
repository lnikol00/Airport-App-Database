USE [PlaneDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePlane] 
	@id INT,
	@Model VARCHAR(MAX),
	@Year INT,
	@Country VARCHAR(MAX),
	@Capacity INT,
	@Image VARCHAR(MAX),
	@Type VARCHAR(MAX),
	@Captain VARCHAR(MAX)
AS
BEGIN

	SET NOCOUNT ON;

BEGIN TRANSACTION
BEGIN TRY

	UPDATE Planes
	SET 
		Planes.Model = @Model,
		Planes.Year = @Year,
		Planes.Country = @Country,
		Planes.Capacity = @Capacity,
		Planes.Image = @Image,
		Planes.Type = @Type,
		Planes.Captain = @Captain
	WHERE
		Planes.ID = @id

	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	SELECT ERROR_MESSAGE() AS e;
	ROLLBACK TRANSACTION
END CATCH
END