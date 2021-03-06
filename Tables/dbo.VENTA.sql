CREATE TABLE [dbo].[VENTA]
(
[IDVEN] [int] NOT NULL IDENTITY(1, 1),
[FECVEN] [date] NOT NULL,
[IDCLI] [int] NOT NULL,
[IDVEND] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VENTA] ADD CONSTRAINT [VENTA_pk] PRIMARY KEY CLUSTERED  ([IDVEN]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VENTA] ADD CONSTRAINT [VENTA_CLIENTE] FOREIGN KEY ([IDCLI]) REFERENCES [dbo].[CLIENTE] ([IDCLI])
GO
ALTER TABLE [dbo].[VENTA] ADD CONSTRAINT [VENTA_VENDEDOR] FOREIGN KEY ([IDVEND]) REFERENCES [dbo].[VENDEDOR] ([IDVEND])
GO
