﻿CREATE TABLE [WF].[GROUP] (
    [GROUP_ID]     NVARCHAR (36) NOT NULL,
    [GROUP_NAME]   NVARCHAR (64) NOT NULL,
    [CATEGORY]     NVARCHAR (64) NULL,
    [CREATE_TIME]  DATETIME      NOT NULL,
    [CREATOR_ID]   NVARCHAR (36) NOT NULL,
    [CREATOR_NAME] NVARCHAR (64) NOT NULL,
    [MANAGER_ID]   NVARCHAR (36) NULL,
    [MANAGER_NAME] NVARCHAR (64) NULL,
    CONSTRAINT [PK_WF_GROUP] PRIMARY KEY CLUSTERED ([GROUP_ID] ASC)
);

