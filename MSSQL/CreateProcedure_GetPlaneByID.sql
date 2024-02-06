USE [PlaneDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetPlaneById] 
	@id INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
		Planes.ID,
		Planes.Model,
		Planes.Year,
		Planes.Country,
		Planes.Capacity,
		Planes.Image,
		Planes.Type,
		Planes.Captain
	FROM
		Planes
	WHERE
		Planes.ID = @id

END