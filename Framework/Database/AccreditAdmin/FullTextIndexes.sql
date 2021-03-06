﻿CREATE FULLTEXT INDEX ON [dbo].[OU_USERS]
    ([SEARCH_NAME] LANGUAGE 2052)
    KEY INDEX [IX_OU_USERS_ORIGINAL_SORT]
    ON [AccreditOUUser];


GO
CREATE FULLTEXT INDEX ON [dbo].[ORGANIZATIONS]
    ([SEARCH_NAME] LANGUAGE 2052)
    KEY INDEX [PK_ORGANIZATION]
    ON [AccreditOUUser];


GO
CREATE FULLTEXT INDEX ON [dbo].[GROUPS]
    ([SEARCH_NAME] LANGUAGE 1033)
    KEY INDEX [PK_GROUP]
    ON [AccreditOUUser];


GO
CREATE FULLTEXT INDEX ON [dbo].[USERS]
    ([LOGON_NAME] LANGUAGE 1033)
    KEY INDEX [PK_USER]
    ON [AccreditOUUser];

