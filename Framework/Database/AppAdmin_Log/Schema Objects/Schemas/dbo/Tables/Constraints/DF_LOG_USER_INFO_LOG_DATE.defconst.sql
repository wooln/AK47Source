﻿ALTER TABLE [dbo].[LOG_USER_INFO]
    ADD CONSTRAINT [DF_LOG_USER_INFO_LOG_DATE] DEFAULT (getdate()) FOR [LOG_DATE];

