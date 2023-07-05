CREATE OR ALTER PROCEDURE spDeletarAluno (
    @StudentId UNIQUEIDENTIFIER
) AS

    BEGIN TRANSACTION
        DELETE [StudentCourse] WHERE [StudentId] = @StudentId
        DELETE [Student] WHERE [Student].[Id] = @StudentId
    COMMIT