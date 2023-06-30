CREATE OR ALTER PROCEDURE [spListaCursos] 
    @Nome NVARCHAR(80),
    @Id INT
AS
    DECLARE @CategoriaId INT
    SET @CategoriaId = (SELECT [Id] FROM [Categoria] WHERE [Id] = 1)

    SELECT * FROM [Curso] WHERE [Nome] = @Nome OR [Id] = @Id


EXEC [spListaCursos] 'Flutter', 2

DROP PROCEDURE [spListaCursos] 