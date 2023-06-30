SELECT TOP 10 
    [Id], [Nome]
FROM [Categoria]

BEGIN TRANSACTION
    UPDATE 
        [Curso]
    SET
        [Nome] = 'Angular Moderno'
    WHERE
        [Nome] = 'Angular'
ROLLBACK

BEGIN TRANSACTION
    DELETE  
        [Categoria]
    WHERE
        [Id] >= 4
COMMIT