﻿EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'组织的快照',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'对象的ID',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'ID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'版本开始时间',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'VersionStartTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'版本结束时间',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'VersionEndTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'对象的状态',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'Status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建时间',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'CreateDate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'组织的名称',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'组织的显示名称',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'DisplayName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'组织的代码',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'CodeName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'全文检索字段',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'SearchContent'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'行唯一标识，用于全文检索',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'RowUniqueID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'对象的Schema名称',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'SchemaType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建者的ID',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'CreatorID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建者的名称',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'CreatorName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否允许继承容器的权限',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'AllowAclInheritance'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'注释',
    @level0type = N'SCHEMA',
    @level0name = N'SC',
    @level1type = N'TABLE',
    @level1name = N'SchemaOrganizationSnapshot',
    @level2type = N'COLUMN',
    @level2name = N'Comment'