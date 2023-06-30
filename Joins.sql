INSERT INTO [Curso]([Nome]) VALUES('Redes com Cisco Packet Tracer')

SELECT
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS 'Categoria',
    [Categoria].[Nome]
FROM
    [Curso]
    INNER JOIN [Categoria] ON [Curso].[CategoriaId] = [Categoria].[Id]
    -- Ou LEFT JOIN
    -- OU RIGHT JOIN
    -- OU FULL JOIN