CREATE OR ALTER VIEW vwCarreiras AS
    
    SELECT TOP 100
        [Career].[Id],
        [Career].[Title],
        [Career].[Url],
        COUNT(CareerId) AS [QuantCursos]
    FROM 
        [Career]
        INNER JOIN [CareerItem] ON [Career].[Id] = [CareerItem].[CareerId]
    GROUP BY
        [Career].[Id],
        [Career].[Title],
        [Career].[Url]