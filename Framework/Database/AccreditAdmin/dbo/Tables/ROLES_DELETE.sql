﻿CREATE TABLE [dbo].[ROLES_DELETE] (
    [ID]             NVARCHAR (36)  NOT NULL,
    [APP_ID]         NVARCHAR (36)  NOT NULL,
    [NAME]           NVARCHAR (32)  NOT NULL,
    [CODE_NAME]      NVARCHAR (32)  NOT NULL,
    [DESCRIPTION]    NVARCHAR (128) NULL,
    [CLASSIFY]       NCHAR (1)      NOT NULL,
    [SORT_ID]        INT            NOT NULL,
    [INHERITED]      NCHAR (1)      NULL,
    [ALLOW_DELEGATE] NCHAR (1)      NULL,
    [MODIFY_TIME]    DATETIME       NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_ROLES_DELETE]
    ON [dbo].[ROLES_DELETE]([APP_ID] ASC, [ID] ASC) WITH (FILLFACTOR = 50, PAD_INDEX = ON);

