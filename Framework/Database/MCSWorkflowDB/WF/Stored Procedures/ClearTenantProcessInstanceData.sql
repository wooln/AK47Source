﻿CREATE PROCEDURE [WF].[ClearTenantProcessInstanceData]
	@tenantCode NVARCHAR(36)
AS
BEGIN
	DELETE WF.ACL WHERE TENANT_CODE = @tenantCode
	DELETE WF.ACTIVE_USERS WHERE TENANT_CODE = @tenantCode
	DELETE WF.APPLICATIONS_COMMON_INFO WHERE TENANT_CODE = @tenantCode
	DELETE WF.COMMON_INFO_MAPPING WHERE TENANT_CODE = @tenantCode
	DELETE WF.[COUNTER] WHERE TENANT_CODE = @tenantCode
	DELETE WF.DELEGATIONS WHERE TENANT_CODE = @tenantCode

	DELETE WF.GENERIC_FORM_DATA WHERE TENANT_CODE = @tenantCode
	DELETE WF.GENERIC_FORM_RELATIVE_DATA WHERE TENANT_CODE = @tenantCode
	DELETE WF.TASK_ASSIGNED_OBJECTS WHERE TENANT_CODE = @tenantCode
	DELETE WF.TASK_ASSIGNEES WHERE TENANT_CODE = @tenantCode
	DELETE WF.GENERIC_OPINIONS WHERE TENANT_CODE = @tenantCode

	DELETE WF.[IMAGE] WHERE TENANT_CODE = @tenantCode
	DELETE WF.INVALID_ASSIGNEES WHERE TENANT_CODE = @tenantCode

	DELETE WF.LOCK WHERE TENANT_CODE = @tenantCode
	DELETE WF.MATERIAL WHERE TENANT_CODE = @tenantCode
	DELETE WF.MATERIAL_CONTENT WHERE TENANT_CODE = @tenantCode

	DELETE WF.PENDING_ACTIVITIES WHERE TENANT_CODE = @tenantCode
	DELETE WF.PENDING_ACTIVITIES_SERVICE WHERE TENANT_CODE = @tenantCode

	DELETE WF.PERSIST_QUEUE WHERE TENANT_CODE = @tenantCode
	DELETE WF.PERSIST_QUEUE_ARCHIEVED WHERE TENANT_CODE = @tenantCode

	DELETE WF.PROCESS_CURRENT_ACTIVITIES WHERE TENANT_CODE = @tenantCode
	DELETE WF.PROCESS_CURRENT_ASSIGNEES WHERE TENANT_CODE = @tenantCode

	DELETE WF.PROCESS_DIMENSIONS WHERE TENANT_CODE = @tenantCode
	DELETE WF.PROCESS_INSTANCES WHERE TENANT_CODE = @tenantCode
	DELETE WF.PROCESS_RELATIVE_PARAMS WHERE TENANT_CODE = @tenantCode
	DELETE WF.RELATIVE_PROCESSES WHERE TENANT_CODE = @tenantCode

	DELETE WF.SYS_ACCOMPLISHED_TASK WHERE TENANT_CODE = @tenantCode
	DELETE WF.SYS_TASK WHERE TENANT_CODE = @tenantCode

	DELETE WF.SYS_TASK_ACTIVITY WHERE TENANT_CODE = @tenantCode
	DELETE WF.SYS_TASK_PROCESS WHERE TENANT_CODE = @tenantCode

	DELETE WF.TASK_ASSIGNED_OBJECTS WHERE TENANT_CODE = @tenantCode
	DELETE WF.TASK_ASSIGNEES WHERE TENANT_CODE = @tenantCode

	DELETE WF.UPLOAD_FILE_HISTORY WHERE TENANT_CODE = @tenantCode
	DELETE WF.USER_ACCOMPLISHED_TASK WHERE TENANT_CODE = @tenantCode
	DELETE WF.USER_OPERATION_LOG WHERE TENANT_CODE = @tenantCode
	DELETE WF.USER_OPERATION_TASKS_LOG WHERE TENANT_CODE = @tenantCode
	DELETE WF.USER_TASK WHERE TENANT_CODE = @tenantCode
	DELETE WF.USER_TASK_CATEGORY WHERE TENANT_CODE = @tenantCode

	DELETE KB.RELATIVE_LINK WHERE TENANT_CODE = @tenantCode
	DELETE KB.RELATIVE_LINK_GROUP WHERE TENANT_CODE = @tenantCode

	DELETE MSG.EMAIL_ADDRESSES WHERE TENANT_CODE = @tenantCode
	DELETE MSG.EMAIL_ATTACHMENTS WHERE TENANT_CODE = @tenantCode
	DELETE MSG.EMAIL_MESSAGES WHERE TENANT_CODE = @tenantCode
	DELETE MSG.SENT_EMAIL_MESSAGES WHERE TENANT_CODE = @tenantCode
END
