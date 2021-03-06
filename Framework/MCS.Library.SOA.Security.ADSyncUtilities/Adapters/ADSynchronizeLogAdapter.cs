﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using MCS.Library.Data;
using MCS.Library.Data.Builder;
using MCS.Library.Data.Mapping;
using MCS.Library.SOA.DataObjects;
using MCS.Library.SOA.Security.ADSyncUtilities.Entity;

namespace MCS.Library.SOA.Security.ADSyncUtilities.Adapters
{
	public class ADSynchronizeLogAdapter : UpdatableAndLoadableAdapterBase<ADSynchronizeLog, ADSynchronizeLogCollection>
	{
		public static readonly ADSynchronizeLogAdapter Instance = new ADSynchronizeLogAdapter();

		private ADSynchronizeLogAdapter()
		{
		}

		protected override string GetConnectionName()
		{
			return ConnectionNameMappingSettings.GetConfig().GetConnectionName("PermissionsCenter", "PermissionsCenter");
		}
	}
}