﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PermissionCenter
{
	public partial class ADReverseLogDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			this.Page.Response.CacheControl = "no-cache";

			if (!this.Page.IsPostBack && string.IsNullOrEmpty(this.gridMain.SortExpression))
			{
				this.gridMain.Sort("CreateTime", SortDirection.Descending);
			}

			if (Page.IsPostBack == false)
			{
				this.gridMain.PageSize = ProfileUtil.PageSize;
			}
		}

		protected void RefreshList(object sender, EventArgs e)
		{
			// 重新刷新列表
			this.InnerRefreshList();
		}

		private void InnerRefreshList()
		{
			this.dataSourceMain.LastQueryRowCount = -1;
			this.gridMain.SelectedKeys.Clear();
			this.gridMain.PageIndex = 0;
			this.Page.PreRender += new EventHandler(this.DelayRefreshList);
		}

		private void DelayRefreshList(object sender, EventArgs e)
		{
			this.gridMain.DataBind();
		}

		protected void SearchButtonClick(object sender, EventArgs e)
		{
			this.InnerRefreshList();
		}

		protected void dataSourceMain_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
		{
		}

		protected void HandleRowCommand(object sender, GridViewCommandEventArgs e)
		{
			switch (e.CommandName)
			{
				case "Shuttle":
					this.ShuttleToTime(DateTime.Parse(e.CommandArgument.ToString()));
					break;
				default:
					break;
			}
		}

		private void ShuttleToTime(DateTime dateTime)
		{
			PermissionCenter.WebControls.Banner.ChangeAndSaveTimePoint(dateTime);
			Response.Write(Util.SurroundScriptBlock("window.top.location = window.top.location;"));
			Response.End();
		}
	}
}