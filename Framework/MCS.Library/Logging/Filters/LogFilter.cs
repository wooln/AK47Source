#region
// -------------------------------------------------
// Assembly	：	DeluxeWorks.Library
// FileName	：	LogFilter.cs
// Remark	：	抽象基类，日志过滤器，实现ILogFilter接口
// -------------------------------------------------
// VERSION  	AUTHOR				DATE			CONTENT
// 1.0		    ccic\zhangtiejun    20070430		创建
// -------------------------------------------------
#endregion

using System;
using System.Collections.Generic;
using System.Text;

using MCS.Library.Core;

namespace MCS.Library.Logging
{
    /// <summary>
    /// 抽象类，实现ILogFilter接口
    /// </summary>
    /// <remarks>
    /// 所有LogFilter的基类
    /// 派生时，为使定制的Filter支持可配置，必须在该派生类中实现参数为LogConfigurationElement对象的构造函数
    /// </remarks>
    public abstract class LogFilter : ILogFilter
    {
        private string name = string.Empty;

        /// <summary>
        /// Filter名称
        /// </summary>
        public string Name
        {
            get
            {
                return this.name;
            }
            set
            {
                this.name = value;
            }
        }

        /// <summary>
        /// 缺省构造函数
        /// </summary>
        public LogFilter()
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
		/// <param name="filterName">Filter名称</param>
        /// <remarks>
        /// name参数不能为空，否则抛出异常
        /// </remarks>
        public LogFilter(string filterName)
        {
			ExceptionHelper.CheckStringIsNullOrEmpty(filterName, "Filter的名称不能为空");

			this.name = filterName;
        }

        /// <summary>
        /// 抽象方法，实现日志过滤
        /// </summary>
        /// <param name="log">日志对象</param>
        /// <returns>布尔值，true：通过，false：不通过</returns>
        public abstract bool IsMatch(LogEntity log);
    }
}
