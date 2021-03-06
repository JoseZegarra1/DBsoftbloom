CREATE TABLE [dbo].[PROVEEDOR]
(
[IDPROV] [int] NOT NULL IDENTITY(1, 1),
[RAZSOCPROV] [varchar] (60) COLLATE Modern_Spanish_CI_AS NOT NULL,
[RUCPROV] [char] (11) COLLATE Modern_Spanish_CI_AS NOT NULL,
[EMAPROV] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[DIRPROV] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[TIPPROV] [varchar] (30) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ESTPROV] [char] (1) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CELPROV] [char] (9) COLLATE Modern_Spanish_CI_AS NULL,
[CODUBI] [char] (6) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PROVEEDOR] ADD CONSTRAINT [PROVEEDOR_pk] PRIMARY KEY CLUSTERED  ([IDPROV]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PROVEEDOR] ADD CONSTRAINT [PROVEDOR_UBIGEO] FOREIGN KEY ([CODUBI]) REFERENCES [dbo].[UBIGEO] ([CODUBI])
GO
