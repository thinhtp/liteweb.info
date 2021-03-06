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

namespace lw.Networking
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
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="SLTC")]
	public partial class SocialNetworksDataContextDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertNetwork(Network instance);
    partial void UpdateNetwork(Network instance);
    partial void DeleteNetwork(Network instance);
    #endregion
		
		public SocialNetworksDataContextDataContext() : 
				base(global::lw.Networking.Properties.Settings.Default.SLTCConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public SocialNetworksDataContextDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SocialNetworksDataContextDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SocialNetworksDataContextDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SocialNetworksDataContextDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Network> Networks
		{
			get
			{
				return this.GetTable<Network>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Networks")]
	public partial class Network : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _NetworkId;
		
		private string _Name;
		
		private string _Description;
		
		private string _UniqueName;
		
		private System.Nullable<int> _ParentId;
		
		private System.Nullable<System.DateTime> _DateCreated;
		
		private System.Nullable<System.DateTime> _LastModified;
		
		private System.Nullable<int> _OperatorId;
		
		private string _Website;
		
		private System.Xml.Linq.XElement _XmlField;
		
		private string _Picture;
		
		private string _Image;
		
		private System.Nullable<int> _Status;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnNetworkIdChanging(int value);
    partial void OnNetworkIdChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnDescriptionChanging(string value);
    partial void OnDescriptionChanged();
    partial void OnUniqueNameChanging(string value);
    partial void OnUniqueNameChanged();
    partial void OnParentIdChanging(System.Nullable<int> value);
    partial void OnParentIdChanged();
    partial void OnDateCreatedChanging(System.Nullable<System.DateTime> value);
    partial void OnDateCreatedChanged();
    partial void OnLastModifiedChanging(System.Nullable<System.DateTime> value);
    partial void OnLastModifiedChanged();
    partial void OnOperatorIdChanging(System.Nullable<int> value);
    partial void OnOperatorIdChanged();
    partial void OnWebsiteChanging(string value);
    partial void OnWebsiteChanged();
    partial void OnXmlFieldChanging(System.Xml.Linq.XElement value);
    partial void OnXmlFieldChanged();
    partial void OnPictureChanging(string value);
    partial void OnPictureChanged();
    partial void OnImageChanging(string value);
    partial void OnImageChanged();
    partial void OnStatusChanging(System.Nullable<int> value);
    partial void OnStatusChanged();
    #endregion
		
		public Network()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NetworkId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int NetworkId
		{
			get
			{
				return this._NetworkId;
			}
			set
			{
				if ((this._NetworkId != value))
				{
					this.OnNetworkIdChanging(value);
					this.SendPropertyChanging();
					this._NetworkId = value;
					this.SendPropertyChanged("NetworkId");
					this.OnNetworkIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(256)")]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this.OnNameChanging(value);
					this.SendPropertyChanging();
					this._Name = value;
					this.SendPropertyChanged("Name");
					this.OnNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Description", DbType="NText", UpdateCheck=UpdateCheck.Never)]
		public string Description
		{
			get
			{
				return this._Description;
			}
			set
			{
				if ((this._Description != value))
				{
					this.OnDescriptionChanging(value);
					this.SendPropertyChanging();
					this._Description = value;
					this.SendPropertyChanged("Description");
					this.OnDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UniqueName", DbType="NVarChar(256) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string UniqueName
		{
			get
			{
				return this._UniqueName;
			}
			set
			{
				if ((this._UniqueName != value))
				{
					this.OnUniqueNameChanging(value);
					this.SendPropertyChanging();
					this._UniqueName = value;
					this.SendPropertyChanged("UniqueName");
					this.OnUniqueNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ParentId", DbType="Int")]
		public System.Nullable<int> ParentId
		{
			get
			{
				return this._ParentId;
			}
			set
			{
				if ((this._ParentId != value))
				{
					this.OnParentIdChanging(value);
					this.SendPropertyChanging();
					this._ParentId = value;
					this.SendPropertyChanged("ParentId");
					this.OnParentIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DateCreated", DbType="DateTime")]
		public System.Nullable<System.DateTime> DateCreated
		{
			get
			{
				return this._DateCreated;
			}
			set
			{
				if ((this._DateCreated != value))
				{
					this.OnDateCreatedChanging(value);
					this.SendPropertyChanging();
					this._DateCreated = value;
					this.SendPropertyChanged("DateCreated");
					this.OnDateCreatedChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastModified", DbType="DateTime")]
		public System.Nullable<System.DateTime> LastModified
		{
			get
			{
				return this._LastModified;
			}
			set
			{
				if ((this._LastModified != value))
				{
					this.OnLastModifiedChanging(value);
					this.SendPropertyChanging();
					this._LastModified = value;
					this.SendPropertyChanged("LastModified");
					this.OnLastModifiedChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OperatorId", DbType="Int")]
		public System.Nullable<int> OperatorId
		{
			get
			{
				return this._OperatorId;
			}
			set
			{
				if ((this._OperatorId != value))
				{
					this.OnOperatorIdChanging(value);
					this.SendPropertyChanging();
					this._OperatorId = value;
					this.SendPropertyChanged("OperatorId");
					this.OnOperatorIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Website", DbType="NVarChar(256)")]
		public string Website
		{
			get
			{
				return this._Website;
			}
			set
			{
				if ((this._Website != value))
				{
					this.OnWebsiteChanging(value);
					this.SendPropertyChanging();
					this._Website = value;
					this.SendPropertyChanged("Website");
					this.OnWebsiteChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_XmlField", DbType="Xml", CanBeNull=true, UpdateCheck=UpdateCheck.Never)]
		public System.Xml.Linq.XElement XmlField
		{
			get
			{
				return this._XmlField;
			}
			set
			{
				if ((this._XmlField != value))
				{
					this.OnXmlFieldChanging(value);
					this.SendPropertyChanging();
					this._XmlField = value;
					this.SendPropertyChanged("XmlField");
					this.OnXmlFieldChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Picture", DbType="VarChar(50)")]
		public string Picture
		{
			get
			{
				return this._Picture;
			}
			set
			{
				if ((this._Picture != value))
				{
					this.OnPictureChanging(value);
					this.SendPropertyChanging();
					this._Picture = value;
					this.SendPropertyChanged("Picture");
					this.OnPictureChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Image", DbType="NVarChar(150)")]
		public string Image
		{
			get
			{
				return this._Image;
			}
			set
			{
				if ((this._Image != value))
				{
					this.OnImageChanging(value);
					this.SendPropertyChanging();
					this._Image = value;
					this.SendPropertyChanged("Image");
					this.OnImageChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Status", DbType="Int")]
		public System.Nullable<int> Status
		{
			get
			{
				return this._Status;
			}
			set
			{
				if ((this._Status != value))
				{
					this.OnStatusChanging(value);
					this.SendPropertyChanging();
					this._Status = value;
					this.SendPropertyChanged("Status");
					this.OnStatusChanged();
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
}
#pragma warning restore 1591
