﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34003
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace lw.Comments
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="mar-antonios-naz")]
	public partial class CommentsDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertComments_Table(Comments_Table instance);
    partial void UpdateComments_Table(Comments_Table instance);
    partial void DeleteComments_Table(Comments_Table instance);
    #endregion
		
		public CommentsDataContext() : 
				base(global::lw.Comments.Properties.Settings.Default.mar_antonios_nazConnectionString1, mappingSource)
		{
			OnCreated();
		}
		
		public CommentsDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public CommentsDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public CommentsDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public CommentsDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Comments_Table> Comments_Tables
		{
			get
			{
				return this.GetTable<Comments_Table>();
			}
		}
		
		public System.Data.Linq.Table<Comments_Tables_View> Comments_Tables_Views
		{
			get
			{
				return this.GetTable<Comments_Tables_View>();
			}
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.CreateCommentsTable_Members")]
		public int CreateCommentsTable_Members([global::System.Data.Linq.Mapping.ParameterAttribute(Name="TableName", DbType="VarChar(50)")] string tableName, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="RelationField", DbType="VarChar(50)")] string relationField, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="AdminId", DbType="Int")] System.Nullable<int> adminId, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="Return", DbType="Int")] System.Nullable<int> @return)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), tableName, relationField, adminId, @return);
			return ((int)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.CreateCommentsTable_No_Members")]
		public int CreateCommentsTable_No_Members([global::System.Data.Linq.Mapping.ParameterAttribute(Name="TableName", DbType="VarChar(50)")] string tableName, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="RelationField", DbType="VarChar(50)")] string relationField, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="AdminId", DbType="Int")] System.Nullable<int> adminId, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="Return", DbType="Int")] System.Nullable<int> @return)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), tableName, relationField, adminId, @return);
			return ((int)(result.ReturnValue));
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Comments_Tables")]
	public partial class Comments_Table : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _TableId;
		
		private string _TableName;
		
		private string _RelationField;
		
		private System.Nullable<bool> _Members;
		
		private System.Nullable<int> _CustomPermissions;
		
		private System.Nullable<int> _AdminId;
		
		private System.Xml.Linq.XElement _xmlField;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnTableIdChanging(int value);
    partial void OnTableIdChanged();
    partial void OnTableNameChanging(string value);
    partial void OnTableNameChanged();
    partial void OnRelationFieldChanging(string value);
    partial void OnRelationFieldChanged();
    partial void OnMembersChanging(System.Nullable<bool> value);
    partial void OnMembersChanged();
    partial void OnCustomPermissionsChanging(System.Nullable<int> value);
    partial void OnCustomPermissionsChanged();
    partial void OnAdminIdChanging(System.Nullable<int> value);
    partial void OnAdminIdChanged();
    partial void OnxmlFieldChanging(System.Xml.Linq.XElement value);
    partial void OnxmlFieldChanged();
    #endregion
		
		public Comments_Table()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TableId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int TableId
		{
			get
			{
				return this._TableId;
			}
			set
			{
				if ((this._TableId != value))
				{
					this.OnTableIdChanging(value);
					this.SendPropertyChanging();
					this._TableId = value;
					this.SendPropertyChanged("TableId");
					this.OnTableIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TableName", DbType="VarChar(250)")]
		public string TableName
		{
			get
			{
				return this._TableName;
			}
			set
			{
				if ((this._TableName != value))
				{
					this.OnTableNameChanging(value);
					this.SendPropertyChanging();
					this._TableName = value;
					this.SendPropertyChanged("TableName");
					this.OnTableNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_RelationField", DbType="VarChar(250)")]
		public string RelationField
		{
			get
			{
				return this._RelationField;
			}
			set
			{
				if ((this._RelationField != value))
				{
					this.OnRelationFieldChanging(value);
					this.SendPropertyChanging();
					this._RelationField = value;
					this.SendPropertyChanged("RelationField");
					this.OnRelationFieldChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Members", DbType="Bit")]
		public System.Nullable<bool> Members
		{
			get
			{
				return this._Members;
			}
			set
			{
				if ((this._Members != value))
				{
					this.OnMembersChanging(value);
					this.SendPropertyChanging();
					this._Members = value;
					this.SendPropertyChanged("Members");
					this.OnMembersChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CustomPermissions", DbType="Int")]
		public System.Nullable<int> CustomPermissions
		{
			get
			{
				return this._CustomPermissions;
			}
			set
			{
				if ((this._CustomPermissions != value))
				{
					this.OnCustomPermissionsChanging(value);
					this.SendPropertyChanging();
					this._CustomPermissions = value;
					this.SendPropertyChanged("CustomPermissions");
					this.OnCustomPermissionsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdminId", DbType="Int")]
		public System.Nullable<int> AdminId
		{
			get
			{
				return this._AdminId;
			}
			set
			{
				if ((this._AdminId != value))
				{
					this.OnAdminIdChanging(value);
					this.SendPropertyChanging();
					this._AdminId = value;
					this.SendPropertyChanged("AdminId");
					this.OnAdminIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_xmlField", DbType="Xml", UpdateCheck=UpdateCheck.Never)]
		public System.Xml.Linq.XElement xmlField
		{
			get
			{
				return this._xmlField;
			}
			set
			{
				if ((this._xmlField != value))
				{
					this.OnxmlFieldChanging(value);
					this.SendPropertyChanging();
					this._xmlField = value;
					this.SendPropertyChanged("xmlField");
					this.OnxmlFieldChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Comments_Tables_View")]
	public partial class Comments_Tables_View
	{
		
		private int _TableId;
		
		private string _TableName;
		
		private string _RelationField;
		
		private System.Nullable<bool> _Members;
		
		private System.Nullable<int> _CustomPermissions;
		
		private System.Nullable<int> _AdminId;
		
		private System.Xml.Linq.XElement _xmlField;
		
		private string _UserName;
		
		private string _Email;
		
		public Comments_Tables_View()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TableId", DbType="Int NOT NULL")]
		public int TableId
		{
			get
			{
				return this._TableId;
			}
			set
			{
				if ((this._TableId != value))
				{
					this._TableId = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TableName", DbType="VarChar(250)")]
		public string TableName
		{
			get
			{
				return this._TableName;
			}
			set
			{
				if ((this._TableName != value))
				{
					this._TableName = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_RelationField", DbType="VarChar(250)")]
		public string RelationField
		{
			get
			{
				return this._RelationField;
			}
			set
			{
				if ((this._RelationField != value))
				{
					this._RelationField = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Members", DbType="Bit")]
		public System.Nullable<bool> Members
		{
			get
			{
				return this._Members;
			}
			set
			{
				if ((this._Members != value))
				{
					this._Members = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CustomPermissions", DbType="Int")]
		public System.Nullable<int> CustomPermissions
		{
			get
			{
				return this._CustomPermissions;
			}
			set
			{
				if ((this._CustomPermissions != value))
				{
					this._CustomPermissions = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdminId", DbType="Int")]
		public System.Nullable<int> AdminId
		{
			get
			{
				return this._AdminId;
			}
			set
			{
				if ((this._AdminId != value))
				{
					this._AdminId = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_xmlField", DbType="Xml", UpdateCheck=UpdateCheck.Never)]
		public System.Xml.Linq.XElement xmlField
		{
			get
			{
				return this._xmlField;
			}
			set
			{
				if ((this._xmlField != value))
				{
					this._xmlField = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserName", DbType="VarChar(150)")]
		public string UserName
		{
			get
			{
				return this._UserName;
			}
			set
			{
				if ((this._UserName != value))
				{
					this._UserName = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="VarChar(150)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this._Email = value;
				}
			}
		}
	}
}
#pragma warning restore 1591