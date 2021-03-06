﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppRoles.aspx.cs" Inherits="PermissionCenter.AppRoles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" scroll="no" style="overflow: hidden">
<head id="Head1" runat="server">
	<title>权限中心-应用角色</title>
	<link rel="icon" href="../favicon.ico" type="image/x-icon" />
	<link rel="Shortcut Icon" href="../favicon.ico" />
	<base target="_self" />
	<pc:HeaderControl ID="HeaderControl1" runat="server">
	</pc:HeaderControl>
</head>
<body>
	<form id="form1" runat="server">
	<soa:DataBindingControl runat="server" ID="binding1">
		<ItemBindings>
			<soa:DataBindingItem ControlID="ctlUpload" ControlPropertyName="Tag" DataPropertyName="ID"
				Direction="DataToControl" />
			<soa:DataBindingItem ControlID="hfAppId" ControlPropertyName="Value" DataPropertyName="ID"
				Direction="DataToControl" />
			<soa:DataBindingItem ControlID="appName" ControlPropertyName="Text" DataPropertyName="VisibleName"
				Direction="DataToControl" />
			<soa:DataBindingItem ControlID="lnkFunctions" ControlPropertyName="NavigateUrl" DataPropertyName="ID"
				Format="~/lists/AppFunctions.aspx?app={0}" Direction="DataToControl" />
			<soa:DataBindingItem ControlID="lnkRoles" ControlPropertyName="NavigateUrl" DataPropertyName="ID"
				Format="~/lists/AppRoles.aspx?app={0}" Direction="DataToControl" />
		</ItemBindings>
	</soa:DataBindingControl>
	<pc:SceneControl ID="SceneControl1" runat="server">
	</pc:SceneControl>
	<pc:BannerNotice ID="notice" runat="server" RenderType="Auto"></pc:BannerNotice>
	<h1 class="pc-caption">
		<asp:Literal ID="appName" runat="server" Mode="Encode"></asp:Literal><span class="pc-timepointmark"><mcs:TimePointDisplayControl
			ID="TimePointDisplayControl1" runat="server">
		</mcs:TimePointDisplayControl>
		</span>
	</h1>
	<ul class="pc-tabs-header">
		<li class="pc-active">
			<asp:HyperLink ID="lnkRoles" runat="server" Text="应用角色" />
		</li>
		<li>
			<asp:HyperLink ID="lnkFunctions" runat="server" Text="应用功能" />
		</li>
	</ul>
	<div class="pc-frame-container">
		<div class="pc-search-box-wrapper">
			<soa:DeluxeSearch ID="DeluxeSearch" runat="server" CssClass="deluxe-search deluxe-left"
				HasCategory="False" SearchFieldTemplate="CONTAINS(${DataField}$, ${Data}$)" SearchField="O.SearchContent"
				OnSearching="SearchButtonClick" OnConditionClick="onconditionClick" CustomSearchContainerControlID="advSearchPanel"
				HasAdvanced="true">
			</soa:DeluxeSearch>
			<soa:DataBindingControl runat="server" ID="searchBinding" AllowClientCollectData="True">
				<ItemBindings>
					<soa:DataBindingItem ControlID="sfCodeName" DataPropertyName="CodeName" />
				</ItemBindings>
			</soa:DataBindingControl>
			<div id="advSearchPanel" runat="server" style="display: none" class="pc-search-advpan">
				<asp:HiddenField runat="server" ID="sfAdvanced" Value="False" />
				<table border="0" cellpadding="0" cellspacing="0" class="pc-search-grid-duo">
					<tr>
						<td>
							<label for="sfCodeName" class="pc-label">
								代码名称</label><asp:TextBox runat="server" ID="sfCodeName" MaxLength="56" CssClass="pc-textbox" />(精确)
						</td>
						<td>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="pc-container5">
			<div class="pc-listmenu-container">
				<ul class="pc-listmenu" id="listMenu">
					<li>
						<asp:LinkButton runat="server" ID="lnkNewRole" CssClass="button pc-list-cmd" OnClientClick="return ($pc.getEnabled(this) && $pc.popups.newRole(this));"
							OnClick="RefreshList" OnPreRender="HandleMenuItemPreRender">新建角色</asp:LinkButton>
					</li>
					<li>
						<asp:LinkButton runat="server" CssClass="pc-list-cmd" ID="btnDeleteSelected" Text="删除"
							OnClientClick="return ($pc.getEnabled(this) && $pc.popups.batchDelete('gridMain','AppRoles'));"
							OnClick="BatchDelete"></asp:LinkButton>
					</li>
					<li>
						<asp:LinkButton runat="server" CssClass="list-cmd" ID="btnImport" Text="导入" OnClientClick="return ($pc.getEnabled(this) && invokeImport() && false);"
							OnClick="RefreshList"></asp:LinkButton>
					</li>
					<li>
						<asp:LinkButton runat="server" CssClass="list-cmd" ID="btnExport" Text="导出" OnClientClick="return ($pc.getEnabled(this) && invokeExport() && false);"></asp:LinkButton>
					</li>
				</ul>
			</div>
			<div class="pc-grid-container">
				<mcs:DeluxeGrid ID="gridMain" runat="server" AutoGenerateColumns="False" DataSourceID="dataSourceMain"
					AllowPaging="True" AllowSorting="True" ShowCheckBoxes="True" Category="PermissionCenter"
					GridTitle="应用角色" DataKeyNames="ID" CssClass="dataList pc-datagrid" TitleCssClass="title"
					PagerSettings-Position="Bottom" DataSourceMaxRow="0" ShowExportControl="true"
					TitleColor="141, 143, 149" TitleFontSize="Large" OnRowCommand="HandleRowCommand">
					<EmptyDataTemplate>
						暂时没有您需要的数据
					</EmptyDataTemplate>
					<HeaderStyle CssClass="head" />
					<Columns>
						<asp:TemplateField HeaderText="名称" SortExpression="Name">
							<ItemTemplate>
								<div>
									<asp:HyperLink runat="server" CssClass="pc-item-link" NavigateUrl='<%#Eval("ID","~/lists/AppRoleMembers.aspx?role={0}") %>'
										Target="_blank" onclick="return $pc.modalPopup(this);"><i class="pc-icon16 Roles"></i><%# Server.HtmlEncode((string)Eval("Name")) %></asp:HyperLink></div>
								<div>
									<div class="pc-action-tray" runat="server" id="d" visible='<%# this.gridMain.ExportingDeluxeGrid == false %>'>
										<asp:LinkButton ID="lnkEdit" runat="server" CssClass="pc-item-cmd" data-id='<%#PermissionCenter.Util.HtmlAttributeEncode((string)Eval("ID"))%>'
											OnClientClick="return $pc.popups.editProperty(this);" OnClick="RefreshList">基本属性</asp:LinkButton>
										<asp:HyperLink ID="HyperLink1" runat="server" CssClass="pc-item-cmd" Text="角色功能定义"
											NavigateUrl='<%#Eval("ID","~/dialogs/RoleDefinition.aspx?role={0}") %>' onclick="return $pc.modalPopup(this);"
											Target="_blank"></asp:HyperLink>
										<asp:HyperLink ID="HyperLink3" runat="server" CssClass="pc-item-cmd" Text="角色成员"
											NavigateUrl='<%#Eval("ID","~/lists/AppRoleMembers.aspx?role={0}") %>' onclick="return $pc.modalPopup(this);"
											Target="_blank"></asp:HyperLink>
										<asp:HyperLink ID="lnkRP" runat="server" NavigateUrl='<%#Eval("ID","~/lists/FlowList.aspx?id={0}") %>'
											onclick="return $pc.modalPopup(this);" CssClass="pc-item-cmd" Target="_blank">查看相关流程</asp:HyperLink>
										<asp:LinkButton ID="lnkItemDelete" runat="server" Text="删除" CssClass="pc-item-cmd"
											Enabled='<%# this.DeleteRoleEnabled %>' CommandName="DeleteItem" CommandArgument='<%#Eval("ID") %>'
											OnClientClick="return ($pc.getEnabled(this) && $pc.confirmDelete('确定要删除?'));"></asp:LinkButton>
										<asp:HyperLink ID="lnkHistory" runat="server" CssClass="pc-item-cmd" Target="_blank"
											onclick="return $pc.modalPopup(this);" NavigateUrl='<%#Eval("ID","~/lists/ObjectHistoryLog.aspx?id={0}") %>'>历史</asp:HyperLink>
									</div>
								</div>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:BoundField DataField="DisplayName" HtmlEncode="true" HeaderText="显示名称" SortExpression="DisplayName" />
						<asp:BoundField DataField="CodeName" HtmlEncode="true" HeaderText="代码名称" SortExpression="CodeName" />
						<asp:TemplateField HeaderText="矩阵">
							<ItemTemplate>
								<div style="padding-left: 8px; padding-right: 8px">
									<soa:RoleMatrixEntryControl runat="server" AppID='<%# this.AppObject.ID %>' AppCodeName='<%# this.AppObject.CodeName %>'
										AppName='<%# this.AppObject.DisplayName %>' RoleID='<%#Eval("ID")%>' RoleName='<%# Eval("Name") %>'
										RoleCodeName='<%#Eval("CodeName") %>' RoleDescription='<%#Eval("DisplayName") %>'
										ID="matrixEntry" EnableAccessTicket="true" ReadOnly='<%# !this.EditRoleMembersEnabled %>' />
								</div>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="创建者" SortExpression="O.CreatorName">
							<ItemTemplate>
								<soa:UserPresence runat="server" ID="userPresence" ShowUserDisplayName="true" ShowUserIcon="false"
									UserID='<%#Eval("CreatorID") %>' UserDisplayName='<%# Server.HtmlEncode(Eval("CreatorName").ToString()) %>' />
							</ItemTemplate>
						</asp:TemplateField>
						<asp:BoundField DataField="CreateDate" HtmlEncode="true" HeaderText="创建日期" SortExpression="O.CreateDate"
							DataFormatString="{0:yyyy-MM-dd HH:mm:ss}" />
					</Columns>
					<PagerStyle CssClass="pager" />
					<RowStyle CssClass="item" />
					<CheckBoxTemplateItemStyle CssClass="checkbox" />
					<AlternatingRowStyle CssClass="aitem" />
					<PagerSettings FirstPageText="&lt;&lt;" LastPageText="&gt;&gt;" Mode="NextPreviousFirstLast"
						NextPageText="下一页" Position="TopAndBottom" PreviousPageText="上一页"></PagerSettings>
					<SelectedRowStyle CssClass="selecteditem" />
					<CheckBoxTemplateHeaderStyle CssClass="checkbox" />
					<PagerTemplate>
					</PagerTemplate>
				</mcs:DeluxeGrid>
			</div>
		</div>
	</div>
	<soa:DeluxeObjectDataSource ID="dataSourceMain" runat="server" EnablePaging="True"
		TypeName="MCS.Library.SOA.DataObjects.Security.DataSources.SchemaApplicationRolesDataSource"
		EnableViewState="false" OnSelecting="dataSourceMain_Selecting">
		<SelectParameters>
			<asp:QueryStringParameter DbType="String" Name="parentId" QueryStringField="app" />
		</SelectParameters>
	</soa:DeluxeObjectDataSource>
	<pc:Footer ID="footer" runat="server" />
	<soa:UploadProgressControl runat="server" ID="ctlUpload" DialogHeaderText="导入角色数据(xml)"
		DialogTitle="导入" OnDoUploadProgress="DoFileUpload" OnLoadingDialogContent="ctlUpload_LoadingDialogContent"
		OnClientCompleted="postImportProcess" />
	<asp:HiddenField runat="server" ID="hfAppId" />
	</form>
	<script type="text/javascript">
		$pc.ui.listMenuBehavior("listMenu");
		$pc.ui.gridBehavior("gridMain", "hover");
		$pc.ui.traceWindowWidth();

		function onconditionClick(sender, e) {
			var content = Sys.Serialization.JavaScriptSerializer.deserialize(e.ConditionContent);
			var bindingControl = $find("searchBinding");
			bindingControl.dataBind(content);
		}

		function invokeImport() {
			var result = $find("ctlUpload").showDialog()
			if (result)
				return true;
			return false;
		}

		function postImportProcess(e) {
			if (e.dataChanged)
				__doPostBack('btnImport', '');
		}

		function invokeExport() {
			var grid = $find("gridMain");
			if (grid) {
				var keys = grid.get_clientSelectedKeys();
				if (keys.length > 0) {
					$pc.postViaIFrame($pc.appRoot + "Handlers/ObjectExport.ashx", { context: "AppRoles", id: keys, appId: document.getElementById("hfAppId").value });
				}
			}
			grid = false;
			return false;
		}
	</script>
</body>
</html>
