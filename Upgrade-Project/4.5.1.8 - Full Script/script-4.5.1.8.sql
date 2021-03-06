IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trig_DeletePollQuestion]'))
DROP TRIGGER [Trig_DeletePollQuestion]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trig_DeletePollIOption]'))
DROP TRIGGER [Trig_DeletePollIOption]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Page_Delete]'))
DROP TRIGGER [Page_Delete]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_DeleteOrders]'))
DROP TRIGGER [Trg_DeleteOrders]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_News_Networks]'))
DROP TRIGGER [Trg_Delete_News_Networks]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_NetworkId_RelateToPhotoAlbums]'))
DROP TRIGGER [Trg_Delete_NetworkId_RelateToPhotoAlbums]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_NetworkId_RelateToNews]'))
DROP TRIGGER [Trg_Delete_NetworkId_RelateToNews]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_NetworkId_RelateToDownloads]'))
DROP TRIGGER [Trg_Delete_NetworkId_RelateToDownloads]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[trg_Delete_Member]'))
DROP TRIGGER [trg_Delete_Member]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Media_Delete]'))
DROP TRIGGER [Media_Delete]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_Item]'))
DROP TRIGGER [Trg_Delete_Item]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_DeleteItemOptions]'))
DROP TRIGGER [Trg_DeleteItemOptions]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_Option]'))
DROP TRIGGER [Trg_Delete_Option]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_delete_Item_Choice]'))
DROP TRIGGER [Trg_delete_Item_Choice]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_Downloads_Networks]'))
DROP TRIGGER [Trg_Delete_Downloads_Networks]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_CategoryDelete]'))
DROP TRIGGER [Trg_CategoryDelete]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_DeleteBrand]'))
DROP TRIGGER [Trg_DeleteBrand]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_DeleteAdKeyword]'))
DROP TRIGGER [Trg_DeleteAdKeyword]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Videos_VideoCategories]') AND parent_object_id = OBJECT_ID(N'[Videos]'))
ALTER TABLE [Videos] DROP CONSTRAINT [FK_Videos_VideoCategories]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PollsUserResponses_PollAnswers]') AND parent_object_id = OBJECT_ID(N'[PollsUserResponses]'))
ALTER TABLE [PollsUserResponses] DROP CONSTRAINT [FK_PollsUserResponses_PollAnswers]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PollAnswers_Polls]') AND parent_object_id = OBJECT_ID(N'[PollAnswers]'))
ALTER TABLE [PollAnswers] DROP CONSTRAINT [FK_PollAnswers_Polls]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_MediaWidgets_Widgets]') AND parent_object_id = OBJECT_ID(N'[MediaWidgets]'))
ALTER TABLE [MediaWidgets] DROP CONSTRAINT [FK_MediaWidgets_Widgets]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_MediaWidgets_Medias]') AND parent_object_id = OBJECT_ID(N'[MediaWidgets]'))
ALTER TABLE [MediaWidgets] DROP CONSTRAINT [FK_MediaWidgets_Medias]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Items_Brands1]') AND parent_object_id = OBJECT_ID(N'[Items]'))
ALTER TABLE [Items] DROP CONSTRAINT [FK_Items_Brands1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Categories_Templates]') AND parent_object_id = OBJECT_ID(N'[Categories]'))
ALTER TABLE [Categories] DROP CONSTRAINT [FK_Categories_Templates]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Categories_DiscountPlans]') AND parent_object_id = OBJECT_ID(N'[Categories]'))
ALTER TABLE [Categories] DROP CONSTRAINT [FK_Categories_DiscountPlans]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Ads_Reports_Ads]') AND parent_object_id = OBJECT_ID(N'[Ads_Reports]'))
ALTER TABLE [Ads_Reports] DROP CONSTRAINT [FK_Ads_Reports_Ads]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AdKeywordRelation_Ads]') AND parent_object_id = OBJECT_ID(N'[Ads_AdKeywordRelation]'))
ALTER TABLE [Ads_AdKeywordRelation] DROP CONSTRAINT [FK_AdKeywordRelation_Ads]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AdKeywordRelation_AdKeywords]') AND parent_object_id = OBJECT_ID(N'[Ads_AdKeywordRelation]'))
ALTER TABLE [Ads_AdKeywordRelation] DROP CONSTRAINT [FK_AdKeywordRelation_AdKeywords]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Ads_Ads_Zones]') AND parent_object_id = OBJECT_ID(N'[Ads]'))
ALTER TABLE [Ads] DROP CONSTRAINT [FK_Ads_Ads_Zones]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Polls_UID]') AND type = 'D')
BEGIN
ALTER TABLE [Polls] DROP CONSTRAINT [DF_Polls_UID]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PollResults_VoteDate]') AND type = 'D')
BEGIN
ALTER TABLE [PollResults] DROP CONSTRAINT [DF_PollResults_VoteDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PollAnswers_SortOrder]') AND type = 'D')
BEGIN
ALTER TABLE [PollAnswers] DROP CONSTRAINT [DF_PollAnswers_SortOrder]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [Items] DROP CONSTRAINT [DF_Items_LastModified]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [Items] DROP CONSTRAINT [DF_Items_DateCreated]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_BrandId]') AND type = 'D')
BEGIN
ALTER TABLE [Items] DROP CONSTRAINT [DF_Items_BrandId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Message_TimeStamp]') AND type = 'D')
BEGIN
ALTER TABLE [chat_Message] DROP CONSTRAINT [DF_Message_TimeStamp]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_chat_conversations_TimsStamp]') AND type = 'D')
BEGIN
ALTER TABLE [chat_conversations] DROP CONSTRAINT [DF_chat_conversations_TimsStamp]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_chat_Private_TimeStamp]') AND type = 'D')
BEGIN
ALTER TABLE [chat_conversation_messages] DROP CONSTRAINT [DF_chat_Private_TimeStamp]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Categories_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [Categories] DROP CONSTRAINT [DF_Categories_LastModified]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Categories_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [Categories] DROP CONSTRAINT [DF_Categories_DateCreated]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Categories_ParentId]') AND type = 'D')
BEGIN
ALTER TABLE [Categories] DROP CONSTRAINT [DF_Categories_ParentId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Brands_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [Brands] DROP CONSTRAINT [DF_Brands_LastModified]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Brands_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [Brands] DROP CONSTRAINT [DF_Brands_DateCreated]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ASPStateT__Flags__1EC48A19]') AND type = 'D')
BEGIN
ALTER TABLE [ASPStateTempSessions] DROP CONSTRAINT [DF__ASPStateT__Flags__1EC48A19]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ASPStateT__Creat__1DD065E0]') AND type = 'D')
BEGIN
ALTER TABLE [ASPStateTempSessions] DROP CONSTRAINT [DF__ASPStateT__Creat__1DD065E0]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ads_Reports_Exposures]') AND type = 'D')
BEGIN
ALTER TABLE [Ads_Reports] DROP CONSTRAINT [DF_Ads_Reports_Exposures]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ads_Reports_Clicks]') AND type = 'D')
BEGIN
ALTER TABLE [Ads_Reports] DROP CONSTRAINT [DF_Ads_Reports_Clicks]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ads_DateModified]') AND type = 'D')
BEGIN
ALTER TABLE [Ads] DROP CONSTRAINT [DF_Ads_DateModified]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ads_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [Ads] DROP CONSTRAINT [DF_Ads_DateCreated]
END

GO
IF  EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[PhotoAlbums]'))
DROP FULLTEXT INDEX ON [PhotoAlbums]

GO
IF  EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[PhotoAlbumImages]'))
DROP FULLTEXT INDEX ON [PhotoAlbumImages]

GO
IF  EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[Pages]'))
DROP FULLTEXT INDEX ON [Pages]

GO
IF  EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[News]'))
DROP FULLTEXT INDEX ON [News]

GO
IF  EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[Downloads]'))
DROP FULLTEXT INDEX ON [Downloads]

GO
IF  EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[Calendar]'))
DROP FULLTEXT INDEX ON [Calendar]

GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ASPStateTempSessions]') AND name = N'Index_Expires')
DROP INDEX [Index_Expires] ON [ASPStateTempSessions]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ASPStateTempApplications]') AND name = N'Index_AppName')
DROP INDEX [Index_AppName] ON [ASPStateTempApplications]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VideosView]'))
DROP VIEW [VideosView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollVotesCount]'))
DROP VIEW [PollVotesCount]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollViewEmails]'))
DROP VIEW [PollViewEmails]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PhotoAlbumsNetworkView]'))
DROP VIEW [PhotoAlbumsNetworkView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PageDataProrpertiesView]'))
DROP VIEW [PageDataProrpertiesView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PackageParentListView]'))
DROP VIEW [PackageParentListView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PackageListView]'))
DROP VIEW [PackageListView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[OperatorsView]'))
DROP VIEW [OperatorsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsNetworkView]'))
DROP VIEW [NewsNetworkView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsletterView]'))
DROP VIEW [NewsletterView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Members_LoginActivity_View]'))
DROP VIEW [Members_LoginActivity_View]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberNetworksView]'))
DROP VIEW [MemberNetworksView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberNetworksCountView]'))
DROP VIEW [MemberNetworksCountView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberLocationView]'))
DROP VIEW [MemberLocationView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberEducationView]'))
DROP VIEW [MemberEducationView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MediaWidgetsView]'))
DROP VIEW [MediaWidgetsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemsFullView]'))
DROP VIEW [ItemsFullView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemPackagesView]'))
DROP VIEW [ItemPackagesView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemOptionsView]'))
DROP VIEW [ItemOptionsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemOptionsInventoryView]'))
DROP VIEW [ItemOptionsInventoryView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[HashTagsView]'))
DROP VIEW [HashTagsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[HashTagRelationView]'))
DROP VIEW [HashTagRelationView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GroupsView]'))
DROP VIEW [GroupsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GroupsNetworkView]'))
DROP VIEW [GroupsNetworkView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GroupsMembersView]'))
DROP VIEW [GroupsMembersView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GroupMembersCount]'))
DROP VIEW [GroupMembersCount]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GiftVoucherOrders]'))
DROP VIEW [GiftVoucherOrders]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[DownloadsView]'))
DROP VIEW [DownloadsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[DownloadsByDate]'))
DROP VIEW [DownloadsByDate]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CountryUniversityCount]'))
DROP VIEW [CountryUniversityCount]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CountryRegionUniversityCount]'))
DROP VIEW [CountryRegionUniversityCount]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Comments_Tables_View]'))
DROP VIEW [Comments_Tables_View]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[chat_message_view]'))
DROP VIEW [chat_message_view]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[chat_conversation_users_view]'))
DROP VIEW [chat_conversation_users_view]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CalendarView]'))
DROP VIEW [CalendarView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AlbumsView]'))
DROP VIEW [AlbumsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AlbumsFullView]'))
DROP VIEW [AlbumsFullView]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ArrayToTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [ArrayToTable]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsTypesView]'))
DROP VIEW [NewsTypesView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsTypesParentsView]'))
DROP VIEW [NewsTypesParentsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsDateView]'))
DROP VIEW [NewsDateView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsView]'))
DROP VIEW [NewsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[FriendsView]'))
DROP VIEW [FriendsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AdsView]'))
DROP VIEW [AdsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Ads_ReportsView]'))
DROP VIEW [Ads_ReportsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NetworksView]'))
DROP VIEW [NetworksView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NetworksParentsView]'))
DROP VIEW [NetworksParentsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollResultsView]'))
DROP VIEW [PollResultsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollQuestionsView]'))
DROP VIEW [PollQuestionsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollTotalVotes]'))
DROP VIEW [PollTotalVotes]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VoteCountQuestion]'))
DROP VIEW [VoteCountQuestion]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VoteCount]'))
DROP VIEW [VoteCount]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Chat_Conversations_From_User]'))
DROP VIEW [Chat_Conversations_From_User]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Chat_Conversation_Messages_View]'))
DROP VIEW [Chat_Conversation_Messages_View]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberView]'))
DROP VIEW [MemberView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Pages_View_Comments]'))
DROP VIEW [Pages_View_Comments]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Pages_View]'))
DROP VIEW [Pages_View]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CategoriesView]'))
DROP VIEW [CategoriesView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CategoryParentsView]'))
DROP VIEW [CategoryParentsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemsInventory]'))
DROP VIEW [ItemsInventory]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemsView]'))
DROP VIEW [ItemsView]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemInventoryByOption]'))
DROP VIEW [ItemInventoryByOption]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Widgets]') AND type in (N'U'))
DROP TABLE [Widgets]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Videos]') AND type in (N'U'))
DROP TABLE [Videos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[VideoCategories]') AND type in (N'U'))
DROP TABLE [VideoCategories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Universities]') AND type in (N'U'))
DROP TABLE [Universities]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Templates]') AND type in (N'U'))
DROP TABLE [Templates]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SocialMediaPost]') AND type in (N'U'))
DROP TABLE [SocialMediaPost]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ShoppingItems]') AND type in (N'U'))
DROP TABLE [ShoppingItems]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollsUserResponses]') AND type in (N'U'))
DROP TABLE [PollsUserResponses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Polls]') AND type in (N'U'))
DROP TABLE [Polls]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollResults]') AND type in (N'U'))
DROP TABLE [PollResults]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollQuestions]') AND type in (N'U'))
DROP TABLE [PollQuestions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollOptions]') AND type in (N'U'))
DROP TABLE [PollOptions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollFraud]') AND type in (N'U'))
DROP TABLE [PollFraud]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollAnswers]') AND type in (N'U'))
DROP TABLE [PollAnswers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbumsNetwork]') AND type in (N'U'))
DROP TABLE [PhotoAlbumsNetwork]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbumsCategories]') AND type in (N'U'))
DROP TABLE [PhotoAlbumsCategories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbums]') AND type in (N'U'))
DROP TABLE [PhotoAlbums]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbumRelations]') AND type in (N'U'))
DROP TABLE [PhotoAlbumRelations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbumImages]') AND type in (N'U'))
DROP TABLE [PhotoAlbumImages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageTypes]') AND type in (N'U'))
DROP TABLE [PageTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageTemplates]') AND type in (N'U'))
DROP TABLE [PageTemplates]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages]') AND type in (N'U'))
DROP TABLE [Pages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageDataPropertyValue]') AND type in (N'U'))
DROP TABLE [PageDataPropertyValue]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageDataProperty]') AND type in (N'U'))
DROP TABLE [PageDataProperty]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Orders]') AND type in (N'U'))
DROP TABLE [Orders]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[OperatorProfile]') AND type in (N'U'))
DROP TABLE [OperatorProfile]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[OperatorGroups]') AND type in (N'U'))
DROP TABLE [OperatorGroups]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsTypes]') AND type in (N'U'))
DROP TABLE [NewsTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsNetwork]') AND type in (N'U'))
DROP TABLE [NewsNetwork]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsletterUsers]') AND type in (N'U'))
DROP TABLE [NewsletterUsers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsletterGroupsUsers]') AND type in (N'U'))
DROP TABLE [NewsletterGroupsUsers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsletterGroups]') AND type in (N'U'))
DROP TABLE [NewsletterGroups]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[News]') AND type in (N'U'))
DROP TABLE [News]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Networks]') AND type in (N'U'))
DROP TABLE [Networks]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberSocial]') AND type in (N'U'))
DROP TABLE [MemberSocial]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Members_ResetPassword]') AND type in (N'U'))
DROP TABLE [Members_ResetPassword]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Members_LoginActivity]') AND type in (N'U'))
DROP TABLE [Members_LoginActivity]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Members]') AND type in (N'U'))
DROP TABLE [Members]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberProfile]') AND type in (N'U'))
DROP TABLE [MemberProfile]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberNetworks]') AND type in (N'U'))
DROP TABLE [MemberNetworks]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberLocation]') AND type in (N'U'))
DROP TABLE [MemberLocation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberEducation]') AND type in (N'U'))
DROP TABLE [MemberEducation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberCareer]') AND type in (N'U'))
DROP TABLE [MemberCareer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MediaWidgets]') AND type in (N'U'))
DROP TABLE [MediaWidgets]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Media]') AND type in (N'U'))
DROP TABLE [Media]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JobPositions]') AND type in (N'U'))
DROP TABLE [JobPositions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JobOffers]') AND type in (N'U'))
DROP TABLE [JobOffers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JobCategories]') AND type in (N'U'))
DROP TABLE [JobCategories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JobApplications]') AND type in (N'U'))
DROP TABLE [JobApplications]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemTextOptions]') AND type in (N'U'))
DROP TABLE [ItemTextOptions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Items]') AND type in (N'U'))
DROP TABLE [Items]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemRelations]') AND type in (N'U'))
DROP TABLE [ItemRelations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemPrices]') AND type in (N'U'))
DROP TABLE [ItemPrices]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemPackages]') AND type in (N'U'))
DROP TABLE [ItemPackages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemOptionsInventory]') AND type in (N'U'))
DROP TABLE [ItemOptionsInventory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemOptions]') AND type in (N'U'))
DROP TABLE [ItemOptions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemChoicesOptions]') AND type in (N'U'))
DROP TABLE [ItemChoicesOptions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemChoices]') AND type in (N'U'))
DROP TABLE [ItemChoices]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemCategories]') AND type in (N'U'))
DROP TABLE [ItemCategories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HashTags_Relations]') AND type in (N'U'))
DROP TABLE [HashTags_Relations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HashTags]') AND type in (N'U'))
DROP TABLE [HashTags]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Guestbook]') AND type in (N'U'))
DROP TABLE [Guestbook]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GroupsNetwork]') AND type in (N'U'))
DROP TABLE [GroupsNetwork]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GroupsMembers]') AND type in (N'U'))
DROP TABLE [GroupsMembers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Groups]') AND type in (N'U'))
DROP TABLE [Groups]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GiftVouchers]') AND type in (N'U'))
DROP TABLE [GiftVouchers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Friends]') AND type in (N'U'))
DROP TABLE [Friends]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DownloadTypes]') AND type in (N'U'))
DROP TABLE [DownloadTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DownloadsNetwork]') AND type in (N'U'))
DROP TABLE [DownloadsNetwork]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Downloads_MembersActivity]') AND type in (N'U'))
DROP TABLE [Downloads_MembersActivity]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Downloads]') AND type in (N'U'))
DROP TABLE [Downloads]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DiscountPlans]') AND type in (N'U'))
DROP TABLE [DiscountPlans]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Dataform]') AND type in (N'U'))
DROP TABLE [Dataform]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Countries]') AND type in (N'U'))
DROP TABLE [Countries]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Comments_Tables]') AND type in (N'U'))
DROP TABLE [Comments_Tables]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Comments_Pages]') AND type in (N'U'))
DROP TABLE [Comments_Pages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_Room]') AND type in (N'U'))
DROP TABLE [chat_Room]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_Message]') AND type in (N'U'))
DROP TABLE [chat_Message]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_LoggedInUser]') AND type in (N'U'))
DROP TABLE [chat_LoggedInUser]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_conversations]') AND type in (N'U'))
DROP TABLE [chat_conversations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_conversation_users]') AND type in (N'U'))
DROP TABLE [chat_conversation_users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_conversation_messages]') AND type in (N'U'))
DROP TABLE [chat_conversation_messages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Categories]') AND type in (N'U'))
DROP TABLE [Categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CalendarNetwork]') AND type in (N'U'))
DROP TABLE [CalendarNetwork]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CalendarCategories]') AND type in (N'U'))
DROP TABLE [CalendarCategories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Calendar]') AND type in (N'U'))
DROP TABLE [Calendar]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Brands]') AND type in (N'U'))
DROP TABLE [Brands]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ASPStateTempSessions]') AND type in (N'U'))
DROP TABLE [ASPStateTempSessions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ASPStateTempApplications]') AND type in (N'U'))
DROP TABLE [ASPStateTempApplications]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspnetUsersToDelete]') AND type in (N'U'))
DROP TABLE [AspnetUsersToDelete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AdTypes]') AND type in (N'U'))
DROP TABLE [AdTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_Zones]') AND type in (N'U'))
DROP TABLE [Ads_Zones]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_Reports]') AND type in (N'U'))
DROP TABLE [Ads_Reports]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_Keywords]') AND type in (N'U'))
DROP TABLE [Ads_Keywords]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_AdKeywordRelation]') AND type in (N'U'))
DROP TABLE [Ads_AdKeywordRelation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads]') AND type in (N'U'))
DROP TABLE [Ads]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AdKeywords]') AND type in (N'U'))
DROP TABLE [AdKeywords]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AdKeywordRelation]') AND type in (N'U'))
DROP TABLE [AdKeywordRelation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[zfill]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [zfill]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[within]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [within]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[title]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [title]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SwapCase]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [SwapCase]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Strip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Strip]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[StringToTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [StringToTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[str_replace]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [str_replace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[str_GetDelimited]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [str_GetDelimited]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[str_Find]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [str_Find]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[StartsWith]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [StartsWith]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SplitString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [SplitString]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SplitLines]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [SplitLines]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [split]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Rstrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Rstrip]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[RPartition]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [RPartition]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Rjust]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Rjust]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[rfind]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [rfind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Polls_GetCurrentPoll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Polls_GetCurrentPoll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Parts]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Parts]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Partition]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Partition]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages_GetPath]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Pages_GetPath]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages_GetDescendantsByPageName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Pages_GetDescendantsByPageName]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages_GetDescendants]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Pages_GetDescendants]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages_GetAncestors]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Pages_GetAncestors]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsTypes_GetDescendants]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [NewsTypes_GetDescendants]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsTypes_GetAncestors]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [NewsTypes_GetAncestors]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Networks_GetDescendantsByParent]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Networks_GetDescendantsByParent]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Networks_GetDescendants]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Networks_GetDescendants]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Network_GetAncestors]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Network_GetAncestors]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Lstrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Lstrip]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[LJust]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [LJust]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Join]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Join]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[item]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [item]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[isTitle]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [isTitle]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsSpace]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [IsSpace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsLower]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [IsLower]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsDigit]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [IsDigit]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsAlpha]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [IsAlpha]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsAlnum]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [IsAlnum]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IdsToTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [IdsToTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetThisHourImpressions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [GetThisHourImpressions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetThisDayImpressions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [GetThisDayImpressions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetOptionNames]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [GetOptionNames]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetNewsTypePath]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [GetNewsTypePath]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [GetCount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[getChatConversationUsersCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [getChatConversationUsersCount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[getChatConversationActiveUsersCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [getChatConversationActiveUsersCount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [GetCategories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetCalendarCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [GetCalendarCategories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[fnStripTags]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [fnStripTags]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ExpandTabs]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [ExpandTabs]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EndsWith]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [EndsWith]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Count]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Count]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Contains]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Contains]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Center]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Center]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Categories_GetDescendants]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Categories_GetDescendants]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Categories_GetAncestors]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Categories_GetAncestors]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Capitalize]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Capitalize]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[array]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [array]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UpdateItemOptionsInventory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [UpdateItemOptionsInventory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UpdateItemCategory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [UpdateItemCategory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SearchSite]') AND type in (N'P', N'PC'))
DROP PROCEDURE [SearchSite]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SearchForumsBlogs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [SearchForumsBlogs]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[RelatedPages]') AND type in (N'P', N'PC'))
DROP PROCEDURE [RelatedPages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Profiles_CleanUp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Profiles_CleanUp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Items_GetCategoryDescendants]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Items_GetCategoryDescendants]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[InsertGenerator]') AND type in (N'P', N'PC'))
DROP PROCEDURE [InsertGenerator]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HashTags_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [HashTags_Update]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetMajorVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GetMajorVersion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetItemOptions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GetItemOptions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetHashCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GetHashCode]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DeleteExpiredSessions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [DeleteExpiredSessions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateTempTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [CreateTempTables]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [CreateOrder]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateMember]') AND type in (N'P', N'PC'))
DROP PROCEDURE [CreateMember]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateGiftVoucher]') AND type in (N'P', N'PC'))
DROP PROCEDURE [CreateGiftVoucher]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateCommentsTable_No_Members]') AND type in (N'P', N'PC'))
DROP PROCEDURE [CreateCommentsTable_No_Members]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateCommentsTable_Members]') AND type in (N'P', N'PC'))
DROP PROCEDURE [CreateCommentsTable_Members]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Chat_UpdateConversationStatus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Chat_UpdateConversationStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Chat_SendMessage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Chat_SendMessage]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Chat_OpenConversation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Chat_OpenConversation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_UpdateImpressions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Ads_UpdateImpressions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AddOption]') AND type in (N'P', N'PC'))
DROP PROCEDURE [AddOption]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[___CustomPaging]') AND type in (N'P', N'PC'))
DROP PROCEDURE [___CustomPaging]
GO
IF  EXISTS (SELECT * FROM systypes WHERE name = N'tTextPtr')
DROP TYPE [tTextPtr]
GO
IF  EXISTS (SELECT * FROM systypes WHERE name = N'tSessionItemShort')
DROP TYPE [tSessionItemShort]
GO
IF  EXISTS (SELECT * FROM systypes WHERE name = N'tSessionItemLong')
DROP TYPE [tSessionItemLong]
GO
IF  EXISTS (SELECT * FROM systypes WHERE name = N'tSessionId')
DROP TYPE [tSessionId]
GO
IF  EXISTS (SELECT * FROM systypes WHERE name = N'tAppName')
DROP TYPE [tAppName]
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_PhotoAlbums')
DROP FULLTEXT CATALOG [Search_PhotoAlbums]
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_PhotoAlbumImages')
DROP FULLTEXT CATALOG [Search_PhotoAlbumImages]
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_News')
DROP FULLTEXT CATALOG [Search_News]
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_Downloads')
DROP FULLTEXT CATALOG [Search_Downloads]
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_DataForm')
DROP FULLTEXT CATALOG [Search_DataForm]
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_Comments_Forum')
DROP FULLTEXT CATALOG [Search_Comments_Forum]
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_Calendar')
DROP FULLTEXT CATALOG [Search_Calendar]
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Pages')
DROP FULLTEXT CATALOG [Pages]
GO
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Pages')
CREATE FULLTEXT CATALOG [Pages]WITH ACCENT_SENSITIVITY = ON

GO
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_Calendar')
CREATE FULLTEXT CATALOG [Search_Calendar]WITH ACCENT_SENSITIVITY = OFF

GO
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_Comments_Forum')
CREATE FULLTEXT CATALOG [Search_Comments_Forum]WITH ACCENT_SENSITIVITY = OFF

GO
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_DataForm')
CREATE FULLTEXT CATALOG [Search_DataForm]WITH ACCENT_SENSITIVITY = OFF

GO
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_Downloads')
CREATE FULLTEXT CATALOG [Search_Downloads]WITH ACCENT_SENSITIVITY = OFF

GO
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_News')
CREATE FULLTEXT CATALOG [Search_News]WITH ACCENT_SENSITIVITY = OFF

GO
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_PhotoAlbumImages')
CREATE FULLTEXT CATALOG [Search_PhotoAlbumImages]WITH ACCENT_SENSITIVITY = OFF

GO
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'Search_PhotoAlbums')
CREATE FULLTEXT CATALOG [Search_PhotoAlbums]WITH ACCENT_SENSITIVITY = ON

GO
IF NOT EXISTS (SELECT * FROM systypes WHERE name = N'tAppName')
CREATE TYPE [tAppName] FROM [varchar](280) NOT NULL
GO
IF NOT EXISTS (SELECT * FROM systypes WHERE name = N'tSessionId')
CREATE TYPE [tSessionId] FROM [nvarchar](88) NOT NULL
GO
IF NOT EXISTS (SELECT * FROM systypes WHERE name = N'tSessionItemLong')
CREATE TYPE [tSessionItemLong] FROM [image] NULL
GO
IF NOT EXISTS (SELECT * FROM systypes WHERE name = N'tSessionItemShort')
CREATE TYPE [tSessionItemShort] FROM [varbinary](7000) NULL
GO
IF NOT EXISTS (SELECT * FROM systypes WHERE name = N'tTextPtr')
CREATE TYPE [tTextPtr] FROM [varbinary](16) NULL
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[___CustomPaging]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [___CustomPaging]
	-- Add the parameters for the stored procedure here
	@SelectCommand nvarchar(max),
	@PageSize int,
	@Page int = 0,
	@OrderBY varchar(max)
AS
BEGIN
	
	SET NOCOUNT ON;

	declare @RowsCount int;
	set @RowsCount = 0;
	declare @RowsCountSql nvarchar(max);
	set  @RowsCountSql = ''select @RowsCount=count(*) from ('' +
		@SelectCommand + 
		'') as Sel'';



	exec sp_executesql @RowsCountSql, 
		N''@RowsCount int output'', 
		@RowsCount output
	
	set @SelectCommand = ''Select * from (
			select ROW_NUMBER() OVER(ORDER BY '' + 
				@OrderBY + 
			'') as RowNum, *  from ('' +
				@SelectCommand +
			'') as TT '' + 
		'') as TempTable'' + 
		'' Where TempTable.RowNum > '' +
			cast(@Page*@PageSize as varchar)+
		'' And TempTable.RowNum <= '' + 
			cast(@Page*@PageSize + @PageSize as varchar)
	
	
	--select @SelectCommand

	--select @RowsCount;

	select @Rowscount

	exec(@SelectCommand);
	
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AddOption]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [AddOption]
	@Option varchar(50),
	@ChoiceId int,
	@OptionId int output
AS
BEGIN
	SET NOCOUNT ON;
	select @OptionId = OPtionId from ItemChoicesOPtions where [value]=@Option
	if @@Rowcount = 0 
	begin
		insert into ItemChoicesOPtions (ChoiceId, [value], Sorting) values (@ChoiceId, @Option, 1000)
		set @OptionId = @@identity
	end
	return @OptionId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_UpdateImpressions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Ads_UpdateImpressions]
(
	@AdId int,
	@Click bit
)
as
declare @cdate as datetime
set @cdate = getDate() 
declare @hour  int
declare @Date int
declare @month int
declare @year int
set @hour = datepart(hh,@cdate)
set @Date = datepart(dd,@cdate)
set @Month = datepart(mm,@cdate)
set @year = datepart(yyyy,@cdate)
declare @PageId int
if(@Click = 1)
Begin
	if exists (select * from Ads_Reports where AdId=@AdId 
			and [Hour]=@hour 
			and [DayOfMonth] = @Date 
			and [Month] = @Month 
			and [Year] = @year
	)
	begin
		update Ads_Reports set Clicks = Clicks+1 
		where AdId=@AdId 
			and [Hour]=@hour 
			and [DayOfMonth] = @Date 
			and [Month] = @Month 
			and [Year] = @year
	end
	else
	begin 
		insert into Ads_Reports (AdId, Clicks, [Date]) 
		values (@AdId, 1, @cdate)
	end
End
Else
Begin
	if exists (select * from Ads_Reports where AdId=@AdId 
			and [Hour]=@hour 
			and [DayOfMonth] = @Date 
			and [Month] = @Month 
			and [Year] = @year
	)
	begin
		update Ads_Reports set Exposures = Exposures+1 
		where AdId=@AdId 
			and [Hour]=@hour 
			and [DayOfMonth] = @Date 
			and [Month] = @Month 
			and [Year] = @year
	end
	else
	begin 
		insert into Ads_Reports (AdId, Exposures, [Date]) 
		values (@AdId, 1, @cdate)
	end
End


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Chat_OpenConversation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Chat_OpenConversation]
	@userFrom int,
	@userTo int,
	@ConversationId int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- check if there is already an opened convesation between the 2 users
	select 
		@ConversationId = ConversationId 
	from 
		chat_conversation_users_view 
		With(NOLOCK)
	where 
		(UserId1=@userFrom and UserId2=@userTo) 
		or
		(UserId2=@userFrom and UserId1=@userTo) 
		And 
		UsersCount = 2
	if(@@rowcount <> 2)
	begin
		insert into Chat_Conversations With(RowLock) values (getdate(), 1, '''', null);
		set @ConversationId = @@identity;
		
		-- 2 = active and open
		-- 8 = pending (first message was not sent yet)
	
		insert into  chat_conversation_users  With(RowLock)  values (@ConversationId, @userFrom, 2)
		insert into  chat_conversation_users  With(RowLock)  values (@ConversationId, @userTo, 8)
	end
	return @ConversationId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Chat_SendMessage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Chat_SendMessage]
	@UserFrom int,
	@ConversationId int,
	@Message ntext,
	@MessageId int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
	--NOLOCK;
	
	insert  into chat_conversation_messages With(ROWLOCK) (FromId, ConversationId, Message, TimeStamp) values 
	(@userFrom, @conversationId, @message, getdate());
	set @MessageId = @@identity;

	update chat_conversation_users  With(ROWLOCK) set mode=2 where mode&8=8
	
	return @MessageId;
END


--select * from chat_conversation_messages


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Chat_UpdateConversationStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Chat_UpdateConversationStatus]
	@ConversationId int,
	@UserId int,
	@Status int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Update 
		chat_conversation_users 
		 With(RowLock) 
	set 
		mode = @Status 
	where 
		ConversationId=@ConversationId	
		And
		UserId = @UserId

/*
	if dbo.getChatConversationActiveUsersCount(@ConversationId) = 0 
	begin
		delete from chat_conversations  With(RowLock)  where ConversationId = @ConversationId
		delete from Chat_conversation_users  With(RowLock)  where ConversationId = @ConversationId
		delete from chat_conversation_messages  With(RowLock)  where ConversationId = @ConversationId
	end
*/	

END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateCommentsTable_Members]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [CreateCommentsTable_Members]
(
	@TableName varchar(50),
	@RelationField varchar(50),
	@AdminId int,
	@Return int
)
AS

BEGIN

declare @ret bit;

declare @sql nvarchar(max);

declare @CommentsTable varchar(256);

set @CommentsTable = ''Comments_'' + @TableName + '''';

set @sql = ''
	Begin Transaction
	
	CREATE TABLE ['' + @CommentsTable + ''](
	[CommentId] [int] NOT NULL IDENTITY (1, 1),
	[ParentId] [int] not NULL,
	[RelationId] [int] not NULL,
	[DateCreated] [datetime] Not NULL,
	[DateModified] [datetime] NULL,
	[Status] [int] NOT NULL,
	[AdminId] [int] NULL,
	[Title] nvarchar(256),
	[CommentText] [ntext] NULL,
	[MemberId] [int] not null,
	[IpAddress] [varchar](50) NULL,
	[CommentType] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

BEGIN TRY

ALTER TABLE '' + @CommentsTable + '' ADD CONSTRAINT
	PK_'' + @CommentsTable + '' PRIMARY KEY CLUSTERED 
	(
	CommentId,
	ParentId,
	RelationId,
	STATUS,
	DateCreated,
	MemberId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]

	Insert into Comments_Tables values ('''''' + @TableName + '''''', 
		'''''' + @RelationField + '''''', 1, 0, '' + cast(@AdminId as varchar)  + '', null);

	
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	RETURN
END CATCH


	COMMIT
''


EXECUTE sp_executesql @sql

set @Return = -1;
return @Return;


END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateCommentsTable_No_Members]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [CreateCommentsTable_No_Members]
(
	@TableName varchar(50),
	@RelationField varchar(50),
	@AdminId int, 
	@Return int
)
AS

BEGIN

declare @ret bit;

declare @sql nvarchar(max);

declare @CommentsTable varchar(256);

set @CommentsTable = ''Comments_'' + @TableName + '''';

set @sql = ''
	Begin Transaction
	
	CREATE TABLE ['' + @CommentsTable + ''](
	[CommentId] [int] NOT NULL IDENTITY (1, 1),
	[ParentId] [int] not NULL,
	[RelationId] [int] not NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
	[Status] [int] NOT NULL,
	[AdminId] [int] NULL,
	[Title] nvarchar(256),
	[CommentText] [ntext] NULL,
	[VisitorID] [uniqueidentifier] not null,
	[Name] [nvarchar](255) NULL,
	[Website] [varchar](255) NULL,
	[Country] [varchar](2) NULL,
	[IpAddress] [varchar](50) NULL,
	[Avatar] [nvarchar](255) NULL,
	[CommentType] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

BEGIN TRY

ALTER TABLE '' + @CommentsTable + '' ADD CONSTRAINT
	PK_'' + @CommentsTable + '' PRIMARY KEY CLUSTERED 
	(
	CommentId,
	ParentId,
	RelationId,
	STATUS,
	DateCreated
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

	

END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	RETURN
END CATCH

Insert into Comments_Tables (TableName, RelationField, Members, CustomPermissions, 
		AdminId, xmlField) values  ('''''' + @TableName + '''''', 
		'''''' + @RelationField + '''''', 0, 0, '' + cast(@AdminId as varchar) + '', null);


	COMMIT
''

EXECUTE sp_executesql @sql

set @Return = -1;
return @Return;

END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateGiftVoucher]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [CreateGiftVoucher]
	@Amount MONEY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @new_code varchar(20)

DECLARE @inserted BIT
SET @inserted = 0

WHILE @inserted = 0
BEGIN
	SET @new_code = right(newId(),17)	
	IF NOT Exists (SELECT * FROM GiftVouchers WHERE VoucherCode = @new_code)
	BEGIN
		INSERT INTO GiftVouchers (VoucherCode, Amount, Status, DateCreated) 
		VALUES (@new_code, @Amount, 0, getdate())
		set @inserted = 1
	END

END

SELECT @new_code AS VoucherCode, @@IDENTITY AS VoucherId

END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateMember]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [CreateMember]
(
	@Geuid uniqueidentifier,
	@UserName varchar(150),
	@Password nvarchar(250),
	@Status int,
	@Title nvarchar(100),
	@FirstName nvarchar(100),
	@MiddleName nvarchar(100),
	@LastName nvarchar(100),
	@Gender smallint,
	@Email varchar(150),
	@AlternateEmail varchar(150),
	@DateOfBirth datetime,
	@DateCreated datetime,
	@LastModified datetime,
	@LastLogin datetime,
	@Online bit,
	@SecretQuestion nvarchar(150),
	@SecretQuestionAnswer nvarchar(150),
	@ChangedBy int,
	@JoinNewsletter bit,
	@Privacy int,
	@FullName nvarchar(256),
	@NativeFullName nvarchar(256)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[Members] ([Geuid], [UserName], [Password], [Status], [Title], [FirstName], [MiddleName], [LastName], 
	[Gender], [Email], [AlternateEmail], [DateOfBirth], [DateCreated], [LastModified], [LastLogin], 
	[Online], [SecretQuestion], [SecretQuestionAnswer], [ChangedBy], [JoinNewsletter], [Privacy], [PasswordChangeDate],
	[FullName], [NativeFullName]) 
VALUES 
(@Geuid, @UserName, @Password, @Status, @Title, @FirstName, @MiddleName, @LastName, 
	@Gender, @Email, @AlternateEmail, @DateOfBirth, @DateCreated, @LastModified, @LastLogin, 
	@Online, @SecretQuestion, @SecretQuestionAnswer, @ChangedBy, @JoinNewsletter, @Privacy, getdate(),@FullName,@NativeFullName);
	
if @ChangedBy = -1 
begin
	update Members set ChangedBy = ChangedBy where MemberId=@@identity
end

SELECT MemberId, Geuid, UserName, Password, Status, Title, FirstName, MiddleName, LastName, Gender, 
	Email, AlternateEmail, DateOfBirth, DateCreated, LastModified, LastLogin, Online, SecretQuestion, SecretQuestionAnswer, 
	Privacy, ChangedBy, JoinNewsletter, PasswordChangeDate, FullName, NativeFullName
FROM Members WHERE (Geuid = @Geuid) AND (MemberId = SCOPE_IDENTITY())

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [CreateOrder]
(
	@OrderVisualId varchar(50),
	@MemberId int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Phone varchar(20),
	@Email varchar(150),
	@Address nvarchar(250),
	@City nvarchar(50),
	@State nvarchar(50),
	@Zip varchar(16),
	@Country varchar(2),
	@Region varchar(50),
	@ShippingSame bit,
	@ShippingPhone varchar(20),
	@ShippingAddress varchar(250),
	@ShippingCity varchar(250),
	@ShippingState varchar(50),
	@ShippingZip varchar(16),
	@ShippingCountry varchar(2),
	@ShippingRegion varchar(2),
	@DateCreated datetime,
	@Status int,
	@SubTotal money,
	@Total money,
	@Discount money,
	@Tax money,
	@Shipping money,
	@Handling MONEY,
	@OrderType SMALLINT,
	@Description ntext,
	@OperatorId int,
	@Comments ntext,
	@ShippingKey varchar(50),
	@VoucherCode varchar(20),
	@VoucherValue money,
	@PaymentType char(2),
	@PaymentCost money,
	@XmlData XML
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[Orders] ([OrderVisualId], [MemberId], [FirstName], [LastName], 
[Phone], [Email], [Address], [City], [State], [Zip], [Country], [Region], [ShippingSame], 
[ShippingPhone], [ShippingAddress], [ShippingCity], [ShippingState], [ShippingZip], [ShippingCountry], 
[ShippingRegion], [DateCreated], [Status], [SubTotal], [Total], [Discount], [Tax], 
[Shipping], [Handling], [OrderType], [Description], [OperatorId], [Comments], [ShippingKey], [VoucherCode], [VoucherValue], [PaymentType], [PaymentCost], [XmlData]) 
VALUES (@OrderVisualId, @MemberId, @FirstName, @LastName, @Phone, @Email, @Address, @City, 
@State, @Zip, @Country, @Region, @ShippingSame, @ShippingPhone, @ShippingAddress, @ShippingCity, @ShippingState, 
@ShippingZip, @ShippingCountry, @ShippingRegion, @DateCreated, @Status, @SubTotal, @Total, 
@Discount, @Tax, @Shipping, @Handling, @OrderType, @Description, @OperatorId, @Comments, @ShippingKey,
@VoucherCode, @VoucherValue, @PaymentType, @PaymentCost, @XmlData);

	

SELECT OrderId, OrderVisualId, MemberId, FirstName, LastName, Phone, Email, 
Address, City, State, Zip, Country, Region, ShippingSame, ShippingPhone, 
ShippingAddress, ShippingCity, ShippingState, ShippingZip, ShippingCountry, 
ShippingRegion, DateCreated, Status, SubTotal, Total, Discount, Tax, 
Shipping, Handling, OrderType, Description, OperatorId, Comments, 
ShippingKey, VoucherCode, VoucherValue, PaymentType, PaymentCost, XmlData
FROM Orders WHERE (OrderId = SCOPE_IDENTITY())
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CreateTempTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
        CREATE PROCEDURE [CreateTempTables]
        AS
            CREATE TABLE [testingDb].dbo.ASPStateTempSessions (
                SessionId           nvarchar(88)    NOT NULL PRIMARY KEY,
                Created             datetime        NOT NULL DEFAULT GETUTCDATE(),
                Expires             datetime        NOT NULL,
                LockDate            datetime        NOT NULL,
                LockDateLocal       datetime        NOT NULL,
                LockCookie          int             NOT NULL,
                Timeout             int             NOT NULL,
                Locked              bit             NOT NULL,
                SessionItemShort    VARBINARY(7000) NULL,
                SessionItemLong     image           NULL,
                Flags               int             NOT NULL DEFAULT 0,
            ) 

            CREATE NONCLUSTERED INDEX Index_Expires ON [testingDb].dbo.ASPStateTempSessions(Expires)

            CREATE TABLE [testingDb].dbo.ASPStateTempApplications (
                AppId               int             NOT NULL PRIMARY KEY,
                AppName             char(280)       NOT NULL,
            ) 

            CREATE NONCLUSTERED INDEX Index_AppName ON [testingDb].dbo.ASPStateTempApplications(AppName)

            RETURN 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DeleteExpiredSessions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
        CREATE PROCEDURE [DeleteExpiredSessions]
        AS
            SET NOCOUNT ON
            SET DEADLOCK_PRIORITY LOW 

            DECLARE @now datetime
            SET @now = GETUTCDATE() 

            CREATE TABLE #tblExpiredSessions 
            ( 
                SessionID nvarchar(88) NOT NULL PRIMARY KEY
            )

            INSERT #tblExpiredSessions (SessionID)
                SELECT SessionID
                FROM [testingDb].dbo.ASPStateTempSessions WITH (READUNCOMMITTED)
                WHERE Expires < @now

            IF @@ROWCOUNT <> 0 
            BEGIN 
                DECLARE ExpiredSessionCursor CURSOR LOCAL FORWARD_ONLY READ_ONLY
                FOR SELECT SessionID FROM #tblExpiredSessions 

                DECLARE @SessionID nvarchar(88)

                OPEN ExpiredSessionCursor

                FETCH NEXT FROM ExpiredSessionCursor INTO @SessionID

                WHILE @@FETCH_STATUS = 0 
                    BEGIN
                        DELETE FROM [testingDb].dbo.ASPStateTempSessions WHERE SessionID = @SessionID AND Expires < @now
                        FETCH NEXT FROM ExpiredSessionCursor INTO @SessionID
                    END

                CLOSE ExpiredSessionCursor

                DEALLOCATE ExpiredSessionCursor

            END 

            DROP TABLE #tblExpiredSessions

        RETURN 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetHashCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/*****************************************************************************/

CREATE PROCEDURE [GetHashCode]
    @input tAppName,
    @hash int OUTPUT
AS
    /* 
       This sproc is based on this C# hash function:

        int GetHashCode(string s)
        {
            int     hash = 5381;
            int     len = s.Length;

            for (int i = 0; i < len; i++) {
                int     c = Convert.ToInt32(s[i]);
                hash = ((hash << 5) + hash) ^ c;
            }

            return hash;
        }

        However, SQL 7 doesn''t provide a 32-bit integer
        type that allows rollover of bits, we have to
        divide our 32bit integer into the upper and lower
        16 bits to do our calculation.
    */
       
    DECLARE @hi_16bit   int
    DECLARE @lo_16bit   int
    DECLARE @hi_t       int
    DECLARE @lo_t       int
    DECLARE @len        int
    DECLARE @i          int
    DECLARE @c          int
    DECLARE @carry      int

    SET @hi_16bit = 0
    SET @lo_16bit = 5381
    
    SET @len = DATALENGTH(@input)
    SET @i = 1
    
    WHILE (@i <= @len)
    BEGIN
        SET @c = ASCII(SUBSTRING(@input, @i, 1))

        /* Formula:                        
           hash = ((hash << 5) + hash) ^ c */

        /* hash << 5 */
        SET @hi_t = @hi_16bit * 32 /* high 16bits << 5 */
        SET @hi_t = @hi_t & 0xFFFF /* zero out overflow */
        
        SET @lo_t = @lo_16bit * 32 /* low 16bits << 5 */
        
        SET @carry = @lo_16bit & 0x1F0000 /* move low 16bits carryover to hi 16bits */
        SET @carry = @carry / 0x10000 /* >> 16 */
        SET @hi_t = @hi_t + @carry
        SET @hi_t = @hi_t & 0xFFFF /* zero out overflow */

        /* + hash */
        SET @lo_16bit = @lo_16bit + @lo_t
        SET @hi_16bit = @hi_16bit + @hi_t + (@lo_16bit / 0x10000)
        /* delay clearing the overflow */

        /* ^c */
        SET @lo_16bit = @lo_16bit ^ @c

        /* Now clear the overflow bits */	
        SET @hi_16bit = @hi_16bit & 0xFFFF
        SET @lo_16bit = @lo_16bit & 0xFFFF

        SET @i = @i + 1
    END

    /* Do a sign extension of the hi-16bit if needed */
    IF (@hi_16bit & 0x8000 <> 0)
        SET @hi_16bit = 0xFFFF0000 | @hi_16bit

    /* Merge hi and lo 16bit back together */
    SET @hi_16bit = @hi_16bit * 0x10000 /* << 16 */
    SET @hash = @hi_16bit | @lo_16bit

    RETURN 0' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetItemOptions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [GetItemOptions]
@ItemId integer
AS
BEGIN
set nocount On;

declare @options varchar(1000)
SELECT
@options = COALESCE(@options+'','' ,'''') + convert(varchar, optionid) 
from ItemOptions where ItemId=11

select @Options as Options
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetMajorVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/*****************************************************************************/

CREATE PROCEDURE [GetMajorVersion]
    @@ver int OUTPUT
AS
BEGIN
	DECLARE @version        nchar(100)
	DECLARE @dot            int
	DECLARE @hyphen         int
	DECLARE @SqlToExec      nchar(4000)

	SELECT @@ver = 7
	SELECT @version = @@Version
	SELECT @hyphen  = CHARINDEX(N'' - '', @version)
	IF (NOT(@hyphen IS NULL) AND @hyphen > 0)
	BEGIN
		SELECT @hyphen = @hyphen + 3
		SELECT @dot    = CHARINDEX(N''.'', @version, @hyphen)
		IF (NOT(@dot IS NULL) AND @dot > @hyphen)
		BEGIN
			SELECT @version = SUBSTRING(@version, @hyphen, @dot - @hyphen)
			SELECT @@ver     = CONVERT(int, @version)
		END
	END
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HashTags_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [HashTags_Update]
	@tags nvarchar(max),
	@RelationId int,
	@RelationType smallint
AS
BEGIN
	SET NOCOUNT ON;

	declare @tagsTable TABLE(id nvarchar(100));
	
	-- Converts the input tags string into am SQL table
	Insert into @tagsTable(id) select Distinct id from dbo.StringToTable(@tags);

	--select * from @tagsTable;

	-- Deleting tags that are no longer related to this post
	delete from HashTags_Relations  where 
		RelateTo = @RelationId 
		and RelationType = @RelationType 
		and TagId not in (
			select TagId from HashTags where Tag in (
				select id from @tagsTable
			)
		);

	-- Creating new tags that do not already exist in the DB
	Insert into HashTags (Tag)  select id from @tagsTable where id not in (select Tag from HashTags);

	--select * from HashTags;

	-- Deleting the tags that are already related if any
	delete from @tagsTable where id in 	(
		select Tag from HashTags where TagId in (
			select TagId from HashTags_Relations where RelateTo = @RelationId and RelationType = @RelationType
		)
	);

	-- Creating the relation for new tags
	Insert into HashTags_Relations (TagId, RelateTo, RelationType) 
		select Distinct JT.TagId, @RelationId, @RelationType from (
			select T.TagId from HashTags T Inner Join @tagsTable TT on T.Tag = TT.id 
		) JT;
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[InsertGenerator]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [InsertGenerator]
(@tableName varchar(100)) as

--Declare a cursor to retrieve column specific information for the specified table
DECLARE cursCol CURSOR FAST_FORWARD FOR 
SELECT column_name,data_type FROM information_schema.columns WHERE table_name = @tableName
OPEN cursCol
DECLARE @string nvarchar(3000) --for storing the first half of INSERT statement
DECLARE @stringData nvarchar(3000) --for storing the data (VALUES) related statement
DECLARE @dataType nvarchar(1000) --data types returned for respective columns
SET @string=''INSERT ''+@tableName+''(''
SET @stringData=''''

DECLARE @colName nvarchar(50)

FETCH NEXT FROM cursCol INTO @colName,@dataType

IF @@fetch_status<>0
	begin
	print ''Table ''+@tableName+'' not found, processing skipped.''
	close curscol
	deallocate curscol
	return
END

WHILE @@FETCH_STATUS=0
BEGIN
IF @dataType in (''varchar'',''char'',''nchar'',''nvarchar'')
BEGIN
	--SET @stringData=@stringData+''''''''''''''''''+isnull(''+@colName+'','''''''')+'''''''''''',''''+''
	SET @stringData=@stringData+''''''''+''''''+isnull(''''''''''+''''''''''+''+@colName+''+''''''''''+'''''''''',''''NULL'''')+'''',''''+''
END
ELSE
if @dataType in (''text'',''ntext'') --if the datatype is text or something else 
BEGIN
	SET @stringData=@stringData+''''''''''''''''''+isnull(cast(''+@colName+'' as varchar(2000)),'''''''')+'''''''''''',''''+''
END
ELSE
IF @dataType = ''money'' --because money doesn''t get converted from varchar implicitly
BEGIN
	SET @stringData=@stringData+''''''convert(money,''''''''''''+isnull(cast(''+@colName+'' as varchar(200)),''''0.0000'''')+''''''''''''),''''+''
END
ELSE 
IF @dataType=''datetime''
BEGIN
	--SET @stringData=@stringData+''''''convert(datetime,''''''''''''+isnull(cast(''+@colName+'' as varchar(200)),''''0'''')+''''''''''''),''''+''
	--SELECT ''INSERT Authorizations(StatusDate) VALUES(''+''convert(datetime,''+isnull(''''''''+convert(varchar(200),StatusDate,121)+'''''''',''NULL'')+'',121),)'' FROM Authorizations
	--SET @stringData=@stringData+''''''convert(money,''''''''''''+isnull(cast(''+@colName+'' as varchar(200)),''''0.0000'''')+''''''''''''),''''+''
	SET @stringData=@stringData+''''''convert(datetime,''+''''''+isnull(''''''''''+''''''''''+convert(varchar(200),''+@colName+'',121)+''''''''''+'''''''''',''''NULL'''')+'''',121),''''+''
  --                             ''convert(datetime,''+isnull(''''''''+convert(varchar(200),StatusDate,121)+'''''''',''NULL'')+'',121),)'' FROM Authorizations
END
ELSE 
IF @dataType=''image'' 
BEGIN
	SET @stringData=@stringData+''''''''''''''''''+isnull(cast(convert(varbinary,''+@colName+'') as varchar(6)),''''0'''')+'''''''''''',''''+''
END
ELSE --presuming the data type is int,bit,numeric,decimal 
BEGIN
	--SET @stringData=@stringData+''''''''''''''''''+isnull(cast(''+@colName+'' as varchar(200)),''''0'''')+'''''''''''',''''+''
	--SET @stringData=@stringData+''''''convert(datetime,''+''''''+isnull(''''''''''+''''''''''+convert(varchar(200),''+@colName+'',121)+''''''''''+'''''''''',''''NULL'''')+'''',121),''''+''
	SET @stringData=@stringData+''''''''+''''''+isnull(''''''''''+''''''''''+convert(varchar(200),''+@colName+'')+''''''''''+'''''''''',''''NULL'''')+'''',''''+''
END

SET @string=@string+@colName+'',''

FETCH NEXT FROM cursCol INTO @colName,@dataType
END
DECLARE @Query nvarchar(4000)

SET @query =''SELECT ''''''+substring(@string,0,len(@string)) + '') VALUES(''''+ '' + substring(@stringData,0,len(@stringData)-2)+''''''+'''')'''' FROM ''+@tableName
exec sp_executesql @query
--select @query

CLOSE cursCol
DEALLOCATE cursCol


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Items_GetCategoryDescendants]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Items_GetCategoryDescendants]
	@CategoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 

select * from Items where ItemId in 
	(select ItemId from ItemCategories 
	where CategoryId in (select CategoryId from 
	[Categories_GetDescendants](3)
))


 
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Profiles_CleanUp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Profiles_CleanUp]
	@Days INT
AS
BEGIN
 DECLARE @NoOfUsersToDelete int   
 SET @NoOfUsersToDelete = 1000  

insert into AspnetUsersToDelete  
	select top(@NoOfUsersToDelete) UserID from aspnet_Users where  
	(isAnonymous = 1) and (LastActivityDate < (getDate()-@Days))  
	order by UserId 


delete from aspnet_Profile WHERE UserID IN
	( SELECT UserID FROm AspnetUsersToDelete )


delete from aspnet_UsersInRoles WHERE UserID IN
	( SELECT UserID FROm AspnetUsersToDelete )


delete from aspnet_PersonalizationPerUser WHERE UserID IN
	( SELECT UserID FROm AspnetUsersToDelete )
	

delete from aspnet_users where userID IN
	( SELECT UserID FROm AspnetUsersToDelete )

delete from AspnetUsersToDelete

END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[RelatedPages]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [RelatedPages]
@PageId int,
@Max int
AS
BEGIN



	SET NOCOUNT ON;

	Declare @Title nvarchar(100), @Header nvarchar(100), @SmallDescription nvarchar(256), @Tags  nvarchar(256);

	Select @Title=Title, @Header = Header, @SmallDescription = SmallDescription, @Tags=Tags from Pages where PageId=@PageId;

	Declare @KeyWord nvarchar(4000);

	set @KeyWord = Isnull(@Tags, '''') + '' '' + @Title + '' '' + @Header + '' '' + @SmallDescription;

	--select @KeyWord;

	Declare @SQL nvarchar(max);
	set @SQL = N''select Top '' + Cast(@Max as varchar) + '' Pages_View.* from Pages_View
		Inner Join FREETEXTTABLE(Pages, (Tags, Title, Header, SmallDescription), N'''''' + Replace(@Keyword, '''''''', '''''''''''') +'''''') as K
		on PageId = k.[Key]
		where PageId <> @PageId
		Order By Rank DESC'';

	

	EXEC sp_executesql @SQL, 
		N''@PageId int'', 
		@PageId=@PageId
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SearchForumsBlogs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [SearchForumsBlogs]
	@KeyWord varchar(250), @ParentName nvarchar(256), @RelationId int
AS
BEGIN

select P.PageId as Id, P.Title as Name, P.SmallDescription, P.PageContent, P.FullURL as UniqueName, P.CreatedBy as MemberId, P.DateCreated, P.Views,
 M.UserName, M.FirstName + '' '' + M.LastName as MemberName, M.Picture, C.CommentCount, C.RelationId, ''Pages'' as TableType, K.Rank 
from Pages_View as P
Inner Join FREETEXTTABLE(Pages, (Title, Header, SmallDescription, PageContent, URL), @KeyWord) as K
on PageId = k.[Key]
Inner Join dbo.Members AS M ON P.CreatedBy = M.MemberId
Left Outer Join (SELECT COUNT(*) As CommentCount, RelationId FROM Comments_Pages Group By RelationId) AS C ON P.PageId = @RelationId
where ParentId in (select PageId from Pages where URL = @ParentName or Title = @ParentName)

order by RANK desc
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SearchSite]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [SearchSite]
	@KeyWord varchar(250)
AS
BEGIN

select PageId as Id, Title as Name, SmallDescription as Description, FullURL as UniqueName, ''Pages'' as TableType, K.Rank, Status
from Pages_View
Inner Join FREETEXTTABLE(Pages, (Title, Header, SmallDescription, PageContent, URL), @KeyWord) as K
on PageId = k.[Key]

Union All

select DownloadId as Id, Title as Name, Description, FileName as UniqueName, ''Downloads'' as TableType, K.Rank, Status
from Downloads
Inner Join FREETEXTTABLE(Downloads, (Title, Description, FileName), @KeyWord) as K
on DownloadId = k.[Key]

Union All

select Id as Id, Caption as Name, Caption as Description, FileName as UniqueName, ''PhotoAlbumImages'' as TableType, K.Rank, Status = 1 
from PhotoAlbumImages
Inner Join FREETEXTTABLE(PhotoAlbumImages, (Caption, FileName), @KeyWord) as K
on Id = k.[Key]

Union All

select Id as Id, Name, Description, DisplayName as UniqueName, ''PhotoAlbums'' as TableType, K.Rank, Status
from PhotoAlbums
Inner Join FREETEXTTABLE(PhotoAlbums, (Description, Name, DisplayName), @KeyWord) as K
on Id = k.[Key]

Union All

select Id as Id, Title as Name, Description, Title as UniqueName, ''Calendar'' as TableType, K.Rank, Status
from Calendar
Inner Join FREETEXTTABLE(Calendar, (Description, Title), @KeyWord) as K
on Id = k.[Key]

order by RANK desc
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UpdateItemCategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [UpdateItemCategory]
	@ItemId int,
	@CategoryId int
AS
BEGIN
	SET NOCOUNT ON;
	if (Not Exists(select * from ItemCategories where ItemId=@ItemId and CategoryId=@CategoryId))
		insert into ItemCategories(ItemId, CategoryId) values (@ItemId, @CategoryId)	
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UpdateItemOptionsInventory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [UpdateItemOptionsInventory]
	@ItemId int,
	@Key varchar(50),
	@Inventory float,
	@IsDefault bit,
	@UpdateInventory bit
AS
BEGIN

select * from ItemOptionsInventory where [Key]=@key and ItemId=@ItemId

if @@rowcount > 0 
begin
	if @UpdateInventory = 1
	begin
		update ItemOptionsInventory set IsDefault=@IsDefault, Inventory=@Inventory
		where ItemId=@ItemId and [Key]=@Key
	end
end 
else
begin
	insert into ItemOptionsInventory (ItemId, [Key], Inventory, IsDefault) values
		(@ItemId, @Key, @Inventory, @IsDefault)

end

END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[array]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [array]
-- =================================================
-- array Function 
-- =================================================
-- This function returns an XML version of a list with 
-- the sequence number and the value of each element 
-- as an XML fragment
-- Parameters
-- array() takes a varchar(max) list with whatever delimiter you wish. The
-- second value is the delimiter
   (
    @StringArray VARCHAR(8000),
    @Delimiter VARCHAR(10) = '',''
    
   )
RETURNS XML
AS BEGIN
      DECLARE @results TABLE
         (
          seqno INT IDENTITY(1, 1),-- the sequence is meaningful here
          Item VARCHAR(MAX)
         )
      DECLARE @Next INT
      DECLARE @lenStringArray INT
      DECLARE @lenDelimiter INT
      DECLARE @ii INT
      DECLARE @xml XML

      SELECT   @ii = 0, @lenStringArray = LEN(REPLACE(@StringArray, '' '', ''|'')),
               @lenDelimiter = LEN(REPLACE(@Delimiter, '' '', ''|''))

      WHILE @ii <= @lenStringArray+1--while there is another list element
         BEGIN
            SELECT   @next = CHARINDEX(@Delimiter, @StringArray + @Delimiter,
                                      @ii)
            INSERT   INTO @Results
                     (Item)
                     SELECT   SUBSTRING(@StringArray, @ii, @Next - @ii)
            SELECT   @ii = @Next + @lenDelimiter
         END	
      SELECT   @xml = ( SELECT seqno,
                            item
                     FROM   @results
                   FOR
                     XML PATH(''element''),
                         TYPE,
                         ELEMENTS,
                         ROOT(''stringarray'')
                   )
      RETURN @xml
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Capitalize]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Capitalize] (@string VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS BEGIN
      DECLARE @FirstAsciiChar INT

      SELECT   @FirstAsciiChar =
               PATINDEX(''%[^a-zA-Z][abcdefghijklmnopqurstuvwxyz]%'', '' ''
                   + @string  COLLATE Latin1_General_CS_AI)
      IF @FirstAsciiChar > 0
         SELECT   @String = STUFF(@String,
                                  @FirstAsciiChar,
                                  1,
                                  UPPER(SUBSTRING(@String, @FirstAsciiChar, 1)))
      RETURN @string
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Categories_GetAncestors]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'Create FUNCTION [Categories_GetAncestors]
(
	@CategoryId int
)
RETURNS @ret Table 
(
	CategoryId int,
	Name varchar(150),
	Title nvarchar(256),
	ParentId int,
	[Level] int
)
AS
BEGIN

WITH Ballout (CategoryId, Name, Title, ParentId, Level)
as
(
	select CategoryId, Name, Title, ParentId, 0 As Level
		from Categories as c
	where c.CategoryId = @CategoryId 
    UNION ALL
	-- Recursive member definition
    SELECT c.CategoryId, c.Name, c.Title, c.ParentId,
        Level + 1
		FROM Categories as c
     INNER JOIN Ballout AS b
        ON b.ParentId = c.CategoryId
)

insert into @ret select * from Ballout

RETURN
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Categories_GetDescendants]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'Create FUNCTION [Categories_GetDescendants]
(
	@CategoryId int
)
RETURNS @ret Table 
(
	CategoryId int,
	Name varchar(150),
	Title nvarchar(256),
	ParentId int,
	[Level] int
)
AS
BEGIN

WITH Ballout (CategoryId, Name, Title, ParentId, Level)
as
(
	select CategoryId, Name, Title, ParentId, 0 As Level
		from Categories as c
	where c.CategoryId = @CategoryId 
    UNION ALL
	-- Recursive member definition
    SELECT c.CategoryId, c.Name, c.Title, c.ParentId,
        Level + 1
		FROM Categories as c
     INNER JOIN Ballout AS b
        ON b.CategoryId = c.ParentId
)

insert into @ret select * from Ballout

RETURN
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Center]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Center]
   (
    @String VARCHAR(MAX),
    @width INT,
    @fillchar VARCHAR(10) = ''''''''    )
/*
e.g.

select dbo.center(''Help me please'',100,''*'')
select dbo.center(''error'',100,''*!='')
select dbo.center(''error'',null,null)
select dbo.center(null,null,null)

*/
RETURNS VARCHAR(MAX)
AS BEGIN
      IF @string IS NULL
         RETURN NULL
      DECLARE @LenString INT
      DECLARE @LenResult INT
-- Declare the return variable here
      SELECT   @lenString = LEN(@String), @Fillchar = COALESCE(@Fillchar, '' ''), @width = COALESCE(@Width, LEN(@String) * 2)
      SELECT   @lenResult = CASE WHEN @LenString > @Width THEN @LenString
                                 ELSE @width
                            END
      RETURN STUFF(REPLICATE(@fillchar, @lenResult / LEN(REPLACE(@FillChar, '' '', ''|''))), (@LenResult - LEN(@String) + 2) / 2, @lenString, @String)
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Contains]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Contains]
(
    @String VARCHAR(MAX),
    @substring XML,
    @start INT = NULL,
    @end INT = NULL
)
RETURNS INT
AS BEGIN
   RETURN dbo.within(@String,@substring,@start,@end,''%'',''%'')
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Count]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Count]
   (
    @string VARCHAR(MAX),
    @Sub VARCHAR(MAX),
    @start INT = NULL,
    @end INT = NULL
   )
RETURNS INT
AS BEGIN
      DECLARE @more INT
      DECLARE @count INT
      IF @string = NULL
         RETURN NULL
      SELECT   @count = 0, @more = 1, @Start = COALESCE(@Start, 1), @end = COALESCE(@end, LEN(@string))
      SELECT   @end = CASE WHEN @end > LEN(@string) THEN LEN(@string)
                           ELSE @end
                      END, @Start = CASE WHEN @start > LEN(@string) THEN LEN(@string)
                                         ELSE @start
                                    END
      WHILE @more <> 0
         BEGIN
            SELECT   @more = PATINDEX(''%'' + @sub + ''%'', SUBSTRING(@string, @Start, @End - @start + 1))
            IF @more > 0
               SELECT   @Start = @Start + @more, @count = @count + 1
            IF @start >= @End
               SELECT   @more = 0
         END
      RETURN @count
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EndsWith]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [EndsWith]
(
    @String VARCHAR(MAX),
    @prefix XML,
    @start INT = NULL,
    @end INT = NULL
)
RETURNS INT
AS BEGIN
   RETURN dbo.within(@String,@prefix,@start,@end,'''',''%'')
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ExpandTabs]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [ExpandTabs]
   (
    @String VARCHAR(MAX),
    @tabsize INT = NULL
   )
RETURNS VARCHAR(MAX)
AS BEGIN
      SELECT   @tabsize = COALESCE(@tabsize, 4)
      IF @string IS NULL
         RETURN NULL
      DECLARE @OriginalString VARCHAR(MAX),
         @DetabbifiedString VARCHAR(MAX),
         @Column INT,
         @Newline INT
      SELECT   @OriginalString = @String, @DeTabbifiedString = '''',
               @NewLine = 1, @Column = 1
      WHILE PATINDEX(''%['' + CHAR(9) + CHAR(10) + '']%'', @OriginalString) > 0
         BEGIN--do we need to expand tabs?
            IF CHARINDEX(CHAR(9), @OriginalString + CHAR(9))
                   > CHARINDEX(CHAR(10), @OriginalString + CHAR(10))
               BEGIN--we have to deal with a CR
                  SELECT   @NewLine = 1, @Column = 1,
                           @DeTabbifiedString = @DeTabbifiedString
                             + SUBSTRING(@OriginalString,
                                         1,
                                         CHARINDEX(CHAR(10), @OriginalString)),
                           @OriginalString = STUFF(@OriginalString, 1,
                                                   CHARINDEX(CHAR(10),
                                                          @OriginalString),'''')
               END
            ELSE
               BEGIN--de-tabbifying
                  SELECT   @Column = @column
                            + CHARINDEX(CHAR(9),
                                    @OriginalString + CHAR(9)) - 1,
                            @DeTabbifiedString = @DeTabbifiedString
                                 + SUBSTRING(@OriginalString, 1,
                                             CHARINDEX(CHAR(9),@OriginalString)
                                              - 1)
                  SELECT   @DeTabbifiedString = @DeTabbifiedString
                                      + SPACE(@TabSize - (@column % @TabSize)),
                           @OriginalString = STUFF(@OriginalString, 1,
                                                   CHARINDEX(CHAR(09),
                                                              @OriginalString),
                                                   '''')
                  SELECT   @Column = @Column + (@TabSize - (@column % @TabSize))
               END
         END
      RETURN @DeTabbifiedString + @Originalstring
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[fnStripTags]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'Create Function [fnStripTags]
    (@Dirty varchar(4000))
    Returns varchar(4000)
As

Begin
    Declare @Start int,
        @End int,
        @Length int

    While CharIndex(''<'', @Dirty) > 0 And CharIndex(''>'', @Dirty, CharIndex(''<'', @Dirty)) > 0
     Begin
        Select @Start = CharIndex(''<'', @Dirty), 
         @End = CharIndex(''>'', @Dirty, CharIndex(''<'', @Dirty))
        Select @Length = (@End - @Start) + 1
        If @Length > 0
         Begin
            Select @Dirty = Stuff(@Dirty, @Start, @Length, '''')
         End
     End

    return @Dirty
End


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetCalendarCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [GetCalendarCategories]
(
	@CategoryIds int
)
RETURNS varchar(max)
AS
BEGIN
	declare @Categories varchar(max)

	SELECT @Categories = COALESCE(@Categories + '', '' , '''') + CategoryName
		from CalendarCategories where Power(2, CategoryId)&@CategoryIds<>0

	return @Categories

END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [GetCategories]
(
	@ItemId int
)
RETURNS varchar(max)
AS
BEGIN
	declare @Categories varchar(max)

	SELECT @Categories = COALESCE(@Categories + ''|'' , '''') + Name
		from Categories where CategoryId in (
			select CategoryId from ItemCategories where ItemId = @ItemId	
		)

	return @Categories

END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[getChatConversationActiveUsersCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [getChatConversationActiveUsersCount]
(
	@ConversationId int
)
RETURNS int
AS
BEGIN
	declare @ret int;
	set @ret = 0;
	select @ret=count(*) from chat_conversation_users where mode&2=2 and ConversationId=@ConversationId;

	return @ret;
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[getChatConversationUsersCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
create FUNCTION [getChatConversationUsersCount]
(
	@ConversationId int
)
RETURNS int
AS
BEGIN
	declare @ret int;
	set @ret = 0;
	select @ret=count(*) from chat_conversation_users where ConversationId=@ConversationId;

	return @ret;
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [GetCount]
(
	@TableName nVARCHAR(100),
	@RelationId nVARCHAR(100),
	@RelateTo nVARCHAR(100)
)
RETURNS nVARCHAR(100)
AS BEGIN
DECLARE @RowCnt nVARCHAR(100)
set @RowCnt = 0
DECLARE @Sqlstring nvarchar(2000)

set @Sqlstring = ''SELECT @RowCnt = COUNT(*) FROM ''+ @TableName +'' WHERE ''+@RelationId+''=''+@RelateTo
Execute sp_executesql  @Sqlstring

RETURN @Sqlstring
END' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetNewsTypePath]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [GetNewsTypePath]
(
	@TypeId int
)
RETURNS nvarchar(512)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Ret nvarchar(512);
	
	set @Ret = ''/'';
	
	select top 1 @Ret = Path from  dbo.NewsTypes_GetAncestors(@TypeId)

	

	RETURN @Ret;

END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetOptionNames]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [GetOptionNames]
(
	@optionIds varchar(256)
)
RETURNS varchar(max)
AS
BEGIN
	declare @options varchar(max)

	SELECT @options = COALESCE(@options + ''|'', '''') + [value]
		from ItemChoicesOptions where OptionId in (
			select id from dbo.IdsToTable(@optionIds)
		)

	return @options
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetThisDayImpressions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [GetThisDayImpressions]
(
	@AdId int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int;
	set @Result = 0;
	
	
	
	select @Result=Exposures from Ads_Reports where 
		[Month] = DatePart(m, getdate())
		and [Year] = DatePart(yyyy, getDate())
		and [DayOfMonth] = DatePart(d, getdate())
	
	RETURN @Result
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GetThisHourImpressions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [GetThisHourImpressions]
(
	@AdId int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int;
	set @Result = 0;
	
	
	
	select @Result=Exposures from Ads_Reports where [Hour]=DatePart(hour, getdate())
		and [Month] = DatePart(m, getdate())
		and [Year] = DatePart(yyyy, getDate())
		and [DayOfMonth] = DatePart(d, getdate())
	
	RETURN @Result
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IdsToTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [IdsToTable]
(
	@ids VARCHAR(8000)
)
RETURNS @ret TABLE(id int)
AS
BEGIN
 DECLARE @sTemp VARCHAR(10)

 WHILE LEN(@ids) > 0
 BEGIN
  SET @sTemp = LEFT(@ids, ISNULL(NULLIF(CHARINDEX('','', @ids) - 1, -1),
                    LEN(@ids)))
  SET @ids = SUBSTRING(@ids,ISNULL(NULLIF(CHARINDEX('','', @ids), 0),
                               LEN(@ids)) + 1, LEN(@ids))
  INSERT INTO @ret VALUES (@sTemp)
 END

RETURN
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsAlnum]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [IsAlnum] (@string VARCHAR(MAX))  
/*
Select dbo.isalnum(''how many times must I tell you'')
Select dbo.isalnum(''345rtp'')
Select dbo.isalnum(''co10?'')
*/
RETURNS INT
AS BEGIN
      RETURN CASE WHEN PATINDEX(''%[^a-zA-Z0-9]%'', @string) > 0 THEN 0
                  ELSE 1
             END
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsAlpha]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [IsAlpha] (@string VARCHAR(MAX))  
--Select dbo.isalpha(''how many times must I tell you'')
--Select dbo.isalpha(''SQLsequel'')
--Select dbo.isalpha(''co10'')
RETURNS INT
AS BEGIN
      RETURN CASE WHEN PATINDEX(''%[^a-zA-Z]%'', @string) > 0 THEN 0
                  ELSE 1
             END
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsDigit]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [IsDigit] (@string VARCHAR(MAX))  
/*
Select dbo.isdigit(''how many times must I tell you'')
Select dbo.isdigit(''294856'')
Select dbo.isdigit(''569.45'')
*/
RETURNS INT
AS BEGIN
      RETURN CASE WHEN PATINDEX(''%[^0-9]%'', @string) > 0 THEN 0
                  ELSE 1
             END
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsLower]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [IsLower] (@string VARCHAR(MAX))  
/*
Select dbo.islower(''how many times must i tell you'')
Select dbo.islower(''how many times must I tell you'')
Select dbo.islower(''How many times must i tell you'')
Select dbo.islower(''how many times must i tell yoU'')
*/
RETURNS INT
AS BEGIN
      RETURN CASE
           WHEN PATINDEX(''%[ABCDEFGHIJKLMNOPQRSTUVWXYZ]%'',
                    @string  COLLATE Latin1_General_CS_AI) > 0 THEN 0
                  ELSE 1
             END
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IsSpace]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [IsSpace] (@string VARCHAR(MAX))  
/*
Select dbo.IsSpace(''how many times must i tell you'')
Select dbo.IsSpace('' <>[]{}"!@#$%9  )))))))'')
Select dbo.IsSpace('' ????/>.<,'')*/
RETURNS INT
AS BEGIN
      RETURN CASE WHEN PATINDEX(
              ''%[A-Za-z0-9-]%'', @string  COLLATE Latin1_General_CS_AI
                                ) > 0 THEN 0
                  ELSE 1
             END
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[isTitle]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [isTitle] (@string VARCHAR(MAX))  
/*
Select dbo.IsTitle(''How Many Times Must I Tell You'')
Select dbo.IsTitle(''this function is pretty useless'')
Select dbo.IsTitle(dbo.title(''this function is pretty useless''))
*/
RETURNS INT
AS BEGIN
      RETURN CASE
           WHEN PATINDEX(''%[a-z][ABCDEFGHIJKLMNOPQRSTUVWXYZ]%'', @string
                    COLLATE Latin1_General_CS_AI) > 0 THEN 0
           WHEN PATINDEX(''%[^A-Za-z][abcdefghijklmnopqrstuvwxyz]%'', @string
                    COLLATE Latin1_General_CS_AI) > 0 THEN 0
                  ELSE 1
             END
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[item]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [item]
(
@TheArray xml, @index int	

)
RETURNS varchar(max)
AS
BEGIN
return (select element.value(''item[1]'', ''VARCHAR(max)'')
    FROM @TheArray.nodes(''/stringarray/element[position()=sql:variable("@index")]'') array(element))

END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Join]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Join]
(
    @array XML,
    @separator VARCHAR(MAX)
)
RETURNS  VARCHAR(MAX)
AS BEGIN
   DECLARE @joined VARCHAR(MAX)
   --it is conceivable that someone might use a string here, to
    --make sure it is XML in our format 
      IF CHARINDEX(''<stringarray>'', CONVERT(VARCHAR(MAX), @array)) = 0
         SELECT   @array = ''<stringarray><element><seqno>1</seqno><item>''
                 + CONVERT(VARCHAR(MAX), @array)
                + ''</item></element></stringarray>''
--and now once again it is a simple select statement
SELECT @joined=COALESCE(@joined+@separator,'''') + item FROM
   ( SELECT    x.y.value(''item[1]'', ''VARCHAR(200)'') AS [item],
                       x.y.value(''seqno[1]'', ''INT'') AS seqno
      FROM      @array.nodes(''//stringarray/element'') AS x ( y )
     ) f
ORDER BY f.seqno
RETURN @joined
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[LJust]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [LJust]
   (
    @String VARCHAR(MAX),
    @width INT,
    @fillchar VARCHAR(10) = '' ''
   )
/*
e.g.

select dbo.LJust(''Help me please'',5,''*-'')
select dbo.LJust(''error'',100,''*!='')
select dbo.LJust(''error'',null,null)
select dbo.LJust(null,default,default)

*/
RETURNS VARCHAR(MAX)
AS BEGIN
      IF @string IS NULL
         RETURN NULL
      DECLARE @LenString INT
      DECLARE @LenFiller INT
-- Declare the return variable here
      SELECT   @lenString = LEN(REPLACE(@String, '' '', ''|'')),
               @Fillchar = COALESCE(@Fillchar, '' ''),
               @LenFiller = LEN(REPLACE(@Fillchar, '' '', ''|'')),
               @width = COALESCE(@Width, LEN(@String) * 2)
      IF @Width < @lenString
         RETURN @String
      RETURN STUFF(LEFT(
                       REPLICATE(@Fillchar, (@width / @LenFiller) + 1),
                       @width),
                    1, @LenString, @String)  
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Lstrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Lstrip]
   (
    @String VARCHAR(MAX),
    @chars VARCHAR(255) = '' ''
   )
RETURNS VARCHAR(MAX)
AS BEGIN
      SELECT   @Chars = COALESCE(@Chars, '' '')
      IF LEN(@Chars) = 0
         RETURN LTRIM(@String)
      IF @String IS NULL
         RETURN @string
      WHILE PATINDEX(''['' + @chars + '']%'', @string) = 1
         BEGIN
            SELECT   @String = RIGHT(@string,
                                     LEN(REPLACE(@string, '' '', ''|'')) - 1)
         END
      RETURN @String
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Network_GetAncestors]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
Create FUNCTION [Network_GetAncestors]
(
	@NetworkId int
)
RETURNS @ret Table 
(
	NetworkId int,
	UniqueName nvarchar(256),
	Name nvarchar(256),
	ParentId int,
	ParentUniqueName nvarchar(256),
	[Level] int
)
AS
BEGIN

WITH Ballout (NetworkId, UniqueName, Name, ParentId, ParentUniqueName, Level)
as
(
	select NetworkId, UniqueName, Name, ParentId, ParentUniqueName, 0 As Level
		from NetworksView as n
	where n.NetworkId = @NetworkId 
    UNION ALL
	-- Recursive member definition
    SELECT n.NetworkId, n.UniqueName, n.Name, n.ParentId, n.ParentUniqueName,
        Level + 1
		FROM NetworksView as n
     INNER JOIN Ballout AS b
        ON b.ParentId = n.NetworkId
)

insert into @ret select * from Ballout

RETURN
END



' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Networks_GetDescendants]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

Create FUNCTION [Networks_GetDescendants]
(
	@NetworkId int
)
RETURNS @ret Table 
(
	NetworkId int,
	UniqueName nvarchar(256),
	Name nvarchar(256),
	ParentId int,
	[Level] int
)
AS
BEGIN

WITH Ballout (NetworkId, UniqueName, Name, ParentId, Level)
as
(
	select NetworkId, UniqueName, Name, ParentId, 0 As Level
		from Networks as n
	where n.NetworkId = @NetworkId 
    UNION ALL
	-- Recursive member definition
    SELECT n.NetworkId, n.UniqueName, n.Name, n.ParentId,
        Level + 1
		FROM Networks as n
     INNER JOIN Ballout AS b
        ON b.NetworkId = n.ParentId
)

insert into @ret select * from Ballout

RETURN
END




' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Networks_GetDescendantsByParent]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'


CREATE FUNCTION [Networks_GetDescendantsByParent]
(
	@UniqueName nvarchar(256)
)
RETURNS @ret Table 
(
	NetworkId int,
	UniqueName nvarchar(256),
	Name nvarchar(256),
	ParentId int,
	ParentUniqueName nvarchar(256),
	[Level] int
)
AS
BEGIN

WITH Ballout (NetworkId, UniqueName, Name, ParentId, ParentUniqueName, Level)
as
(
	select NetworkId, UniqueName, Name, ParentId, ParentUniqueName, 0 As Level
		from NetworksView as n
	where n.UniqueName = @UniqueName 
    UNION ALL
	-- Recursive member definition
    SELECT n.NetworkId, n.UniqueName, n.Name, n.ParentId, n.ParentUniqueName,
        Level + 1
		FROM NetworksView as n
     INNER JOIN Ballout AS b
        ON b.NetworkId = n.ParentId
)

insert into @ret select * from Ballout

RETURN
END




' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsTypes_GetAncestors]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [NewsTypes_GetAncestors]
(
	@NewsTypeId int
)
RETURNS @ret Table 
(
	TypeId int,
	UniqueName nvarchar(150),
	Name nvarchar(256),
	ParentId int,
	[Level] int,
	[Path] nvarchar(512)
)
AS
BEGIN


declare @path nvarchar(max);
declare @count int;

set @path='''';
set @count=0;

WITH Ballout (TypeId, UniqueName, Name, ParentId, Level, Path)
as
(
	select TypeId, UniqueName, Name, ParentId, 
		0 As Level,
		''''
		from NewsTypes as c
	where c.TypeId = @NewsTypeId 
    UNION ALL
	-- Recursive member definition
    SELECT c.TypeId, c.UniqueName, c.Name, c.ParentId,
        Level + 1,
        ''''
		FROM NewsTypes as c
     INNER JOIN Ballout AS b
        ON b.ParentId = c.TypeId
)

		
insert into @ret select TypeId, UniqueName, Name, ParentId, Level,
	''''
	 from Ballout order by Level ASC;
	 


select @count = max(Level) from @ret;

SELECT @path = COALESCE(@path, '''') + UniqueName + ''/''
		from @ret;

declare @sTemp nvarchar(max);
declare @sep nvarchar(1);
declare @Counter int;

SET @sep = '''';
SET @sTemp = '''';
SET @Counter = -1;

set @path = reverse(@path)

WHILE LEN(@path) > 0
 BEGIN
		if (@Counter >= 0)
		begin
			SET @sTemp = @sTemp + @sep + reverse(LEFT(@path, ISNULL(NULLIF(CHARINDEX(''/'', @path) - 1, -1),
							LEN(@path))))
			SET @sep = ''/'';
			
			Update @ret set Path = @sTemp
				where Level = @count - @Counter
				
		end
     
  SET @path = SUBSTRING(@path,ISNULL(NULLIF(CHARINDEX(''/'', @path), 0),
                               LEN(@path)) + 1, LEN(@path));
	
	SET @Counter = @Counter + 1;
END

update @ret set Level = @count - Level

--the idea is to extract the path from both level and Path
--until a solution is found inside sql

RETURN
END

--SELECT PARSENAME(REPLACE(''Hello John Smith'', '' '', ''.''), 2)


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsTypes_GetDescendants]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'Create FUNCTION [NewsTypes_GetDescendants]
(
	@TypeId int
)
RETURNS @ret Table 
(
	TypeId int,
	UniqueName nvarchar(256),
	Name nvarchar(256),
	ParentId int,
	[Level] int
)
AS
BEGIN

WITH Ballout (TypeId, UniqueName, Name, ParentId, Level)
as
(
	select TypeId, UniqueName, Name, ParentId, 0 As Level
		from NewsTypes as n
	where n.TypeId = @TypeId 
    UNION ALL
	-- Recursive member definition
    SELECT n.TypeId, n.UniqueName, n.Name, n.ParentId,
        Level + 1
		FROM NewsTypes as n
     INNER JOIN Ballout AS b
        ON b.TypeId = n.ParentId
)

insert into @ret select * from Ballout

RETURN
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages_GetAncestors]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [Pages_GetAncestors]
(
	@PageId int
)
RETURNS @ret Table 
(
	PageId int,
	URL nvarchar(256),
	Title nvarchar(256),
	ParentId int,
	[Level] int
)
AS
BEGIN

WITH Ballout (PageId, URL, Title, ParentId, Level)
as
(
	select PageId, URL, Title, ParentId, 0 As Level
		from Pages as n
	where n.PageId = @PageId 
    UNION ALL
	-- Recursive member definition
    SELECT n.PageId, n.URL, n.Title, n.ParentId,
        Level + 1
		FROM Pages as n
     INNER JOIN Ballout AS b
        ON b.ParentId = n.PageId
	where Level<5
)

insert into @ret select * from Ballout

RETURN
END




' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages_GetDescendants]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [Pages_GetDescendants]
(
	@PageId int
)
RETURNS @ret Table 
(
	PageId int,
	URL nvarchar(256),
	Title nvarchar(256),
	ParentId int,
	[Level] int
)
AS
BEGIN

WITH Ballout (PageId, URL, Title, ParentId, Level)
as
(
	select PageId, URL, Title, ParentId, 0 As Level
		from Pages as n
	where n.PageId = @PageId 
    UNION ALL
	-- Recursive member definition
    SELECT n.PageId, n.URL, n.Title, n.ParentId,
        Level + 1
		FROM Pages as n
     INNER JOIN Ballout AS b
        ON b.PageId = n.ParentId
)

insert into @ret select * from Ballout

RETURN
END




' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages_GetDescendantsByPageName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [Pages_GetDescendantsByPageName]
(
	@Page nvarchar(256)
)
RETURNS @ret Table 
(
	PageId int,
	URL nvarchar(256),
	Title nvarchar(256),
	ParentId int,
	[Level] int
)
AS
BEGIN
	Declare @PageId int;
	select top 1 @PageId=PageId from Pages where URL=@Page or Title=@Page;
	
	insert into  @ret (PageId, URL, Title, ParentId, [Level]) select PageId, URL, Title, ParentId, [Level] from dbo.Pages_GetDescendants(@PageId)

	RETURN 
END
' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages_GetPath]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [Pages_GetPath]
(
	@PageId int
)
RETURNS nvarchar(max)
AS
BEGIN
	declare @ret nvarchar(max)

	SELECT @ret = COALESCE(@ret + ''/'', '''') + URL
			from dbo.Pages_GetAncestors(@PageId) Order by Level DESC

	return @ret
END



' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Partition]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Partition]
(
    @String VARCHAR(MAX),
    @Sep VARCHAR(MAX)
)
RETURNS XML
AS BEGIN
   RETURN dbo.parts(@String,@sep,0)
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Parts]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Parts]
(
    @String VARCHAR(MAX),
    @sep VARCHAR(MAX),
    @Last INT=0 
)
RETURNS XML
AS BEGIN
DECLARE @SepPos INT,
@XML AS XML

      DECLARE @results TABLE
         (
          seqno INT IDENTITY(1, 1),
          -- the sequence is meaningful here
          Item VARCHAR(MAX)
         )
IF @last<>0
   SELECT @SepPos=dbo.rfind(@string,@sep,DEFAULT,DEFAULT)
ELSE
   SELECT @SepPos=CHARINDEX(@Sep,@string)

IF @SepPos>0
INSERT INTO @results(Item)
   SELECT LEFT(@String,@SepPos-1) 
   UNION ALL SELECT @Sep
   UNION ALL SELECT RIGHT(@String,LEN(@String)-@Seppos-LEN(@sep)+1)
ELSE
INSERT INTO @results(Item)
   SELECT @String
   UNION ALL SELECT ''''
   UNION ALL SELECT ''''
      SELECT   @xml = (SELECT seqno, item
                       FROM   @results 
                      FOR
                       XML PATH(''element''),
                           TYPE,
                           ELEMENTS,
                           ROOT(''stringarray'')
                      )
      RETURN @xml
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Polls_GetCurrentPoll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [Polls_GetCurrentPoll]
(
	@week int,
	@dayOfWeek int
)
RETURNS int
AS
BEGIN


declare @PollId int
set @PollId = -1
declare @startDate datetime;
declare @dateNow dateTime
set @dateNow = dateadd(hour, 10, getDate())

--set @dateNow = dateadd(day, 4, getDate())

--select @datenow

if @week = -1
begin
	set @startDate = dateadd(month, -1*datepart(month, @dateNow) + 1, @dateNow)
	set @startDate = dateadd(day, -1*datepart(day, @dateNow) + 1, @startDate)
	set @startDate = dateadd(hour, -1*datepart(hour, @dateNow), @startDate)
	set @startDate = dateadd(minute, -1*datepart(minute, @dateNow), @startDate)
	set @startDate = dateadd(second, -1*datepart(second, @dateNow), @startDate)
	set @startDate = dateadd(millisecond, -1*datepart(millisecond, @dateNow), @startDate)


	-- Start day of displaying questions

	-- db starts in monday, when system starts as sunday
	set @dayOfWeek = DatePart(weekday, @dateNow) - 1
	-- +1 to match the count in db starts with 0
	set @week = datediff(week, @startDate, @dateNow) + 1
end

-- Display same question for sunday and saturday
if @dayOfWeek = 0 
begin 
	set @dayOfWeek = 6
	set @week = @week - 1
end


--select @dayofweek
--select @week

select top 1 @PollId=PollID from Polls where IsDefault=1

if @@rowcount = 0
begin
	select top 1 @PollId=PollID from Polls where [Day]=@dayOfweek and [Week] = @week
	order by PollID desc
	if @@rowcount = 0
	begin
		select top 1 @PollId=PollID from Polls where [Day]<=@dayOfweek and [Week] <= @week order by PollID desc
		if @@rowcount > 0
		begin
			return dbo.Polls_GetCurrentPoll(@week, @dayOfWeek - 1)
		end
	end
end

--select @PollId

return @PollId


END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[rfind]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [rfind]
   (
    @String VARCHAR(MAX),
    @Substring VARCHAR(MAX),
    @Start INT = NULL,
    @End INT = NULL
   )
RETURNS INT
AS BEGIN
      IF @substring + @string IS NULL
         RETURN NULL
      IF CHARINDEX(@substring, @string) = 0
         RETURN 0
      SELECT   @Start = COALESCE(@Start, 1),
              @end = COALESCE(@end, LEN(REPLACE(@string, '' '', ''|'')))
      IF @end <= @Start
         RETURN 0
      SELECT   @String = SUBSTRING(@String, @start, @end - @Start + 1)

      RETURN @start - 1
             + COALESCE(LEN(REPLACE(@string, '' '', ''|''))
               -CHARINDEX(REVERSE(@substring),
                        REVERSE(@substring + @string))
               - LEN(REPLACE(@substring, '' '', ''|'')) + 2, 0)

   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Rjust]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =================================================
-- RJust -Right justify string Function
-- =================================================
-- Returns a copy of @String Right justified in a
-- string of length width. Padding is done using the
-- specified fillchar string(default is a space). The
-- original string is returned if width is less than
-- len(s).
CREATE FUNCTION [Rjust]
   (
    @String VARCHAR(MAX),
    @width INT,
    @fillchar VARCHAR(10) = '' ''
   )
/*
e.g.

select dbo.Rjust(''Help me please'',5,''*-'')
select dbo.Rjust(''error'',100,''*!='')
select dbo.Rjust(''error'',null,null)
select dbo.Rjust(null,default,default)

*/
RETURNS VARCHAR(MAX)
AS BEGIN
      IF @string IS NULL
         RETURN NULL
      DECLARE @LenString INT
      DECLARE @LenFiller INT
-- Declare the return variable here
      SELECT   @lenString = LEN(REPLACE(@String, '' '', ''|'')),
               @Fillchar = COALESCE(@Fillchar, '' ''),
               @LenFiller = LEN(REPLACE(@Fillchar, '' '', ''|'')),
               @width = COALESCE(@Width, LEN(@String) * 2)
      IF @Width < @lenString
         RETURN @String
      RETURN STUFF(RIGHT(REPLICATE(@Fillchar,
                                   (@width / @LenFiller) + 1),
                                   @width),
                     @width - @LenString + 1,
                     @LenString,
                     @String)  
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[RPartition]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [RPartition]
(
    @String VARCHAR(MAX),
    @Sep VARCHAR(MAX)
)
RETURNS XML
AS BEGIN
   RETURN dbo.parts(@String,@sep,1)
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Rstrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Rstrip]
   (
    @String VARCHAR(MAX),
    @chars VARCHAR(255) = '' ''
   )
RETURNS VARCHAR(MAX)
AS BEGIN
      DECLARE @RString VARCHAR(MAX)--the string backwards
      SELECT   @Chars = COALESCE(@Chars, '' ''), @rstring = REVERSE(@String)
      IF LEN(@Chars) = 0
         RETURN RTRIM(@String)
      IF @String IS NULL
         RETURN @string
      WHILE PATINDEX(''['' + @chars + '']%'', @Rstring) = 1
         BEGIN
            SELECT @RString = RIGHT(@Rstring,
                                    LEN(REPLACE(@Rstring, '' '', ''|'')) - 1)
         END
      RETURN REVERSE(@RString)
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [split]
   (
    @String VARCHAR(8000),
    @Delimiter VARCHAR(255) = NULL,
    @MaxSplit INT = NULL
    
   )
RETURNS XML
AS BEGIN
      DECLARE @results TABLE
         (
          seqno INT IDENTITY(1, 1),
          Item VARCHAR(MAX)
         )
      DECLARE @xml XML,
         @HowManyDone INT,   --index of current search
         @HowMuchToDo INT,--How much more of the string to do
         @StartOfSplit INT,
         @EndOfSplit INT,
         @SplitStartCharacters VARCHAR(255),
         @SplitEndCharacters VARCHAR(255),
         @ItemCharacters VARCHAR(255),
         @ii INT

      SELECT   @HowMuchToDo = LEN(@string), @HowManyDone = 0,
               @StartOfSplit = 100, @SplitEndCharacters = ''[a-z]'',
               @SplitStartCharacters = COALESCE(@Delimiter,
                                                ''[^-a-z'''']''),
               @EndOfSplit = LEN(@SplitStartCharacters), @ii = 1

      WHILE @StartOfSplit > 0--we have a delimiter left to do
         AND @HowMuchToDo > 0--there is more of the string to split
         AND @ii <= COALESCE(@MaxSplit, @ii)
         BEGIN --find the delimiter or the start of the non-word block
            SELECT @StartOfSplit = PATINDEX(''%'' + @SplitStartCharacters + ''%'',
                  RIGHT(@String,@HowMuchToDo) COLLATE Latin1_General_CI_AI) 
                              
            IF @StartOfSplit > 0--if there is a non-word block
               AND @delimiter IS NULL 
               SELECT   @EndOfSplit = --find the next word
                   PATINDEX(''%'' + @SplitEndCharacters + ''%'',
                    RIGHT(@string,@HowMuchToDo- @startOfSplit)
                   COLLATE Latin1_General_CI_AI)
                                                                                 
            IF @StartOfSplit > 0--if there is a non-word block or delimiter 
               AND @ii < COALESCE(@MaxSplit, @ii + 1) --and there is a field
               --still to do
               INSERT   INTO @Results (item)
                        SELECT   LEFT(RIGHT(@String, @HowMuchToDo),
                                      @startofsplit - 1)
            ELSE --if not then save the rest of the string
               INSERT   INTO @Results (item)
                        SELECT   RIGHT(@String, @HowMuchToDo)
                                        
            SELECT   @HowMuchToDo = @HowMuchToDo - @StartOfSplit
                     - @endofSplit + 1, @ii = @ii + 1   
          END

--now we simply output the temporary table variable as XML
-- using our standard string-array format
      SELECT   @xml = (SELECT seqno, item
                       FROM   @results 
                      FOR
                       XML PATH(''element''),
                           TYPE,
                           ELEMENTS,
                           ROOT(''stringarray'')
                      )
      RETURN @xml
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SplitLines]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [SplitLines]
(
    @String VARCHAR(8000),
   @keepends INT=0    
)
RETURNS XML
AS BEGIN
DECLARE @Delimiter VARCHAR(5)
SELECT @Delimiter=CASE WHEN COALESCE(@keepends,0)<>0
THEN CHAR(13) ELSE ''
'' END
RETURN  dbo.split(@string, @delimiter, NULL)
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SplitString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [SplitString]
(
@SplitStr nvarchar(1000),
@SplitChar nvarchar(5)
) 
RETURNS @RtnValue table 
(
Data nvarchar(50)
) 
AS 
BEGIN 
Declare @Count int
Set @Count = 1

While (Charindex(@SplitChar,@SplitStr)>0)
Begin
Insert Into @RtnValue (Data)
Select 
Data = ltrim(rtrim(Substring(@SplitStr,1,Charindex(@SplitChar,@SplitStr)-1)))

Set @SplitStr = Substring(@SplitStr,Charindex(@SplitChar,@SplitStr)+1,len(@SplitStr))
Set @Count = @Count + 1
End

Insert Into @RtnValue (Data)
Select Data = ltrim(rtrim(@SplitStr))

Return
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[StartsWith]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [StartsWith]
(
    @String VARCHAR(MAX),
    @prefix XML,
    @start INT = NULL,
    @end INT = NULL
)
RETURNS INT
AS BEGIN
   RETURN dbo.within(@String,@prefix,@start,@end,''%'','''')
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[str_Find]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'--So a few more ideas for functions which you can pass arrays to
CREATE FUNCTION [str_Find]
-- =================================================
-- Str_Find Function 
-- =================================================
-- This function returns an integer containing the number of  occurrences of 
-- @search in @subject. 

-- Parameters
-- str_Find() takes a value from each array and uses them to do search 
-- on @subject 
-- This function returns an integer of the total count of the strings
-- in @search found in @Subject. 
   (
    @Search XML,-- you can actually pass a string in this
    @Subject VARCHAR(MAX)
   )
RETURNS INT
AS BEGIN
      DECLARE @count INT
      SELECT   @count = 0
	--turn any simple strings into xml fragments with a single element
      IF CHARINDEX(''<stringarray>'', CONVERT(VARCHAR(MAX), @Search)) = 0 
         SELECT   @Search = ''<stringarray><element><seqno>1</seqno><item>''
                + CONVERT(VARCHAR(MAX), @search)
                + ''</item></element></stringarray>''
      DECLARE @StringsTofind TABLE
         (
          [TheOrder] INT,
          [whatToFind] VARCHAR(200)
         )
      INSERT   INTO @StringsTofind
               ([TheOrder], [whatToFind])
               SELECT   x.y.value(''seqno[1]'', ''INT'') AS TheOrder,
                        x.y.value(''item[1]'', ''VARCHAR(200)'') AS [whatToFind]
               FROM     @Search .nodes(''//stringarray/element'') AS x (y)

      SELECT   @count = @count + ( LEN(@subject) - LEN(REPLACE(@Subject,
                                                            [whatToFind], '''')) )
            / LEN(whatToFind)
      FROM     @StringsTofind
      RETURN @count
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[str_GetDelimited]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [str_GetDelimited]

-- =================================================
-- str_GetDelimited Function 
-- =================================================
-- This function returns a table of Strings taken from the string you
-- pass to it. You can pass a number of alternative delimiters and it will
-- pick them all up in one gulp. 
-- you also specify the offset, which is to say that you can opt to
-- include all or part of the start delimiter in the string

-- Parameters
-- str_GetDelimited() takes a value from each array and uses them to
-- find the delimiter
-- This function returns a table of all the delimited strings found in
-- @Search using any of the delimiters found in @StartDelimiter, and 
-- terminated by the delimiter in @EndDelimiter, using the offset in
-- @offset
-- If @EndDelimiter has fewer values than @StartDelimiter , then the last
-- string is used for the rest of replacement @EndDelimiter. If @StartDelimiter is 
-- an array and @EndDelimiter is a string, then this @EndDelimiter string is used 
-- for every value of @StartDelimiter .   
(
    @StartDelimiter XML,-- you can actually pass a string in this
    @EndDelimiter XML,-- you can actually pass a string in this
    @offset XML,
    @Subject VARCHAR(MAX)
   )
RETURNS @Strings TABLE
   (
    seqNo INT IDENTITY(1, 1),
    String VARCHAR(255)
   )
AS BEGIN
      DECLARE @LenSubject INT,
         @ii INT,
         @Start INT,
         @Length INT,
         @keywordLength INT,
         @TheOrder INT,
         @MaxEndDelimiter VARCHAR(2000),
         @MaxOffset VARCHAR(2000)
	--turn any simple strings into xml fragments with a single element
      IF CHARINDEX(''<stringarray>'', CONVERT(VARCHAR(MAX), @StartDelimiter)) = 0 
         SELECT   @StartDelimiter = ''<stringarray><element><seqno>1</seqno><item>''
                + CONVERT(VARCHAR(MAX), @StartDelimiter)
                + ''</item></element></stringarray>''
      IF CHARINDEX(''<stringarray>'', CONVERT(VARCHAR(MAX), @EndDelimiter)) = 0 
         SELECT   @EndDelimiter = ''<stringarray><element><seqno>1</seqno><item>''
                + CONVERT(VARCHAR(MAX), @EndDelimiter)
                + ''</item></element></stringarray>''
      IF CHARINDEX(''<stringarray>'', CONVERT(VARCHAR(MAX), @offset)) = 0 
         SELECT   @offset = ''<stringarray><element><seqno>1</seqno><item>''
                + CONVERT(VARCHAR(MAX), @offset)
                + ''</item></element></stringarray>''
      DECLARE @substitutions TABLE
         (
          [TheOrder] INT,
          [StartDelimiter] VARCHAR(200),
          [EndDelimiter] VARCHAR(200),
          offset INT
         )
      INSERT   INTO @substitutions
               ([TheOrder], [StartDelimiter], [EndDelimiter], offset)
               SELECT   f.Seqno, [StartDelimiter], [EndDelimiter], offset
               FROM     ( SELECT    x.y.value(''item[1]'', ''VARCHAR(200)'') AS [StartDelimiter],
                                x.y.value(''seqno[1]'', ''INT'') AS seqno
                      FROM      @StartDelimiter.nodes(''//stringarray/element'')
                                AS x ( y )
                    ) f
                    LEFT OUTER JOIN ( SELECT    x.y.value(''item[1]'',
                                                          ''VARCHAR(200)'') AS [EndDelimiter],
                                                x.y.value(''seqno[1]'', ''INT'') AS seqno
                                      FROM      @EndDelimiter.nodes(''//stringarray/element'')
                                                AS x ( y )
                                    ) g ON f.seqno = g.seqno
                    LEFT OUTER JOIN ( SELECT    x.y.value(''item[1]'', ''INT'') AS [offset],
                                                x.y.value(''seqno[1]'', ''INT'') AS seqno
                                      FROM      @offset.nodes(''//stringarray/element'')
                                                AS x ( y )
                                    ) H
                        ON f.seqno = h.seqno

      SELECT   @MaxEndDelimiter = COALESCE([EndDelimiter], '''')
      FROM     @substitutions
      WHERE    theOrder = ( SELECT MAX([TheOrder])
                         FROM   @substitutions
                         WHERE  [EndDelimiter] IS NOT NULL
                       )
      SELECT   @MaxOffset = COALESCE([offset], 0)
      FROM     @substitutions
      WHERE    theOrder = ( SELECT MAX([TheOrder])
                         FROM   @substitutions
                         WHERE  [offset] IS NOT NULL
                       )

--Get the length of the Subject and initialise things
      SELECT   @LenSubject = LEN(REPLACE(@Subject, '' '', ''|'')),
               @ii = @LenSubject
      WHILE @ii > 0--find every delimited area in the Subject and put them
		   -- in a table
         BEGIN--check for the next delimited area
            SELECT   @start = 0
            SELECT TOP 1
                     @start = hit, @keywordLength = offset,
                     @TheOrder = Theorder
            FROM     (SELECT  [hit] = PATINDEX(''%'' + startDelimiter + ''%'',
                                                 RIGHT(@Subject, @ii)),
                              [offset] = COALESCE(offset, @MaxOffset),
                              theOrder
                      FROM    @substitutions
                     ) f
            WHERE    hit > 0
            ORDER BY hit ASC, offset DESC

            IF COALESCE(@start, 0) = 0 
               BREAK--no more?
  --so we isolate the actual delimited string 
            SELECT   @Length = PATINDEX(''%'' 
				       + COALESCE(EndDelimiter,@MaxEndDelimiter) + ''%'',
                            RIGHT(@Subject, @ii - @start - @keywordLength))
            FROM     @substitutions
            WHERE    theorder = @TheOrder
            SELECT   @Length = CASE @length
                                WHEN 0 THEN @ii
                                ELSE @length
                              END--no termination?
            INSERT   INTO @strings
                     (string) --add to our table
                     SELECT   LEFT(SUBSTRING(RIGHT(@Subject, @ii),
                                           @start + @keywordLength, @Length),
                                 255)
  --and reduce the length of the string we look at past the URL
            SELECT   @ii = @ii - @start - @keywordLength - @Length
         END
      RETURN

   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[str_replace]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =================================================
-- Str_Replace Function 
-- =================================================
-- This function returns a string or an array with all occurrences of search
-- in subject replaced with the given replace value. 

-- Parameters
-- str_replace() takes a value from each array and uses them to do search AND
-- replace on subject . If replace has fewer values than search , then an empty
-- string is used for the rest of replacement values. If search is an array and 
-- replace is a string, then this replacement string is used for every value 
-- of search . 

-- Their elements are processed first to last. 
-- This function returns a string with the replaced values. 
CREATE FUNCTION [str_replace]
   (
    @Search XML,-- you can actually pass a string in this
    @replace XML,-- and you can pass a string in this too
    @Subject VARCHAR(MAX)
   )
RETURNS VARCHAR(MAX)
AS BEGIN
	--turn any simple strings into xml fragments with a single element
      IF CHARINDEX(''<stringarray>'', CONVERT(VARCHAR(MAX), @Search)) = 0 
         SELECT   @Search = ''<stringarray><element><seqno>1</seqno><item>''
                + CONVERT(VARCHAR(MAX), @search)
                + ''</item></element></stringarray>''
      IF CHARINDEX(''<stringarray>'', CONVERT(VARCHAR(MAX), @Replace)) = 0 
         SELECT   @Replace = ''<stringarray><element><seqno>1</seqno><item>''
                + CONVERT(VARCHAR(MAX), @Replace)
                + ''</item></element></stringarray>''
      DECLARE @substitutions TABLE
         (
          [TheOrder] INT,
          [FROM] VARCHAR(200),
          [to] VARCHAR(200)
         )
      DECLARE @MaxTo VARCHAR(2000)
	--because we want to allow fewer substitution values than search vaues
	--as in the PHP version, it is a bit more complex.
      INSERT   INTO @substitutions
               ([TheOrder], [FROM], [to])
               SELECT   f.Seqno, [from], [to]
               FROM     ( SELECT    x.y.value(''item[1]'', ''VARCHAR(200)'') AS [from],
                                x.y.value(''seqno[1]'', ''INT'') AS seqno
                      FROM      @Search.nodes(''//stringarray/element'') AS x ( y )
                    ) f LEFT OUTER JOIN ( SELECT    x.y.value(''item[1]'',
                                                          ''VARCHAR(200)'') AS [to],
                                                x.y.value(''seqno[1]'', ''INT'') AS seqno
                                      FROM      @Replace.nodes(''//stringarray/element'')
                                                AS x ( y )
                                    ) g
                        ON f.seqno = g.seqno
	--first we want to get the last substitution value as a default.
      SELECT   @Maxto = COALESCE([to], '''')
      FROM     @substitutions
      WHERE    theOrder = ( SELECT MAX([TheOrder])
                         FROM   @substitutions
                         WHERE  [to] IS NOT NULL
                       )
	--and we get a nice set-based replacement query as a result
      SELECT   @Subject = REPLACE(@Subject, [from], COALESCE([to], @Maxto))
      FROM     @Substitutions
	--neat, huh?
      RETURN @Subject
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[StringToTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [StringToTable]
(
	@str nVARCHAR(max)
)
RETURNS @ret TABLE(id nvarchar(100))
AS
BEGIN
 DECLARE @sTemp nVARCHAR(100)

 WHILE LEN(@str) > 0
 BEGIN
  SET @sTemp = LEFT(@str, ISNULL(NULLIF(CHARINDEX('','', @str) - 1, -1),
                    LEN(@str)))
  SET @str = SUBSTRING(@str,ISNULL(NULLIF(CHARINDEX('','', @str), 0),
                               LEN(@str)) + 1, LEN(@str))
  INSERT INTO @ret VALUES (@sTemp)
 END

RETURN
END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Strip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [Strip]
   (
    @String VARCHAR(MAX),
    @chars VARCHAR(255) = '' ''
   )
RETURNS VARCHAR(MAX)
AS BEGIN
  
      RETURN dbo.RStrip(dbo.LStrip(@String, @Chars), @chars)
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SwapCase]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [SwapCase] (@string VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS BEGIN

      DECLARE @ii INT,
         @LenString INT,
         @ThisChar CHAR(1)
      SELECT   @ii = 1, @LenString = LEN(@String)
      WHILE @ii <= @LenString
         BEGIN
            SELECT   @ThisChar = SUBSTRING(@string, @ii, 1)
            IF @ThisChar BETWEEN ''a'' AND ''Z''  COLLATE Latin1_General_CS_AI 
                       SELECT   @String = STUFF(@string,
                                        @ii,
                                        1,
                                        CHAR(ASCII(@Thischar) ^ 32))
            SELECT   @ii = @ii + 1
         END
      RETURN @string
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[title]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [title] (@string VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS BEGIN

      DECLARE @Next INT
      WHILE 1 = 1
         BEGIN
       --find word space followed by lower case letter
       --This makes assumptions about the language
            SELECT   @next = PATINDEX(''%[^a-zA-Z][abcdefghijklmnopqurstuvwxyz]%'',
                                     '' '' + @string  COLLATE Latin1_General_CS_AI)
            IF @next = 0
               BREAK
            SELECT   @String = STUFF(@String,
                                     @Next,
                                     1,
                                     UPPER(SUBSTRING(@String, @Next, 1)))
         END
      RETURN @string
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[within]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [within]
   (
    @String VARCHAR(MAX),
    @Substring XML,
    @start INT = NULL,
    @end INT = NULL,
    @prefixWildcard VARCHAR(1)=''%'',
    @SuffixWildcard VARCHAR(1)=''%''
   )
RETURNS INT
AS BEGIN
     DECLARE @Match INT
      SELECT   @Start = COALESCE(@Start, 1),
               @End = COALESCE(@End, LEN(@String))
      IF @string IS NULL OR @Substring IS NULL
         RETURN NULL
      --convert a single Substring  into an array of one.   
      IF CHARINDEX(''<stringarray>'', CONVERT(VARCHAR(MAX), @Substring)) = 0
         SELECT   @Substring = ''<stringarray><element><seqno>1</seqno><item>''
                 + CONVERT(VARCHAR(MAX),@Substring)
                + ''</item></element></stringarray>''
       -- provide sensible defaults for the limiters
      SELECT   @end = CASE WHEN @end > LEN(@string)
                                 THEN LEN(@string)
                           ELSE @end
                      END,
               @Start = CASE WHEN @start > LEN(@string)
                                 THEN LEN(@string)
                           ELSE @start
                      END
--and it is one simple SELECT statement!
   SELECT @match= COUNT(*) FROM 
      ( SELECT x.y.value(''item[1]'', ''VARCHAR(200)'') AS [Substring ]
         FROM @Substring .nodes(''//stringarray/element'') AS x ( y )
      ) theSubstrings
   WHERE PATINDEX(@SuffixWildcard+SUBSTRING +@prefixWildcard,
                       SUBSTRING(@string, @Start, @End - @start + 1))>0
RETURN @match
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[zfill]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [zfill]
   (
    @String VARCHAR(MAX),
    @Width VARCHAR(255) = '' ''
   )
RETURNS VARCHAR(MAX)
AS BEGIN
      RETURN dbo.Rjust(@string, @Width, ''0'')
   END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AdKeywordRelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [AdKeywordRelation](
	[AdId] [int] NOT NULL,
	[KeywordId] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AdKeywords]') AND type in (N'U'))
BEGIN
CREATE TABLE [AdKeywords](
	[KeywordId] [int] NOT NULL,
	[Title] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads]') AND type in (N'U'))
BEGIN
CREATE TABLE [Ads](
	[AdId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[AdvertiserId] [int] NULL,
	[Status] [smallint] NULL,
	[ZoneId] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PaymentType] [smallint] NULL,
	[UnitsPurchased] [int] NULL,
	[CostPerUnit] [money] NULL,
	[Image] [varchar](50) NULL,
	[Description] [nvarchar](256) NULL,
	[HtmlCode] [ntext] NULL,
	[URL] [varchar](512) NULL,
	[NewWindow] [bit] NULL,
	[Weight] [smallint] NULL,
	[MaxImpressionPerHour] [int] NULL,
	[MaxImpressionPerDay] [int] NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[AdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_AdKeywordRelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [Ads_AdKeywordRelation](
	[AdId] [int] NOT NULL,
	[KeywordId] [int] NOT NULL,
 CONSTRAINT [PK_AdKeywordRelation] PRIMARY KEY CLUSTERED 
(
	[AdId] ASC,
	[KeywordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_Keywords]') AND type in (N'U'))
BEGIN
CREATE TABLE [Ads_Keywords](
	[KeywordId] [int] IDENTITY(1,1) NOT NULL,
	[Keyword] [varchar](50) NULL,
 CONSTRAINT [PK_AdKeywords] PRIMARY KEY CLUSTERED 
(
	[KeywordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_Reports]') AND type in (N'U'))
BEGIN
CREATE TABLE [Ads_Reports](
	[AdId] [int] NULL,
	[Clicks] [int] NULL,
	[Exposures] [int] NULL,
	[Date] [datetime] NULL,
	[Hour]  AS (datepart(hour,[Date])) PERSISTED,
	[DayOfMonth]  AS (datepart(day,[Date])) PERSISTED,
	[Month]  AS (datepart(month,[Date])) PERSISTED,
	[Year]  AS (datepart(year,[Date])) PERSISTED
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ads_Zones]') AND type in (N'U'))
BEGIN
CREATE TABLE [Ads_Zones](
	[ZoneId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Alias] [varchar](150) NULL,
	[Status] [bit] NULL,
	[Width] [smallint] NULL,
	[Height] [smallint] NULL,
	[Description] [nvarchar](256) NULL,
	[Size]  AS ((CONVERT([varchar],[width],(0))+' x ')+CONVERT([varchar],[height],(0))) PERSISTED,
 CONSTRAINT [PK_AdZones] PRIMARY KEY CLUSTERED 
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AdTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [AdTypes](
	[TypeId] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspnetUsersToDelete]') AND type in (N'U'))
BEGIN
CREATE TABLE [AspnetUsersToDelete](
	[UserID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ASPStateTempApplications]') AND type in (N'U'))
BEGIN
CREATE TABLE [ASPStateTempApplications](
	[AppId] [int] NOT NULL,
	[AppName] [char](280) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AppId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ASPStateTempSessions]') AND type in (N'U'))
BEGIN
CREATE TABLE [ASPStateTempSessions](
	[SessionId] [nvarchar](88) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Expires] [datetime] NOT NULL,
	[LockDate] [datetime] NOT NULL,
	[LockDateLocal] [datetime] NOT NULL,
	[LockCookie] [int] NOT NULL,
	[Timeout] [int] NOT NULL,
	[Locked] [bit] NOT NULL,
	[SessionItemShort] [varbinary](7000) NULL,
	[SessionItemLong] [image] NULL,
	[Flags] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Brands]') AND type in (N'U'))
BEGIN
CREATE TABLE [Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NULL,
	[Image] [varchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Calendar]') AND type in (N'U'))
BEGIN
CREATE TABLE [Calendar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[Time] [varchar](50) NULL,
	[Title] [nvarchar](150) NULL,
	[Location] [varchar](150) NULL,
	[Status] [int] NULL,
	[Description] [ntext] NULL,
	[CategoryId] [int] NULL,
	[UserId] [int] NULL,
	[Language] [smallint] NULL,
	[LastModified] [datetime] NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CalendarCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [CalendarCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_CalendarCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CalendarNetwork]') AND type in (N'U'))
BEGIN
CREATE TABLE [CalendarNetwork](
	[NetworkId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Role] [int] NULL,
	[Prefered] [bit] NULL,
 CONSTRAINT [PK_CalendarNetwork] PRIMARY KEY CLUSTERED 
(
	[NetworkId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[Status] [bit] NULL,
	[Image] [varchar](50) NULL,
	[Description] [ntext] NULL,
	[ParentId] [int] NULL,
	[TemplateId] [int] NULL,
	[DateCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[DiscountPlanId] [int] NULL,
	[ClassId] [int] NULL,
	[SortingOrder] [int] NULL,
	[google_zoom] [smallint] NULL,
	[google_lng] [decimal](10, 6) NULL,
	[google_lat] [decimal](10, 6) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_conversation_messages]') AND type in (N'U'))
BEGIN
CREATE TABLE [chat_conversation_messages](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[FromId] [int] NOT NULL,
	[ConversationId] [int] NOT NULL,
	[Message] [ntext] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
 CONSTRAINT [PK_chat_Private] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_conversation_users]') AND type in (N'U'))
BEGIN
CREATE TABLE [chat_conversation_users](
	[ConversationId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[mode] [int] NULL,
 CONSTRAINT [PK_chat_conversation_users] PRIMARY KEY CLUSTERED 
(
	[ConversationId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_conversations]') AND type in (N'U'))
BEGIN
CREATE TABLE [chat_conversations](
	[ConversationId] [int] IDENTITY(1,1) NOT NULL,
	[TimeStamp] [datetime] NULL,
	[Type] [tinyint] NULL,
	[TableName] [varchar](50) NULL,
	[RoomId] [int] NULL,
 CONSTRAINT [PK_chat_conversations] PRIMARY KEY CLUSTERED 
(
	[ConversationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_LoggedInUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [chat_LoggedInUser](
	[LoggedInUserID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
 CONSTRAINT [PK_chat_LoggedInUser] PRIMARY KEY CLUSTERED 
(
	[LoggedInUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_Message]') AND type in (N'U'))
BEGIN
CREATE TABLE [chat_Message](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NULL,
	[MemberId] [int] NOT NULL,
	[Message] [varchar](100) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
 CONSTRAINT [PK_chat_Message] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[chat_Room]') AND type in (N'U'))
BEGIN
CREATE TABLE [chat_Room](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_chat_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Comments_Pages]') AND type in (N'U'))
BEGIN
CREATE TABLE [Comments_Pages](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[RelationId] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
	[Status] [int] NOT NULL,
	[AdminId] [int] NULL,
	[Title] [nvarchar](256) NULL,
	[CommentText] [ntext] NULL,
	[MemberId] [int] NOT NULL,
	[IpAddress] [varchar](50) NULL,
	[CommentType] [int] NULL,
 CONSTRAINT [PK_Comments_Pages] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC,
	[ParentId] ASC,
	[RelationId] ASC,
	[Status] ASC,
	[DateCreated] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Comments_Tables]') AND type in (N'U'))
BEGIN
CREATE TABLE [Comments_Tables](
	[TableId] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](250) NOT NULL,
	[RelationField] [varchar](250) NULL,
	[Members] [bit] NULL,
	[CustomPermissions] [int] NULL,
	[AdminId] [int] NULL,
	[xmlField] [xml] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[TableId] ASC,
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Countries]') AND type in (N'U'))
BEGIN
CREATE TABLE [Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[TopParent] [int] NULL,
	[ParentId] [int] NULL,
	[Code] [char](2) NULL,
	[Name] [nvarchar](256) NULL,
	[LocalName] [nvarchar](256) NULL,
	[Shipping] [bit] NULL,
	[ShippingZone] [nvarchar](20) NULL,
	[ShippingCost] [money] NULL,
	[TimeZone] [varchar](6) NULL,
	[PhoneCode] [varchar](10) NULL,
	[DayLightSaving] [tinyint] NULL,
	[LAT] [varchar](15) NULL,
	[LONG] [varchar](15) NULL,
	[LastModified] [datetime] NULL,
	[DateCreated] [datetime] NULL,
	[CountryCode]  AS ([Code]),
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Dataform]') AND type in (N'U'))
BEGIN
CREATE TABLE [Dataform](
	[FormId] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Dataform_Geuid]  DEFAULT (newid()),
	[FormType] [nvarchar](25) NULL,
	[IP] [nvarchar](16) NULL,
	[Email] [varchar](150) NULL,
	[Name] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[Data] [ntext] NULL,
	[Attachements] [ntext] NULL,
	[Status] [int] NULL CONSTRAINT [DF_Dataform_Status]  DEFAULT ((0)),
	[History] [xml] NULL,
 CONSTRAINT [PK_Dataform] PRIMARY KEY CLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DiscountPlans]') AND type in (N'U'))
BEGIN
CREATE TABLE [DiscountPlans](
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[DiscountType] [char](1) NULL,
	[Description] [nvarchar](250) NULL,
	[Discount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DiscountPlans] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Downloads]') AND type in (N'U'))
BEGIN
CREATE TABLE [Downloads](
	[DownloadId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [ntext] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[DownloadType] [int] NULL,
	[FileName] [varchar](150) NULL,
	[FileSize] [float] NULL,
	[Status] [tinyint] NULL,
	[Sort] [int] NULL,
 CONSTRAINT [PK_Downloads] PRIMARY KEY CLUSTERED 
(
	[DownloadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Downloads_MembersActivity]') AND type in (N'U'))
BEGIN
CREATE TABLE [Downloads_MembersActivity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[DownloadId] [int] NOT NULL,
	[DateDownloaded] [datetime] NULL,
 CONSTRAINT [PK_Downloads_MembersActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[MemberId] ASC,
	[DownloadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DownloadsNetwork]') AND type in (N'U'))
BEGIN
CREATE TABLE [DownloadsNetwork](
	[NetworkId] [int] NOT NULL,
	[DownloadId] [int] NOT NULL,
	[Role] [int] NULL,
	[Prefered] [bit] NULL,
 CONSTRAINT [PK_DownloadsNetwork] PRIMARY KEY CLUSTERED 
(
	[NetworkId] ASC,
	[DownloadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DownloadTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [DownloadTypes](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](150) NULL,
	[UniqueName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_DownloadTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC,
	[UniqueName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Friends]') AND type in (N'U'))
BEGIN
CREATE TABLE [Friends](
	[MemberId] [int] NOT NULL,
	[FriendId] [int] NOT NULL,
	[Status] [smallint] NULL,
	[GroupId] [int] NULL,
	[Sorting] [int] NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[FriendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GiftVouchers]') AND type in (N'U'))
BEGIN
CREATE TABLE [GiftVouchers](
	[VoucherId] [int] IDENTITY(1,1) NOT NULL,
	[VoucherCode] [varchar](50) NOT NULL,
	[Amount] [money] NULL,
	[Status] [tinyint] NULL,
	[DateCreated] [datetime] NULL,
	[OrderId] [int] NULL,
	[ToName] [nvarchar](150) NULL,
	[ToEmail] [varchar](150) NULL,
 CONSTRAINT [PK_GiftVouchers] PRIMARY KEY CLUSTERED 
(
	[VoucherId] ASC,
	[VoucherCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Groups]') AND type in (N'U'))
BEGIN
CREATE TABLE [Groups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[UniqueName] [nvarchar](250) NULL,
	[CreatorID] [int] NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [nvarchar](25) NULL,
	[City] [nvarchar](150) NULL,
	[Region] [int] NULL,
	[Country] [int] NULL,
	[University] [int] NULL,
	[Picture] [nvarchar](150) NULL,
	[Privacy] [int] NULL,
	[MembershipApproval] [bit] NULL,
	[Description] [ntext] NULL,
	[Mission] [ntext] NULL,
	[Security] [int] NULL,
	[Type] [int] NULL,
	[LegalStatus] [nvarchar](150) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GroupsMembers]') AND type in (N'U'))
BEGIN
CREATE TABLE [GroupsMembers](
	[GroupID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[MemberLevel] [int] NULL,
	[Status] [int] NULL,
	[DateJoined] [datetime] NULL,
 CONSTRAINT [PK_GroupsMembers] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GroupsNetwork]') AND type in (N'U'))
BEGIN
CREATE TABLE [GroupsNetwork](
	[NetworkId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[Role] [int] NULL,
	[Prefered] [bit] NULL,
 CONSTRAINT [PK_GroupsNetwork] PRIMARY KEY CLUSTERED 
(
	[NetworkId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Guestbook]') AND type in (N'U'))
BEGIN
CREATE TABLE [Guestbook](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [varchar](2) NULL,
	[Email] [varchar](150) NULL,
	[Comment] [ntext] NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
	[Year] [varchar](50) NULL,
	[MissAboutISR] [ntext] NULL,
	[ISRHelp] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HashTags]') AND type in (N'U'))
BEGIN
CREATE TABLE [HashTags](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[Tag] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HashTags_Relations]') AND type in (N'U'))
BEGIN
CREATE TABLE [HashTags_Relations](
	[TagId] [int] NOT NULL,
	[RelateTo] [int] NOT NULL,
	[RelationType] [smallint] NOT NULL,
 CONSTRAINT [PK_Tags_Relations] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC,
	[RelateTo] ASC,
	[RelationType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemCategories](
	[ItemId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_ItemCategories] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemChoices]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemChoices](
	[ChoiceId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Sorting] [int] NULL,
 CONSTRAINT [PK_ItemOptionGroups] PRIMARY KEY CLUSTERED 
(
	[ChoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemChoicesOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemChoicesOptions](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[ChoiceId] [int] NULL,
	[value] [nvarchar](150) NULL,
	[Sorting] [int] NULL,
 CONSTRAINT [PK_ItemChoicesOptions] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemOptions](
	[ItemId] [int] NOT NULL,
	[OptionId] [int] NOT NULL,
	[DisplayOnSite] [bit] NULL,
 CONSTRAINT [PK_ItemOptions] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemOptionsInventory]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemOptionsInventory](
	[ItemId] [int] NOT NULL,
	[Key] [varchar](50) NOT NULL,
	[Inventory] [float] NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_ItemOptionsInventory_1] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemPackages]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemPackages](
	[ItemId] [int] NOT NULL,
	[ItemId1] [int] NOT NULL,
	[QTY] [decimal](4, 2) NULL,
	[Sort] [int] NULL,
 CONSTRAINT [PK_ItemPackages] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[ItemId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemPrices]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemPrices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[PriceFor] [nvarchar](256) NOT NULL,
	[Status] [smallint] NULL,
	[Price] [money] NULL,
	[ResellerPrice] [money] NULL,
	[OnSale] [bit] NULL,
	[SalePrice] [money] NULL,
	[Inventory] [decimal](10, 4) NULL,
	[Description] [nvarchar](256) NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_ItemPrices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[ItemId] ASC,
	[PriceFor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemRelations]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemRelations](
	[ItemId1] [int] NOT NULL,
	[ItemId2] [int] NOT NULL,
	[SortingOrder] [int] NULL,
 CONSTRAINT [PK_ItemRelations] PRIMARY KEY CLUSTERED 
(
	[ItemId1] ASC,
	[ItemId2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Items]') AND type in (N'U'))
BEGIN
CREATE TABLE [Items](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ProductNumber] [nvarchar](50) NOT NULL,
	[UniqueName] [varchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[Keywords] [nvarchar](250) NULL,
	[BrandId] [int] NULL,
	[Status] [int] NULL,
	[SmallDescription] [ntext] NULL,
	[LargeDescription] [ntext] NULL,
	[Price] [money] NULL,
	[SalePrice] [money] NULL,
	[ResellerPrice] [money] NULL,
	[Image1] [varchar](50) NULL,
	[Image2] [varchar](50) NULL,
	[Image3] [varchar](50) NULL,
	[Image4] [varchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[ThumbImage] [varchar](510) NULL,
	[Specs] [ntext] NULL,
	[StockQuantity] [int] NULL,
	[ShippingWeight] [float] NULL,
	[ShippingWidth] [float] NULL,
	[ShippingHeight] [float] NULL,
	[ShippingLength] [float] NULL,
	[DownloadableFile] [varchar](256) NULL,
	[Warranty] [nvarchar](150) NULL,
	[Packaging] [nvarchar](256) NULL,
	[Ranking] [int] NULL,
	[UserRating] [int] NULL,
	[Views] [int] NULL,
	[Website] [varchar](150) NULL,
	[Template] [ntext] NULL,
	[Address] [nvarchar](512) NULL,
	[Mobile] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[Email] [varchar](250) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[ProductNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ItemTextOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [ItemTextOptions](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[min] [int] NULL,
	[max] [int] NULL,
	[Selected] [bit] NULL,
 CONSTRAINT [PK_ItemTextOptions] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JobApplications]') AND type in (N'U'))
BEGIN
CREATE TABLE [JobApplications](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](150) NULL,
	[CompanyName] [nvarchar](150) NULL,
	[Salary] [money] NULL,
	[Description] [ntext] NULL,
	[ContactName] [nvarchar](150) NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[Email] [varchar](150) NULL,
	[CategoryId] [int] NULL,
	[CountryCode] [nvarchar](2) NULL,
	[PositionId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JobCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [JobCategories](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [varchar](150) NULL,
	[UniqueName] [varchar](150) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JobOffers]') AND type in (N'U'))
BEGIN
CREATE TABLE [JobOffers](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](150) NULL,
	[CompanyName] [nvarchar](150) NULL,
	[Salary] [money] NULL,
	[Description] [ntext] NULL,
	[ContactName] [nvarchar](150) NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[Email] [varchar](150) NULL,
	[Logo] [varchar](150) NULL,
	[Url] [nvarchar](150) NULL,
	[Address] [nvarchar](255) NULL,
	[CategoryId] [int] NULL,
	[CountryCode] [nvarchar](2) NULL,
	[PositionId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[ExpiryDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JobPositions]') AND type in (N'U'))
BEGIN
CREATE TABLE [JobPositions](
	[PositionId] [int] NOT NULL,
	[PositionName] [varchar](150) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Media]') AND type in (N'U'))
BEGIN
CREATE TABLE [Media](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[Status] [tinyint] NULL,
	[Caption] [nvarchar](256) NULL,
	[MediaFile] [nvarchar](150) NULL,
	[MediaObject] [nvarchar](512) NULL,
	[Sort] [int] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[Tags] [nvarchar](512) NULL,
 CONSTRAINT [PK_Medias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MediaWidgets]') AND type in (N'U'))
BEGIN
CREATE TABLE [MediaWidgets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MediaId] [int] NOT NULL,
	[WidgetId] [int] NOT NULL,
 CONSTRAINT [PK_MediaWidgets_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberCareer]') AND type in (N'U'))
BEGIN
CREATE TABLE [MemberCareer](
	[CareerId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[CountryId] [int] NULL,
	[RegionId] [int] NULL,
	[Company] [nvarchar](256) NULL,
	[Title] [nvarchar](256) NULL,
	[Responsabilities] [ntext] NULL,
	[City] [nvarchar](150) NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[CurrentJob] [bit] NULL,
	[Privacy] [int] NULL,
 CONSTRAINT [PK_MemberCareer] PRIMARY KEY CLUSTERED 
(
	[CareerId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberEducation]') AND type in (N'U'))
BEGIN
CREATE TABLE [MemberEducation](
	[EducationId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[CountryId] [int] NULL,
	[RegionId] [int] NULL,
	[City] [nvarchar](150) NULL,
	[UniversityId] [int] NULL,
	[Name] [nvarchar](256) NULL,
	[Degree] [nvarchar](100) NULL,
	[Major] [nvarchar](150) NULL,
	[Minor] [nvarchar](150) NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[Note] [ntext] NULL,
	[Type] [int] NULL,
	[Privacy] [int] NULL,
 CONSTRAINT [PK_MemberEducation] PRIMARY KEY CLUSTERED 
(
	[EducationId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberLocation]') AND type in (N'U'))
BEGIN
CREATE TABLE [MemberLocation](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[Address] [nvarchar](256) NULL,
	[City] [nvarchar](100) NULL,
	[RegionId] [int] NULL,
	[PostalCode] [nvarchar](25) NULL,
	[CountryId] [int] NULL,
	[Privacy] [int] NULL,
	[AddressType] [tinyint] NULL,
 CONSTRAINT [PK_MemberLocation] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberNetworks]') AND type in (N'U'))
BEGIN
CREATE TABLE [MemberNetworks](
	[NetworkId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[Role] [int] NULL,
	[Prefered] [bit] NULL,
 CONSTRAINT [PK_MemberNetworks] PRIMARY KEY CLUSTERED 
(
	[NetworkId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [MemberProfile](
	[MemberId] [int] NOT NULL,
	[Phone] [nvarchar](25) NULL,
	[Mobile] [nvarchar](25) NULL,
	[Address] [nvarchar](256) NULL,
 CONSTRAINT [PK_MemberProfile] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Members]') AND type in (N'U'))
BEGIN
CREATE TABLE [Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[Geuid] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Members_CookieId]  DEFAULT (newid()),
	[UserName] [varchar](150) NOT NULL,
	[Password] [nvarchar](250) NULL,
	[Status] [int] NULL,
	[Title] [nvarchar](10) NULL,
	[FirstName] [nvarchar](100) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Gender] [smallint] NULL,
	[Email] [varchar](150) NULL,
	[AlternateEmail] [varchar](150) NULL,
	[DateOfBirth] [datetime] NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_Members_DateCreated]  DEFAULT (getdate()),
	[LastModified] [datetime] NULL,
	[LastLogin] [datetime] NULL CONSTRAINT [DF_Members_LasLoggedIn]  DEFAULT (getdate()),
	[Online] [bit] NULL,
	[SecretQuestion] [nvarchar](150) NULL,
	[SecretQuestionAnswer] [nvarchar](150) NULL,
	[Picture] [varchar](150) NULL,
	[Privacy] [int] NULL,
	[ChangedBy] [int] NULL,
	[JoinNewsletter] [bit] NULL,
	[PrivateComments] [ntext] NULL,
	[Comments] [ntext] NULL,
	[PasswordChangeDate] [datetime] NULL,
	[FullName] [nvarchar](256) NULL,
	[NativeFullName] [nvarchar](256) NULL,
	[Roles] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[Geuid] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Members_LoginActivity]') AND type in (N'U'))
BEGIN
CREATE TABLE [Members_LoginActivity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[IpAddress] [varchar](50) NULL,
	[LoggedInDate] [datetime] NULL,
 CONSTRAINT [PK_Members_LoginActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Members_ResetPassword]') AND type in (N'U'))
BEGIN
CREATE TABLE [Members_ResetPassword](
	[MemberId] [int] NOT NULL,
	[Code] [nvarchar](250) NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Members_ResetPassword] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MemberSocial]') AND type in (N'U'))
BEGIN
CREATE TABLE [MemberSocial](
	[SocialId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[Type] [int] NULL,
	[Value] [nvarchar](256) NULL,
	[Privacy] [int] NULL,
 CONSTRAINT [PK_MemberSocial_1] PRIMARY KEY CLUSTERED 
(
	[SocialId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Networks]') AND type in (N'U'))
BEGIN
CREATE TABLE [Networks](
	[NetworkId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [ntext] NULL,
	[UniqueName] [nvarchar](256) NOT NULL,
	[ParentId] [int] NULL,
	[DateCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[OperatorId] [int] NULL,
	[Website] [nvarchar](256) NULL,
	[XmlField] [xml] NULL,
	[Picture] [varchar](150) NULL,
	[Status] [int] NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK_Networks] PRIMARY KEY CLUSTERED 
(
	[NetworkId] ASC,
	[UniqueName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[News]') AND type in (N'U'))
BEGIN
CREATE TABLE [News](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[Status] [tinyint] NULL,
	[Header] [nvarchar](512) NULL,
	[NewsText] [ntext] NULL,
	[NewsDate] [datetime] NULL,
	[NewsType] [int] NULL,
	[NewsLanguage] [smallint] NULL,
	[NewsFile] [nvarchar](150) NULL,
	[UniqueName] [nvarchar](256) NULL,
	[ThumbImage] [nvarchar](150) NULL,
	[LargeImage] [nvarchar](150) NULL,
	[MediumImage] [nvarchar](150) NULL,
	[CreatorId] [int] NULL,
	[ModifierId] [int] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[Ranking] [int] NULL,
	[Views] [int] NULL,
	[UserRating] [int] NULL,
	[PublishDate] [datetime] NULL,
	[NewWindow] [bit] NULL,
	[draft] [xml] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsletterGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [NewsletterGroups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](50) NULL,
 CONSTRAINT [PK_NewsletterGroups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsletterGroupsUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [NewsletterGroupsUsers](
	[UserId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_NewsletterGroupsUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsletterUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [NewsletterUsers](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Email] [varchar](100) NULL,
	[Gender] [bit] NULL,
	[GroupId] [int] NULL,
	[AgeGroup] [int] NULL,
	[DateAdded] [datetime] NULL,
	[Phone] [varchar](20) NULL,
 CONSTRAINT [PK_NewsletterUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsNetwork]') AND type in (N'U'))
BEGIN
CREATE TABLE [NewsNetwork](
	[NetworkId] [int] NOT NULL,
	[NewsId] [int] NOT NULL,
	[Role] [int] NULL,
	[Prefered] [bit] NULL,
 CONSTRAINT [PK_NewsNetwork] PRIMARY KEY CLUSTERED 
(
	[NetworkId] ASC,
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NewsTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [NewsTypes](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[UniqueName] [nvarchar](256) NULL,
	[ThumbWidth] [smallint] NULL,
	[ThumbHeight] [smallint] NULL,
	[ThumbSize]  AS ((CONVERT([varchar],[thumbwidth],(0))+' x ')+CONVERT([varchar],[thumbheight],(0))),
	[ThumbResizeMethod] [tinyint] NULL,
	[LargeWidth] [smallint] NULL,
	[LargeHeight] [smallint] NULL,
	[LargeSize]  AS ((CONVERT([varchar],[largewidth],(0))+' x ')+CONVERT([varchar],[largeheight],(0))),
	[LargeResizeMethod] [tinyint] NULL,
	[MediumWidth] [smallint] NULL,
	[MediumHeight] [smallint] NULL,
	[MediumSize]  AS ((CONVERT([varchar],[mediumwidth],(0))+' x ')+CONVERT([varchar],[mediumheight],(0))),
	[MediumResizeMethod] [tinyint] NULL,
	[Status] [tinyint] NULL,
	[Image] [nvarchar](150) NULL,
	[Description] [ntext] NULL,
	[ParentId] [int] NULL,
	[TemplateId] [int] NULL,
	[DateCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[Ranking] [int] NULL,
	[Views] [int] NULL,
	[UserRating] [int] NULL,
	[ThumbResizeOption] [tinyint] NULL,
	[MediumResizeOption] [tinyint] NULL,
	[LargeResizeOption] [tinyint] NULL,
	[Permission] [int] NULL,
	[AutoPath] [bit] NULL,
	[Path] [nvarchar](256) NULL,
 CONSTRAINT [PK_NewsTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[OperatorGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [OperatorGroups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](50) NULL,
	[XmlFile] [varchar](50) NULL,
 CONSTRAINT [PK_OperatorGroups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[OperatorProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [OperatorProfile](
	[MemberId] [int] NOT NULL,
	[GroupId] [int] NULL,
	[Style] [varchar](50) NULL,
 CONSTRAINT [PK_OperatorProfile] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderVisualId] [varchar](50) NOT NULL,
	[MemberId] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](150) NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [varchar](16) NULL,
	[Country] [nvarchar](50) NULL,
	[Region] [varchar](50) NULL,
	[ShippingSame] [bit] NULL,
	[ShippingPhone] [varchar](20) NULL,
	[ShippingAddress] [nvarchar](250) NULL,
	[ShippingCity] [varchar](250) NULL,
	[ShippingState] [varchar](50) NULL,
	[ShippingZip] [varchar](16) NULL,
	[ShippingCountry] [varchar](2) NULL,
	[ShippingRegion] [varchar](2) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_Orders_DateCreated]  DEFAULT (getdate()),
	[Status] [int] NULL,
	[SubTotal] [money] NULL,
	[Total] [money] NULL,
	[Discount] [money] NULL,
	[Tax] [money] NULL,
	[Shipping] [money] NULL,
	[Handling] [money] NULL,
	[OrderType] [smallint] NULL,
	[Description] [ntext] NULL,
	[OperatorId] [int] NULL,
	[Comments] [ntext] NULL,
	[ShippingKey] [varchar](50) NULL,
	[VoucherCode] [varchar](20) NULL,
	[VoucherValue] [money] NULL,
	[PaymentType] [char](2) NULL,
	[PaymentCost] [money] NULL,
	[StatusDescription] [varchar](250) NULL,
	[TypeDescription] [varchar](250) NULL,
	[XmlData] [xml] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[OrderVisualId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageDataProperty]') AND type in (N'U'))
BEGIN
CREATE TABLE [PageDataProperty](
	[DataPropertyID] [int] IDENTITY(1,1) NOT NULL,
	[DataPropertyName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PageDataProperty] PRIMARY KEY CLUSTERED 
(
	[DataPropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageDataPropertyValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [PageDataPropertyValue](
	[PageID] [int] NOT NULL,
	[DataPropertyID] [int] NOT NULL,
	[DataPropertyValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_PageDataPropertyValue] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC,
	[DataPropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages]') AND type in (N'U'))
BEGIN
CREATE TABLE [Pages](
	[PageId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[URL] [nvarchar](100) NULL,
	[Title] [nvarchar](256) NULL,
	[Header] [nvarchar](256) NULL,
	[SmallDescription] [nvarchar](512) NULL,
	[PageContent] [ntext] NULL,
	[Status] [tinyint] NULL,
	[Language] [smallint] NULL,
	[PageFile] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[PublishDate] [datetime] NULL,
	[Ranking] [int] NULL,
	[Views] [int] NULL,
	[UserRating] [int] NULL,
	[History] [xml] NULL,
	[PageType] [int] NULL,
	[PageTemplate] [int] NULL,
	[IsSecure] [bit] NULL,
	[Tags] [nvarchar](256) NULL,
	[AccessRoles] [int] NULL,
	[EditingRoles] [int] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageTemplates]') AND type in (N'U'))
BEGIN
CREATE TABLE [PageTemplates](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Filename] [varchar](50) NULL,
 CONSTRAINT [PK_PageTemplates] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [PageTypes](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[ThumbSize] [varchar](50) NULL,
	[MediumSize] [varchar](50) NULL,
	[LargeSize] [varchar](50) NULL,
 CONSTRAINT [PK_PageTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbumImages]') AND type in (N'U'))
BEGIN
CREATE TABLE [PhotoAlbumImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlbumId] [int] NULL,
	[Sort] [int] NULL,
	[Caption] [nvarchar](250) NULL,
	[FileName] [varchar](150) NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_PhotoAlbumImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbumRelations]') AND type in (N'U'))
BEGIN
CREATE TABLE [PhotoAlbumRelations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlbumId] [int] NULL,
	[RelateToId] [int] NULL,
	[Section] [int] NULL,
 CONSTRAINT [PK_PhotoAlbumRelations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbums]') AND type in (N'U'))
BEGIN
CREATE TABLE [PhotoAlbums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[DisplayName] [nvarchar](150) NULL,
	[Description] [nvarchar](512) NULL,
	[Status] [bit] NULL,
	[Sort] [int] NULL,
	[Image] [varchar](150) NULL,
	[HasIntroPage] [bit] NULL,
	[CategoryId] [int] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[Language] [smallint] NULL,
	[AlbumDate] [datetime] NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbumsCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [PhotoAlbumsCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NULL,
	[UniqueName] [nvarchar](150) NULL,
	[Language] [smallint] NULL,
 CONSTRAINT [PK_PhotoAlbumsCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoAlbumsNetwork]') AND type in (N'U'))
BEGIN
CREATE TABLE [PhotoAlbumsNetwork](
	[NetworkId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Role] [int] NULL,
	[Prefered] [bit] NULL,
 CONSTRAINT [PK_PhotoAlbumsNetwork] PRIMARY KEY CLUSTERED 
(
	[NetworkId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollAnswers]') AND type in (N'U'))
BEGIN
CREATE TABLE [PollAnswers](
	[PollAnswerID] [int] IDENTITY(1,1) NOT NULL,
	[PollID] [int] NOT NULL,
	[DisplayText] [nvarchar](500) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[Correct] [bit] NULL,
 CONSTRAINT [PK_PollAnswers] PRIMARY KEY CLUSTERED 
(
	[PollAnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollFraud]') AND type in (N'U'))
BEGIN
CREATE TABLE [PollFraud](
	[FraudId] [int] IDENTITY(1,1) NOT NULL,
	[IpAddress] [varchar](20) NULL,
	[EmailDomain] [varchar](100) NULL,
	[MemberId] [int] NULL,
 CONSTRAINT [PK_PollFraud] PRIMARY KEY CLUSTERED 
(
	[FraudId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [PollOptions](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NULL,
	[OptionText] [varchar](256) NULL,
	[Ordering] [int] NULL,
 CONSTRAINT [PK_PollOptions] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollQuestions]') AND type in (N'U'))
BEGIN
CREATE TABLE [PollQuestions](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[PollId] [int] NULL,
	[Question] [varchar](256) NULL,
	[Ordering] [int] NULL,
 CONSTRAINT [PK_PollQuestions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollResults]') AND type in (N'U'))
BEGIN
CREATE TABLE [PollResults](
	[ResultId] [int] IDENTITY(1,1) NOT NULL,
	[OptionId] [int] NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[ValidationText] [varchar](50) NULL,
	[Validated] [bit] NULL,
	[MemberId] [int] NULL,
	[VoteDate] [datetime] NULL,
	[IpAddress] [varchar](20) NULL,
 CONSTRAINT [PK_PollResults] PRIMARY KEY CLUSTERED 
(
	[ResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Polls]') AND type in (N'U'))
BEGIN
CREATE TABLE [Polls](
	[PollID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayText] [nvarchar](500) NOT NULL,
	[UniqueName] [nvarchar](250) NULL,
	[IsDefault] [bit] NULL,
	[Category] [nvarchar](25) NULL,
	[Difficulty] [smallint] NULL,
	[Reference] [nvarchar](50) NULL,
	[Day] [smallint] NULL,
	[Week] [smallint] NULL,
	[Year] [smallint] NULL,
	[Picture] [varchar](150) NULL,
	[AdditionalText] [nvarchar](512) NULL,
	[UID] [uniqueidentifier] NULL,
	[PollNbr] [int] NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[MemberId] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Polls] PRIMARY KEY CLUSTERED 
(
	[PollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PollsUserResponses]') AND type in (N'U'))
BEGIN
CREATE TABLE [PollsUserResponses](
	[UserID] [uniqueidentifier] NOT NULL,
	[PollAnswerID] [int] NOT NULL,
	[TextAnswer] [nvarchar](512) NULL,
 CONSTRAINT [PK_PollsUserResponses] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[PollAnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ShoppingItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [ShoppingItems](
	[ShoppingItemId] [int] IDENTITY(1,1) NOT NULL,
	[OptionsKey] [varchar](20) NULL,
	[OrderId] [int] NULL,
	[ItemId] [int] NULL,
	[Title] [nvarchar](100) NULL,
	[ItemNumber] [nvarchar](50) NULL,
	[Quantity] [decimal](10, 4) NULL,
	[UnitPrice] [money] NULL,
	[OtherCharges] [money] NULL,
	[Description] [ntext] NULL,
	[Discount] [money] NULL,
	[Tax] [money] NULL,
	[Total] [money] NULL,
	[Options] [nvarchar](50) NULL,
	[Xml] [ntext] NULL,
	[PriceFor] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShoppingItems] PRIMARY KEY CLUSTERED 
(
	[ShoppingItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SocialMediaPost]') AND type in (N'U'))
BEGIN
CREATE TABLE [SocialMediaPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PageId] [int] NULL,
	[DatePosted] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_SocialMediaPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Templates]') AND type in (N'U'))
BEGIN
CREATE TABLE [Templates](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[TemplateFile] [nvarchar](100) NULL,
	[TemplateXml] [ntext] NULL,
 CONSTRAINT [PK_Templates] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Universities]') AND type in (N'U'))
BEGIN
CREATE TABLE [Universities](
	[UniversityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[UniqueName] [nvarchar](256) NULL,
	[CountryId] [int] NULL,
	[RegionId] [int] NULL,
	[Website] [nvarchar](256) NULL,
	[LastModified] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Universities] PRIMARY KEY CLUSTERED 
(
	[UniversityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[VideoCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [VideoCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[UniqueName] [nvarchar](150) NULL,
	[ThumbWidth] [smallint] NULL,
	[ThumbHeight] [smallint] NULL,
	[ThumbSize]  AS ((CONVERT([varchar],[thumbwidth],(0))+' x ')+CONVERT([varchar],[thumbheight],(0))),
	[Status] [bit] NULL,
 CONSTRAINT [PK_VideoCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Videos]') AND type in (N'U'))
BEGIN
CREATE TABLE [Videos](
	[VideoId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Status] [tinyint] NULL,
	[Object] [ntext] NULL,
	[Description] [ntext] NULL,
	[CategoryId] [int] NULL,
	[CreatorId] [int] NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[UniqueName] [nvarchar](150) NULL,
	[ThumbImage] [nvarchar](150) NULL,
	[ModifierId] [int] NULL,
	[Language] [smallint] NULL,
	[VideoFile] [nvarchar](150) NULL,
	[VideoLength] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[VideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Widgets]') AND type in (N'U'))
BEGIN
CREATE TABLE [Widgets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PageId] [int] NOT NULL,
	[Status] [tinyint] NULL,
	[Type] [int] NULL,
	[Title] [nvarchar](150) NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Widgets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemInventoryByOption]'))
EXEC dbo.sp_executesql @statement = N'Create View [ItemInventoryByOption]
as
select ItemId, Sum(Inventory) as Inventory 
from 
ItemOptionsInventory
Group BY ItemId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [ItemsView]
AS
SELECT     IC.CategoryId, C.Title AS CategoryName, I.ItemId, I.ProductNumber, I.Title, I.Keywords, I.BrandId, I.Status, I.Price, I.Image1, I.Image2, I.Image3, 
                      I.Image4, I.DateCreated, I.LastModified, I.SmallDescription, I.LargeDescription, I.ThumbImage, I.ResellerPrice, I.StockQuantity, I.ShippingHeight, 
                      I.ShippingLength, I.DownloadableFile, dbo.Brands.Title AS Brand, I.ShippingWidth, I.ShippingWeight, ISNULL(ISNULL(O.Inventory, I.StockQuantity), 0) 
                      AS Inventory, I.Warranty, I.Packaging, I.Ranking, I.UserRating, I.Views, I.SalePrice, I.UniqueName, I.Website, I.Template
FROM         dbo.Items AS I LEFT OUTER JOIN
                      dbo.Brands ON I.BrandId = dbo.Brands.BrandId LEFT OUTER JOIN
                      dbo.ItemCategories AS IC ON I.ItemId = IC.ItemId LEFT OUTER JOIN
                      dbo.Categories AS C ON IC.CategoryId = C.CategoryId LEFT OUTER JOIN
                      dbo.ItemInventoryByOption AS O ON I.ItemId = O.ItemId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemsInventory]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [ItemsInventory]
AS
SELECT     I.ItemId, I.Title, I.ProductNumber, I.Price, I.ResellerPrice, I.BrandId, I.Status, I.LastModified, ISNULL(ISNULL(O.Inventory, I.StockQuantity), 0) 
                      AS Inventory, I.UniqueName
FROM         dbo.Items AS I LEFT OUTER JOIN
                      dbo.ItemInventoryByOption AS O ON I.ItemId = O.ItemId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CategoryParentsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [CategoryParentsView]
AS
SELECT     c.*, p.Title AS Parent
FROM         dbo.Categories c LEFT OUTER JOIN
                      dbo.Categories p ON c.ParentId = p.CategoryId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CategoriesView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [CategoriesView]
AS
SELECT     c.*, ISNULL(cp.ChildrenCount, 0) AS ChildrenCount
FROM         dbo.CategoryParentsView c LEFT OUTER JOIN
                          (SELECT     ParentId, COUNT(CategoryId) AS ChildrenCount
                            FROM          Categories
                            GROUP BY ParentId) cp ON c.CategoryId = cp.ParentId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Pages_View]'))
EXEC dbo.sp_executesql @statement = N'
Create View [Pages_View]
as
SELECT        P.PageId, P.ParentId, P.URL, P.Title, P.Header, P.SmallDescription, P.PageContent, P.Status, P.Language, P.PageFile, P.Image, P.CreatedBy, P.ModifiedBy, P.DateCreated, P.DateModified, P.PublishDate, 
                         P.Ranking, P.Views, P.UserRating, P.History, P.PageType, P.PageTemplate, dbo.Pages_GetPath(P.PageId) AS FullURL, P1.Title AS ParentTitle, PT.Title AS Template, PT.Filename AS TemplateFileName, 
                         P.IsSecure, P.Tags, P.AccessRoles, P.EditingRoles
FROM            dbo.Pages AS P LEFT OUTER JOIN
                         dbo.Pages AS P1 ON P.ParentId = P1.PageId LEFT OUTER JOIN
                         dbo.PageTemplates AS PT ON P.PageTemplate = PT.TemplateId' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Pages_View_Comments]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [Pages_View_Comments]
AS
SELECT        pv.PageId, pv.ParentId, pv.URL, pv.Title, pv.Header, pv.SmallDescription, pv.PageContent, pv.Status, pv.Language, pv.PageFile, pv.Image, pv.CreatedBy, pv.CreatedBy AS MemberId, pv.ModifiedBy, 
                         pv.DateCreated, pv.DateModified, pv.PublishDate, pv.Ranking, pv.Views, pv.UserRating, pv.History, pv.PageType, pv.PageTemplate, pv.FullURL, pv.ParentTitle, pv.Template, pv.TemplateFileName, 
                         C.CommentsCount, M.UserName, M.FirstName, M.LastName, M.FirstName + '' '' + M.LastName AS Name, M.Picture, M.Privacy, pv.IsSecure
FROM            dbo.Pages_View AS pv LEFT OUTER JOIN
                             (SELECT        COUNT(*) AS CommentsCount, RelationId AS PageId
                               FROM            dbo.Comments_Pages
                               GROUP BY RelationId) AS C ON pv.PageId = C.PageId LEFT OUTER JOIN
                         dbo.Members AS M ON M.MemberId = pv.CreatedBy
' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [MemberView]
AS
SELECT        m.Geuid, m.memberid, m.UserName, m.Password, m.Status, m.Email, m.DateCreated, m.LastModified, m.LastLogin, m.Online, m.SecretQuestion, m.SecretQuestionAnswer, m.FirstName + ''  '' + m.LastName AS Name, 
                         m.FirstName, m.MiddleName, m.LastName, m.DateOfBirth, m.Picture, m.Privacy, m.Title, m.Gender, m.AlternateEmail, m.FullName, mp.Phone, mp.Mobile, mp.Address
FROM            dbo.Members AS m LEFT OUTER JOIN
                         dbo.MemberProfile AS mp ON m.MemberId = mp.MemberId
' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Chat_Conversation_Messages_View]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [Chat_Conversation_Messages_View]
AS
SELECT     C.MessageId, C.FromId, C.ConversationId, C.Message, C.TimeStamp, M.MemberId, M.UserName, M.Email, M.FullName
FROM         dbo.chat_conversation_messages AS C INNER JOIN
                      dbo.MemberView AS M ON C.FromId = M.MemberId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Chat_Conversations_From_User]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [Chat_Conversations_From_User]
AS
SELECT     cu1.ConversationId, cu1.UserId AS UserId1, cu2.UserId AS UserId2, dbo.getChatConversationUsersCount(cu1.ConversationId) AS UsersCount, M2.UserName, 
                      M2.FullName AS Name, M2.LastLogin
FROM         dbo.chat_conversation_users AS cu1 INNER JOIN
                      dbo.chat_conversation_users AS cu2 ON cu1.ConversationId = cu2.ConversationId AND cu1.UserId <> cu2.UserId LEFT OUTER JOIN
                      dbo.MemberView AS M2 ON cu2.UserId = M2.MemberId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VoteCount]'))
EXEC dbo.sp_executesql @statement = N'create view [VoteCount]
as
SELECT     OptionId, COUNT(OptionId) AS Votes
FROM         dbo.PollResults
WHERE     (Validated = 1)
GROUP BY OptionId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VoteCountQuestion]'))
EXEC dbo.sp_executesql @statement = N'create view [VoteCountQuestion]
as
select o.OptionId,o.QuestionId,o.OptionText,o.Ordering,isnull(c.votes,0) vote from polloptions o
left outer join VoteCount c on
o.OptionId = c.OptionId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollTotalVotes]'))
EXEC dbo.sp_executesql @statement = N'create view [PollTotalVotes]
as
select QuestionId,sum(vote) as TotalVotes from VoteCountQuestion
group by questionid


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollQuestionsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [PollQuestionsView]
AS
SELECT     q.*, ISNULL(v.TotalVotes, 0) AS TotalVotes
FROM         PollQuestions q LEFT OUTER JOIN
                      PollTotalVotes v ON q.QuestionId = v.QuestionId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollResultsView]'))
EXEC dbo.sp_executesql @statement = N'create view [PollResultsView] 
as 
SELECT     v.*, p.TotalVotes, CASE (TotalVotes) WHEN 0 THEN 0 ELSE cast((100 * CONVERT(decimal, vote) / CONVERT(decimal, TotalVotes)) AS decimal) 
                      END AS Percentage
FROM         VoteCountQuestion v INNER JOIN
                      PollTotalVotes p ON v.questionid = p.questionid


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NetworksParentsView]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [NetworksParentsView]
AS
SELECT     n.NetworkId, n.Name, n.Description, n.UniqueName, n.ParentId, n.DateCreated, n.LastModified, n.OperatorId, n.Website, n.XmlField, n.Picture, n.Status, 
                      p.Name AS Parent, p.UniqueName AS ParentUniqueName
FROM         dbo.Networks AS n LEFT OUTER JOIN
                      dbo.Networks AS p ON n.ParentId = p.NetworkId



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NetworksView]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [NetworksView]
AS
SELECT     n.NetworkId, n.Name, n.Description, n.UniqueName, n.ParentId, n.DateCreated, n.LastModified, n.OperatorId, n.Website, n.XmlField, n.Picture, n.Parent, 
                      n.ParentUniqueName, ISNULL(p.ChildrenCount, 0) AS ChildrenCount, n.Status
FROM         dbo.NetworksParentsView AS n LEFT OUTER JOIN
                          (SELECT     ParentId, COUNT(NetworkId) AS ChildrenCount
                            FROM          dbo.Networks
                            GROUP BY ParentId) AS p ON n.NetworkId = p.ParentId



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Ads_ReportsView]'))
EXEC dbo.sp_executesql @statement = N'Create view 
[Ads_ReportsView]
as
select sum(Exposures) as Impressions,
	sum(Clicks) as Clicks,
	AdId
from Ads_Reports group by AdId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AdsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [AdsView]
AS
SELECT     dbo.Ads.AdId, dbo.Ads.Name, dbo.Ads.AdvertiserId, dbo.Ads.Status, dbo.Ads.ZoneId, dbo.Ads.StartDate, dbo.Ads.EndDate, dbo.Ads.PaymentType, 
                      dbo.Ads.UnitsPurchased, dbo.Ads.CostPerUnit, dbo.Ads.Image, dbo.Ads.Description, dbo.Ads.HtmlCode, dbo.Ads.URL, dbo.Ads.NewWindow, dbo.Ads.Weight, 
                      dbo.Ads.MaxImpressionPerHour, dbo.Ads.MaxImpressionPerDay, dbo.Ads.DateCreated, dbo.Ads.DateModified, z.Name AS ZoneName, ISNULL(rep.Impressions, 0) 
                      AS Impressions, ISNULL(rep.Clicks, 0) AS Clicks
FROM         dbo.Ads LEFT OUTER JOIN
                      dbo.Ads_Zones AS z ON z.ZoneId = dbo.Ads.ZoneId LEFT OUTER JOIN
                      dbo.Ads_ReportsView AS rep ON rep.AdId = dbo.Ads.AdId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[FriendsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [FriendsView]
AS
SELECT     f.MemberId AS MyId, f.Status, f.GroupId, f.Sorting, f.DateAdded, m.Online, m.Name, m.Picture, m.Privacy, f.FriendId, m.MemberId
FROM         dbo.MemberView AS m INNER JOIN
                      dbo.Friends AS f ON m.MemberId = f.FriendId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsView]'))
EXEC dbo.sp_executesql @statement = N'Create View [NewsView]
as
SELECT        n.NewsId, n.Title, n.Status, n.Header, n.NewsText, n.NewsDate, n.NewsType, n.NewsLanguage, nt.Name AS TypeName, n.NewsFile, 
                         nt.UniqueName AS TypeUniqueName, n.UniqueName, n.ThumbImage, n.LargeImage, n.CreatorId, n.ModifierId, n.DateAdded, n.DateModified, 
                         m.UserName AS Creator, m1.UserName AS Modifier, n.MediumImage, n.Ranking, n.Views, n.UserRating, n.PublishDate, nt.Path AS TypePath, 
                         nt.Path + ''/'' + n.UniqueName AS Path, n.draft
FROM            dbo.News AS n LEFT OUTER JOIN
                         dbo.NewsTypes AS nt ON n.NewsType = nt.TypeId LEFT OUTER JOIN
                         dbo.Members AS m ON n.CreatorId = m.MemberId LEFT OUTER JOIN
                         dbo.Members AS m1 ON n.ModifierId = m1.MemberId
' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsDateView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [NewsDateView]
AS
SELECT     CAST(DATENAME(m, Month) AS varchar) + '' '' + CAST(DATEPART(yyyy, Month) AS varchar) AS NewsMonthName, CAST(DATEPART(m, Month) AS varchar) 
                      + ''/1/'' + CAST(DATEPART(yyyy, Month) AS varchar) AS NewsMonth, Month, NewsType, TypeUniqueName, NewsLanguage
FROM         (SELECT     DATEADD(m, MonthOffset, 0) AS Month, NewsType, TypeUniqueName, NewsLanguage
                       FROM          (SELECT     DATEDIFF(m, 0, NewsDate) AS MonthOffset, NewsType, TypeUniqueName, NewsLanguage
                                               FROM          dbo.NewsView
                                               WHERE      (Status <> 0)) AS x
                       GROUP BY MonthOffset, NewsType, TypeUniqueName, NewsLanguage) AS v


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsTypesParentsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [NewsTypesParentsView]
AS
SELECT     n.TypeId, n.Name, n.UniqueName, n.Status, n.Image, n.Description, n.ParentId, n.TemplateId, n.DateCreated, n.LastModified, n.Ranking, n.Views, n.UserRating, 
                      n.ThumbWidth, n.ThumbHeight, n.ThumbSize, n.ThumbResizeOption, n.LargeWidth, n.LargeHeight, n.LargeSize, n.LargeResizeOption, n.MediumWidth, 
                      n.MediumHeight, n.MediumSize, n.MediumResizeOption, n.Permission, p.Name AS Parent, p.UniqueName AS ParentUniqueName
FROM         dbo.NewsTypes AS n LEFT OUTER JOIN
                      dbo.NewsTypes AS p ON n.ParentId = p.TypeId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsTypesView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [NewsTypesView]
AS
SELECT     n.TypeId, n.Name, n.UniqueName, n.Status, n.Image, n.Description, n.ParentId, n.TemplateId, n.DateCreated, n.LastModified, n.Ranking, n.Views, n.UserRating, 
                      n.ThumbWidth, n.ThumbHeight, n.ThumbSize, n.ThumbResizeOption, n.LargeWidth, n.LargeHeight, n.LargeSize, n.LargeResizeOption, n.MediumWidth, 
                      n.MediumHeight, n.MediumSize, n.MediumResizeOption, n.Permission, n.Parent, ISNULL(p.ChildrenCount, 0) AS ChildrenCount, n.ParentUniqueName, 
                      dbo.GetNewsTypePath(n.TypeId) AS Path
FROM         dbo.NewsTypesParentsView AS n LEFT OUTER JOIN
                          (SELECT     ParentId, COUNT(TypeId) AS ChildrenCount
                            FROM          dbo.NewsTypes
                            GROUP BY ParentId) AS p ON n.TypeId = p.ParentId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ArrayToTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- ================================================
-- creates a table from an array created by dbo.array
-- ================================================
CREATE FUNCTION [ArrayToTable]
(	
@TheArray xml 
)
RETURNS TABLE 
AS
RETURN 
(
SELECT   x.y.value(''seqno[1]'', ''INT'') AS [seqno],
		 x.y.value(''item[1]'', ''VARCHAR(200)'') AS [item]
FROM     @TheArray.nodes(''//stringarray/element'') AS x (y)
)


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AlbumsFullView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [AlbumsFullView]
AS
SELECT     album.Id, album.Name, album.DisplayName, album.Description, album.Status, album.Sort, album.Image, album.HasIntroPage, album.CategoryId, album.DateAdded, 
                      album.DateModified, ISNULL(img.ImageCount, 0) AS ImageCount, categories.CategoryName, categories.UniqueName, album.AlbumDate, album.Language
FROM         dbo.PhotoAlbums AS album LEFT OUTER JOIN
                          (SELECT     AlbumId, COUNT(*) AS ImageCount
                            FROM          dbo.PhotoAlbumImages
                            GROUP BY AlbumId) AS img ON album.Id = img.AlbumId LEFT OUTER JOIN
                      dbo.PhotoAlbumsCategories AS categories ON POWER(2, categories.CategoryId) & album.CategoryId = POWER(2, categories.CategoryId)


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AlbumsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [AlbumsView]
AS
SELECT     album.Id, album.Name, album.DisplayName, album.Description, album.Status, album.Sort, album.Image, album.HasIntroPage, album.CategoryId, album.DateAdded, 
                      album.DateModified, album.Language, categories.UniqueName, ISNULL(img.ImageCount, 0) AS ImageCount, categories.CategoryName, album.AlbumDate
FROM         dbo.PhotoAlbums AS album LEFT OUTER JOIN
                          (SELECT     AlbumId, COUNT(*) AS ImageCount
                            FROM          dbo.PhotoAlbumImages
                            GROUP BY AlbumId) AS img ON album.Id = img.AlbumId LEFT OUTER JOIN
                      dbo.PhotoAlbumsCategories AS categories ON album.CategoryId = categories.CategoryId AND album.Language = categories.Language


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CalendarView]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [CalendarView]
AS
SELECT        Id, DateFrom, DateTo, Time, Title, Location, Status, Description, CategoryId, UserId, LastModified, Language, Image
FROM            dbo.Calendar AS c

' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[chat_conversation_users_view]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [chat_conversation_users_view]
AS
SELECT     cu1.ConversationId, cu1.UserId AS UserId1, cu2.UserId AS UserId2, dbo.getChatConversationUsersCount(cu1.ConversationId) AS UsersCount
FROM         dbo.chat_conversation_users AS cu1 INNER JOIN
                      dbo.chat_conversation_users AS cu2 ON cu1.ConversationId = cu2.ConversationId AND cu1.UserId <> cu2.UserId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[chat_message_view]'))
EXEC dbo.sp_executesql @statement = N'create view [chat_message_view]
as
select cm.MessageId,cm.RoomId,cm.MemberId,cm.Message,m.UserName from chat_message cm inner join members m
on cm.MemberId = m.MemberId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Comments_Tables_View]'))
EXEC dbo.sp_executesql @statement = N'create view [Comments_Tables_View]
as

select ct.*,m.UserName, m.Email from Comments_Tables ct left outer join 
Members m on ct.AdminId = m.MemberId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CountryRegionUniversityCount]'))
EXEC dbo.sp_executesql @statement = N'Create View [CountryRegionUniversityCount]
as
select CC.CountryId as CountryId, CC.Name as Country, C.CountryId as RegionId, C.Name as Region, UCount from Countries C 
inner Join
(select count(*)as UCount, RegionId from Universities
group by RegionId) as U
on C.CountryId = U.RegionId 
Inner Join Countries CC on
C.TopParent = CC.CountryId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[CountryUniversityCount]'))
EXEC dbo.sp_executesql @statement = N'Create View [CountryUniversityCount]
as
select C.CountryId as CountryId, C.Name as Country, UCount from Countries C 
inner Join
(select count(*)as UCount, CountryId from Universities
group by CountryId) as U
on C.CountryId = U.CountryId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[DownloadsByDate]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [DownloadsByDate]
AS
SELECT     CAST(DATENAME(m, Month) AS varchar) + '' '' + CAST(DATEPART(yyyy, Month) AS varchar) AS DownloadMonthName, CAST(DATEPART(m, Month) AS varchar) 
                      + ''/1/'' + CAST(DATEPART(yyyy, Month) AS varchar) AS ASDownloadMonth, Month
FROM         (SELECT     DATEADD(m, MonthOffset, 0) AS Month
                       FROM          (SELECT     DATEDIFF(m, 0, DateAdded) AS MonthOffset
                                               FROM          dbo.Downloads) AS x
                       GROUP BY MonthOffset) AS v


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[DownloadsView]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [DownloadsView]
AS
SELECT     d.DownloadId, d.Title, d.Description, d.DateAdded, d.DateModified, d.DownloadType, d.FileName, d.FileSize, d.Status, dt.Type, dt.UniqueName, 
                      ISNULL(dm.DownloadCount, 0) AS DownloadCount, d.Sort
FROM         dbo.Downloads AS d LEFT OUTER JOIN
                          (SELECT     DownloadId, COUNT(*) AS DownloadCount
                            FROM          dbo.Downloads_MembersActivity
                            GROUP BY DownloadId) AS dm ON d.DownloadId = dm.DownloadId LEFT OUTER JOIN
                      dbo.DownloadTypes AS dt ON d.DownloadType = dt.TypeId



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GiftVoucherOrders]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [GiftVoucherOrders]
AS
SELECT     dbo.GiftVouchers.VoucherId, dbo.GiftVouchers.VoucherCode, dbo.GiftVouchers.Amount, dbo.GiftVouchers.Status, dbo.GiftVouchers.DateCreated, 
                      dbo.GiftVouchers.OrderId, dbo.GiftVouchers.ToName, dbo.GiftVouchers.ToEmail, dbo.Orders.OrderVisualId, dbo.Orders.FirstName, dbo.Orders.LastName, 
                      dbo.Orders.Email, dbo.Orders.Comments
FROM         dbo.GiftVouchers INNER JOIN
                      dbo.Orders ON dbo.GiftVouchers.OrderId = dbo.Orders.OrderId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GroupMembersCount]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [GroupMembersCount]
AS
SELECT     COUNT(MemberID) AS membercount, GroupID
FROM         dbo.GroupsMembers
WHERE     (Status = 1)
GROUP BY GroupID


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GroupsMembersView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [GroupsMembersView]
AS
SELECT     M.MemberId, M.Geuid, M.UserName, M.Status, M.FirstName, M.LastName, M.FirstName + '' '' + M.LastName AS Name, M.Online, M.Picture, M.Privacy, M.Email, 
                      GM.GroupID, GM.MemberLevel, GM.Status AS MemberStatus, GM.DateJoined, G.Name AS GroupName, G.UniqueName, G.Type, G.MembershipApproval, 
                      G.Status AS GroupStatus, G.CreatorID
FROM         dbo.Members AS M WITH (NOLOCK) INNER JOIN
                      dbo.GroupsMembers AS GM WITH (NOLOCK) ON M.MemberId = GM.MemberID INNER JOIN
                      dbo.Groups AS G WITH (NOLOCK) ON GM.GroupID = G.ID


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GroupsNetworkView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [GroupsNetworkView]
AS
SELECT     G.ID, G.Guid, G.Name, G.UniqueName, G.CreatorID, G.Address, G.Phone, G.City, G.Region, G.Country, G.University, G.Picture, G.Privacy, G.MembershipApproval, 
                      G.Description, G.Mission, G.Security, G.Type, G.LegalStatus, G.DateCreated, G.DateModified, G.Status, GN.NetworkId, N.Name AS GroupNetworkName, 
                      N.UniqueName AS GroupNetworkUniqueName
FROM         dbo.Groups AS G LEFT OUTER JOIN
                      dbo.GroupsNetwork AS GN ON G.ID = GN.GroupId LEFT OUTER JOIN
                      dbo.Networks AS N ON GN.NetworkId = N.NetworkId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[GroupsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [GroupsView]
AS
SELECT     G.ID, G.Guid, G.Name, G.UniqueName, G.CreatorID, G.City, G.Region, G.Country, G.University, G.Picture, G.Privacy, G.MembershipApproval, G.Description, G.Mission, 
                      G.Security, G.Type, G.LegalStatus, G.DateCreated, G.DateModified, G.Status, GM.MemberLevel, GM.Status AS MemberStatus, GM.MemberID, GM.DateJoined, 
                      G.Address, G.Phone, N.NetworkId, N.Name AS GroupNetworkName, N.UniqueName AS GroupNetworkUniqueName
FROM         dbo.Groups AS G LEFT OUTER JOIN
                      dbo.GroupsMembers AS GM ON G.ID = GM.GroupID LEFT OUTER JOIN
                      dbo.GroupsNetwork AS GN ON G.ID = GN.GroupId LEFT OUTER JOIN
                      dbo.Networks AS N ON GN.NetworkId = N.NetworkId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[HashTagRelationView]'))
EXEC dbo.sp_executesql @statement = N'Create View [HashTagRelationView] as
select ht.*,htr.RelateTo, htr.RelationType from HashTags_Relations htr
inner Join HashTags ht on 
htr.TagId = ht.TagId
' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[HashTagsView]'))
EXEC dbo.sp_executesql @statement = N'Create View [HashTagsView]
as
select ht.*,t.Count from HashTags ht
inner Join (select count(*) as [Count], TagId from HashTags_Relations group by TagId) t
on ht.TagId = t.TagId
' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemOptionsInventoryView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [ItemOptionsInventoryView]
AS
SELECT     ItemId, [Key], Inventory, IsDefault, REPLACE(dbo.GetOptionNames([Key]), ''|'', '', '') AS OptionNames
FROM         dbo.ItemOptionsInventory


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemOptionsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [ItemOptionsView]
AS
SELECT     C.ChoiceId, C.Name, O.value, I.ItemId, I.OptionId, I.DisplayOnSite, O.Sorting
FROM         dbo.ItemOptions AS I INNER JOIN
                      dbo.ItemChoicesOptions AS O ON I.OptionId = O.OptionId INNER JOIN
                      dbo.ItemChoices AS C ON C.ChoiceId = O.ChoiceId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemPackagesView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [ItemPackagesView]
AS
SELECT     IP.ItemId, IP.ItemId1, IP.QTY, IP.Sort, I.Title, I.ProductNumber, I1.Title AS Title1, I1.ProductNumber AS ProductNumber1, I.Price, I1.Price AS Price1
FROM         dbo.ItemPackages AS IP INNER JOIN
                      dbo.Items AS I ON IP.ItemId = I.ItemId INNER JOIN
                      dbo.Items AS I1 ON IP.ItemId1 = I1.ItemId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ItemsFullView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [ItemsFullView]
AS
SELECT     I.ItemId, I.ProductNumber, I.Title, dbo.GetOptionNames(ioi.[Key]) AS Options, ISNULL(ISNULL(ioi.Inventory, I.StockQuantity), 0) AS Inventory, I.Status, 
                      I.Price, I.SalePrice, I.ResellerPrice, I.Warranty, I.Packaging, I.Ranking, I.UserRating, I.Views, dbo.GetCategories(I.ItemId) AS Categories, 
                      dbo.Brands.Title AS Brand, I.SmallDescription, I.LargeDescription, I.Image1, I.Image2, I.Image3, I.Image4, I.DateCreated, I.LastModified, I.ThumbImage,
                       I.ShippingHeight, I.ShippingLength, I.DownloadableFile, I.ShippingWidth, I.ShippingWeight, ioi.[Key] AS OptionsKey, ioi.IsDefault, dbo.Brands.BrandId, 
                      I.UniqueName, I.Website, I.Template
FROM         dbo.Items AS I LEFT OUTER JOIN
                      dbo.Brands ON I.BrandId = dbo.Brands.BrandId LEFT OUTER JOIN
                      dbo.ItemOptionsInventory AS ioi ON I.ItemId = ioi.ItemId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MediaWidgetsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [MediaWidgetsView]
AS
SELECT        M.Id AS MediaId, M.Caption, M.MediaFile, M.MediaObject, M.Status AS MediaStatus, M.DateAdded AS MediaDateAdded, M.DateModified AS MediaDateModified, M.ExpirationDate AS MediaExpiratinDate, 
                         M.CreatedBy AS MediaCreatedBy, M.ModifiedBy AS MediaModifiedBy, M.Tags, W.PageId, W.Type, W.Title, W.Status AS WidgetStatus, W.DateAdded AS WidgetDateAdded, 
                         W.DateModified AS WidgetDateModified, W.ExpirationDate AS WidgetExpirationDate, W.CreatedBy AS WidgetCreatedBy, W.ModifiedBy AS WidgetModifiedBy, M.Sort
FROM            dbo.Media AS M INNER JOIN
                         dbo.MediaWidgets AS MW ON M.Id = MW.MediaId RIGHT OUTER JOIN
                         dbo.Widgets AS W ON MW.WidgetId = W.Id
' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberEducationView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [MemberEducationView]
AS
SELECT     M.EducationId, M.MemberId, M.CountryId, M.RegionId, M.City, M.UniversityId, M.Name, M.Degree, M.Major, M.DateFrom, M.DateTo, M.Note, M.Type, M.Privacy, 
                      U.Name AS UniversityName, C.Name AS CountryName, CC.Name AS RegionName, M.Minor
FROM         dbo.MemberEducation AS M LEFT OUTER JOIN
                      dbo.Universities AS U ON M.UniversityId = U.UniversityId LEFT OUTER JOIN
                      dbo.Countries AS C ON C.CountryId = M.CountryId LEFT OUTER JOIN
                      dbo.Countries AS CC ON CC.CountryId = M.RegionId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberLocationView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [MemberLocationView]
AS
SELECT     ml.LocationId, ml.MemberId, ml.Address, ml.City, ml.RegionId, ml.PostalCode, ml.CountryId, ml.Privacy, ml.AddressType, R.Name AS Region, 
                      C.Name AS Country
FROM         dbo.MemberLocation AS ml INNER JOIN
                      dbo.Countries AS R ON ml.RegionId = R.CountryId INNER JOIN
                      dbo.Countries AS C ON ml.CountryId = C.CountryId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberNetworksCountView]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [MemberNetworksCountView]
AS
SELECT     N.NetworkId, N.Name, N.Description, N.UniqueName, N.ParentId, N.DateCreated, N.LastModified, N.OperatorId, N.Website, N.XmlField, N.Picture, MN.MembersCount
FROM         dbo.Networks AS N INNER JOIN
                          (SELECT     NetworkId, COUNT(MemberId) AS MembersCount
                            FROM          dbo.MemberNetworks
                            GROUP BY NetworkId) AS MN ON MN.NetworkId = N.NetworkId

' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[MemberNetworksView]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [MemberNetworksView]
AS
SELECT     m.MemberId, n.NetworkId, n.Name, n.UniqueName, m.Geuid, m.UserName, m.Password, m.Status, m.Title, m.FirstName, m.MiddleName, m.LastName, m.Gender, 
                      m.Email, m.AlternateEmail, m.DateOfBirth, m.DateCreated, m.LastModified, m.LastLogin, m.Online, m.Picture, m.Privacy, m.PasswordChangeDate, mn.Prefered, 
					  n.Description

FROM         dbo.Members AS m INNER JOIN
                      dbo.MemberNetworks AS mn ON mn.MemberId = m.MemberId INNER JOIN
                      dbo.Networks AS n ON mn.NetworkId = n.NetworkId



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Members_LoginActivity_View]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [Members_LoginActivity_View]
AS
SELECT     dbo.Members.MemberId, dbo.Members.Geuid, dbo.Members.UserName, dbo.Members.Password, dbo.Members.Status, dbo.Members.Title, dbo.Members.FirstName, 
                      dbo.Members.MiddleName, dbo.Members.LastName, dbo.Members.Gender, dbo.Members.Email, dbo.Members.Online, dbo.Members.PasswordChangeDate, 
                      dbo.Members_LoginActivity.IpAddress, dbo.Members_LoginActivity.LoggedInDate, dbo.Members.AlternateEmail, dbo.Members_LoginActivity.Id
FROM         dbo.Members_LoginActivity INNER JOIN
                      dbo.Members ON dbo.Members_LoginActivity.MemberId = dbo.Members.MemberId



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsletterView]'))
EXEC dbo.sp_executesql @statement = N'Create View [NewsletterView]
as
SELECT     n.UserId, n.Name, n.Email, n.Gender, n.GroupId, n.AgeGroup, n.DateAdded, g.GroupName
FROM         dbo.NewsletterUsers AS n INNER JOIN
                      dbo.NewsletterGroups AS g ON n.GroupId = g.GroupId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NewsNetworkView]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [NewsNetworkView]
AS
SELECT     dbo.NewsNetwork.NetworkId, dbo.NewsNetwork.NewsId, dbo.Networks.Name, dbo.Networks.UniqueName
FROM         dbo.Networks INNER JOIN
                      dbo.NewsNetwork ON dbo.Networks.NetworkId = dbo.NewsNetwork.NetworkId



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[OperatorsView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [OperatorsView]
AS
SELECT     m.MemberId, m.Geuid, m.UserName, m.Password, m.Status, m.FirstName + '' '' + m.LastName AS Name, m.FirstName, m.LastName, m.Email, m.DateCreated, m.LastModified, m.LastLogin, m.Online, 
                      m.SecretQuestion, m.SecretQuestionAnswer, m.Picture, m.Privacy, og.GroupId, og.GroupName, og.XmlFile, op.Style
FROM         dbo.OperatorProfile AS op INNER JOIN
                      dbo.Members AS m ON op.MemberId = m.MemberId INNER JOIN
                      dbo.OperatorGroups AS og ON op.GroupId = og.GroupId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PackageListView]'))
EXEC dbo.sp_executesql @statement = N'create view [PackageListView]
as 
select i.ItemId, i.UniqueName, i.Title, i.ProductNumber, i.Price, ip.QTY, ip.Sort, ip.ItemId as ParentItem from Items i 
inner join ItemPackages ip on i.ItemId=ip.ItemId1


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PackageParentListView]'))
EXEC dbo.sp_executesql @statement = N'create view [PackageParentListView]
as 
select i.ItemId, i.UniqueName, i.Title, i.ProductNumber, i.Price, ip.QTY, ip.Sort, ip.ItemId1 as ChildItem from Items i 
inner join ItemPackages ip on i.ItemId=ip.ItemId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PageDataProrpertiesView]'))
EXEC dbo.sp_executesql @statement = N'Create View [PageDataProrpertiesView]
as
select pv.PageID, p.DataPropertyName, pv.DataPropertyValue
from PageDataPropertyValue pv 
inner Join PageDataProperty p
on pv.DataPropertyID = p.DataPropertyID

---' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PhotoAlbumsNetworkView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [PhotoAlbumsNetworkView]
AS
SELECT     dbo.Networks.UniqueName, dbo.PhotoAlbumsNetwork.Id, dbo.Networks.Name, dbo.PhotoAlbumsNetwork.NetworkId
FROM         dbo.Networks INNER JOIN
                      dbo.PhotoAlbumsNetwork ON dbo.Networks.NetworkId = dbo.PhotoAlbumsNetwork.NetworkId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollViewEmails]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [PollViewEmails]
AS
SELECT     r.Email, q.PollId
FROM         PollResults r INNER JOIN
                      PollOptions o ON r.OptionId = o.OptionId INNER JOIN
                      PollQuestions q ON o.QuestionId = q.QuestionId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PollVotesCount]'))
EXEC dbo.sp_executesql @statement = N'create View [PollVotesCount]
as
SELECT COUNT(*) as VotesCount, a.PollId 
	FROM PollsUserResponses r 
	INNER JOIN PollAnswers a 
ON r.PollAnswerID = a.PollAnswerID
Group By a.PollId


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VideosView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [VideosView]
AS
SELECT        dbo.Videos.VideoId, dbo.Videos.Title, dbo.Videos.Status, dbo.Videos.Object, dbo.Videos.Description, dbo.Videos.CategoryId, dbo.Videos.CreatorId, 
                         dbo.Videos.DateCreated, dbo.Videos.DateModified, dbo.Videos.UniqueName, dbo.Videos.ThumbImage, dbo.Videos.ModifierId, dbo.Videos.VideoFile, 
                         dbo.Videos.VideoLength, dbo.Videos.Language, dbo.VideoCategories.Title AS VideoCategoryTitle, dbo.VideoCategories.UniqueName AS VideoCategoryUniqueName, 
                         dbo.VideoCategories.ThumbWidth, dbo.VideoCategories.ThumbHeight, dbo.VideoCategories.ThumbSize, dbo.VideoCategories.Status AS VideoCategoryStatus, 
                         dbo.VideoCategories.CategoryId AS VideoCategoryId
FROM            dbo.Videos INNER JOIN
                         dbo.VideoCategories ON dbo.Videos.CategoryId = dbo.VideoCategories.CategoryId

' 
GO
SET IDENTITY_INSERT [Members] ON 

INSERT [Members] ([MemberId], [Geuid], [UserName], [Password], [Status], [Title], [FirstName], [MiddleName], [LastName], [Gender], [Email], [AlternateEmail], [DateOfBirth], [DateCreated], [LastModified], [LastLogin], [Online], [SecretQuestion], [SecretQuestionAnswer], [Picture], [Privacy], [ChangedBy], [JoinNewsletter], [PrivateComments], [Comments], [PasswordChangeDate], [FullName], [NativeFullName], [Roles]) VALUES (1, N'3502f1eb-358f-4310-ad23-5675a761311e', N'admin', N'P@55word', 2, N'Mr.', N'Admin', N'Admin', N'Admin', 1, N'creativeweb@sabis.net', N'creativeweb@sabis.net', CAST(N'1981-06-04 00:00:00.000' AS DateTime), CAST(N'2011-03-21 14:13:58.907' AS DateTime), CAST(N'2011-06-03 16:37:16.210' AS DateTime), CAST(N'2016-06-07 09:20:30.140' AS DateTime), 0, N'question', N'answer', N'admin-admin-a4-b44d-b6d7f02c719b-1.Jpg', 4094, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [Members] ([MemberId], [Geuid], [UserName], [Password], [Status], [Title], [FirstName], [MiddleName], [LastName], [Gender], [Email], [AlternateEmail], [DateOfBirth], [DateCreated], [LastModified], [LastLogin], [Online], [SecretQuestion], [SecretQuestionAnswer], [Picture], [Privacy], [ChangedBy], [JoinNewsletter], [PrivateComments], [Comments], [PasswordChangeDate], [FullName], [NativeFullName], [Roles]) VALUES (3, N'fd3e0be9-c41b-4233-84e3-075d0b4d2ed7', N'webmaster', N'P@55word', 2, N'', N'Myriam', N'', N'Kfoury', 1, N'mkfoury@sabis.net', N'mkfoury@sabis.net', CAST(N'2014-10-23 04:24:26.500' AS DateTime), CAST(N'2014-10-23 04:24:26.500' AS DateTime), CAST(N'2014-10-23 04:24:26.500' AS DateTime), CAST(N'2015-05-26 01:47:25.687' AS DateTime), 0, N'question', N'answer', N'admin-admin-a4-b44d-b6d7f02c719b-1.Jpg', 4094, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [Members] OFF
SET IDENTITY_INSERT [OperatorGroups] ON 

INSERT [OperatorGroups] ([GroupId], [GroupName], [XmlFile]) VALUES (1, N'Administrator', N'Administrator')
INSERT [OperatorGroups] ([GroupId], [GroupName], [XmlFile]) VALUES (2, N'Webmaster', N'Webmaster')
SET IDENTITY_INSERT [OperatorGroups] OFF
INSERT [OperatorProfile] ([MemberId], [GroupId], [Style]) VALUES (1, 1, NULL)
INSERT [OperatorProfile] ([MemberId], [GroupId], [Style]) VALUES (3, 2, N'')

SET IDENTITY_INSERT [Pages] ON 

INSERT [Pages] ([PageId], [ParentId], [URL], [Title], [Header], [SmallDescription], [PageContent], [Status], [Language], [PageFile], [Image], [CreatedBy], [ModifiedBy], [DateCreated], [DateModified], [PublishDate], [Ranking], [Views], [UserRating], [History], [PageType], [PageTemplate], [IsSecure], [Tags], [AccessRoles], [EditingRoles]) VALUES (375, -1, N'general', N'General', N'General', N'', N'', 1, 1, NULL, NULL, NULL, 1, CAST(N'2014-02-03 10:49:07.000' AS DateTime), CAST(N'2014-02-03 10:49:24.000' AS DateTime), NULL, 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [Pages] OFF
 
SET IDENTITY_INSERT [VideoCategories] ON 

INSERT [VideoCategories] ([CategoryId], [Title], [UniqueName], [ThumbWidth], [ThumbHeight], [Status]) VALUES (1, N'General', N'general', NULL, NULL, 1)
SET IDENTITY_INSERT [VideoCategories] OFF

SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ASPStateTempApplications]') AND name = N'Index_AppName')
CREATE NONCLUSTERED INDEX [Index_AppName] ON [ASPStateTempApplications]
(
	[AppName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ASPStateTempSessions]') AND name = N'Index_Expires')
CREATE NONCLUSTERED INDEX [Index_Expires] ON [ASPStateTempSessions]
(
	[Expires] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[Calendar]'))
CREATE FULLTEXT INDEX ON [Calendar](
[Description] LANGUAGE 'English', 
[Location] LANGUAGE 'English', 
[Time] LANGUAGE 'English', 
[Title] LANGUAGE 'English')
KEY INDEX [PK_Calendar]ON ([Search_Calendar], FILEGROUP [PRIMARY])
WITH (CHANGE_TRACKING = AUTO, STOPLIST = SYSTEM)


GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[Downloads]'))
CREATE FULLTEXT INDEX ON [Downloads](
[Description] LANGUAGE 'English', 
[FileName] LANGUAGE 'English', 
[Title] LANGUAGE 'English')
KEY INDEX [PK_Downloads]ON ([Search_Downloads], FILEGROUP [PRIMARY])
WITH (CHANGE_TRACKING = AUTO, STOPLIST = SYSTEM)


GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[News]'))
CREATE FULLTEXT INDEX ON [News](
[Header] LANGUAGE 'English', 
[LargeImage] LANGUAGE 'English', 
[MediumImage] LANGUAGE 'English', 
[NewsFile] LANGUAGE 'English', 
[NewsText] LANGUAGE 'English', 
[ThumbImage] LANGUAGE 'English', 
[Title] LANGUAGE 'English', 
[UniqueName] LANGUAGE 'English')
KEY INDEX [PK_News]ON ([Search_News], FILEGROUP [PRIMARY])
WITH (CHANGE_TRACKING = AUTO, STOPLIST = SYSTEM)


GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[Pages]'))
CREATE FULLTEXT INDEX ON [Pages](
[Header] LANGUAGE 'English', 
[History] LANGUAGE 'English', 
[PageContent] LANGUAGE 'English', 
[SmallDescription] LANGUAGE 'English', 
[Tags] LANGUAGE 'English', 
[Title] LANGUAGE 'English', 
[URL] LANGUAGE 'English')
KEY INDEX [PK_Pages]ON ([Pages], FILEGROUP [PRIMARY])
WITH (CHANGE_TRACKING = AUTO, STOPLIST = SYSTEM)


GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[PhotoAlbumImages]'))
CREATE FULLTEXT INDEX ON [PhotoAlbumImages](
[Caption] LANGUAGE 'English', 
[FileName] LANGUAGE 'English')
KEY INDEX [PK_PhotoAlbumImages]ON ([Search_PhotoAlbumImages], FILEGROUP [PRIMARY])
WITH (CHANGE_TRACKING = AUTO, STOPLIST = SYSTEM)


GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[PhotoAlbums]'))
CREATE FULLTEXT INDEX ON [PhotoAlbums](
[Description] LANGUAGE 'English', 
[DisplayName] LANGUAGE 'English', 
[Name] LANGUAGE 'English')
KEY INDEX [PK_Albums]ON ([Search_PhotoAlbums], FILEGROUP [PRIMARY])
WITH (CHANGE_TRACKING = AUTO, STOPLIST = SYSTEM)


GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ads_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [Ads] ADD  CONSTRAINT [DF_Ads_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ads_DateModified]') AND type = 'D')
BEGIN
ALTER TABLE [Ads] ADD  CONSTRAINT [DF_Ads_DateModified]  DEFAULT (getdate()) FOR [DateModified]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ads_Reports_Clicks]') AND type = 'D')
BEGIN
ALTER TABLE [Ads_Reports] ADD  CONSTRAINT [DF_Ads_Reports_Clicks]  DEFAULT ((0)) FOR [Clicks]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ads_Reports_Exposures]') AND type = 'D')
BEGIN
ALTER TABLE [Ads_Reports] ADD  CONSTRAINT [DF_Ads_Reports_Exposures]  DEFAULT ((0)) FOR [Exposures]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ASPStateT__Creat__1DD065E0]') AND type = 'D')
BEGIN
ALTER TABLE [ASPStateTempSessions] ADD  DEFAULT (getutcdate()) FOR [Created]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ASPStateT__Flags__1EC48A19]') AND type = 'D')
BEGIN
ALTER TABLE [ASPStateTempSessions] ADD  DEFAULT ((0)) FOR [Flags]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Brands_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [Brands] ADD  CONSTRAINT [DF_Brands_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Brands_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [Brands] ADD  CONSTRAINT [DF_Brands_LastModified]  DEFAULT (getdate()) FOR [LastModified]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Categories_ParentId]') AND type = 'D')
BEGIN
ALTER TABLE [Categories] ADD  CONSTRAINT [DF_Categories_ParentId]  DEFAULT ((-1)) FOR [ParentId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Categories_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [Categories] ADD  CONSTRAINT [DF_Categories_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Categories_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [Categories] ADD  CONSTRAINT [DF_Categories_LastModified]  DEFAULT (getdate()) FOR [LastModified]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_chat_Private_TimeStamp]') AND type = 'D')
BEGIN
ALTER TABLE [chat_conversation_messages] ADD  CONSTRAINT [DF_chat_Private_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_chat_conversations_TimsStamp]') AND type = 'D')
BEGIN
ALTER TABLE [chat_conversations] ADD  CONSTRAINT [DF_chat_conversations_TimsStamp]  DEFAULT (getdate()) FOR [TimeStamp]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Message_TimeStamp]') AND type = 'D')
BEGIN
ALTER TABLE [chat_Message] ADD  CONSTRAINT [DF_Message_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_BrandId]') AND type = 'D')
BEGIN
ALTER TABLE [Items] ADD  CONSTRAINT [DF_Items_BrandId]  DEFAULT ((-1)) FOR [BrandId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [Items] ADD  CONSTRAINT [DF_Items_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [Items] ADD  CONSTRAINT [DF_Items_LastModified]  DEFAULT (getdate()) FOR [LastModified]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PollAnswers_SortOrder]') AND type = 'D')
BEGIN
ALTER TABLE [PollAnswers] ADD  CONSTRAINT [DF_PollAnswers_SortOrder]  DEFAULT ((0)) FOR [SortOrder]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PollResults_VoteDate]') AND type = 'D')
BEGIN
ALTER TABLE [PollResults] ADD  CONSTRAINT [DF_PollResults_VoteDate]  DEFAULT (getdate()) FOR [VoteDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Polls_UID]') AND type = 'D')
BEGIN
ALTER TABLE [Polls] ADD  CONSTRAINT [DF_Polls_UID]  DEFAULT (newid()) FOR [UID]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Ads_Ads_Zones]') AND parent_object_id = OBJECT_ID(N'[Ads]'))
ALTER TABLE [Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_Ads_Zones] FOREIGN KEY([ZoneId])
REFERENCES [Ads_Zones] ([ZoneId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Ads_Ads_Zones]') AND parent_object_id = OBJECT_ID(N'[Ads]'))
ALTER TABLE [Ads] CHECK CONSTRAINT [FK_Ads_Ads_Zones]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AdKeywordRelation_AdKeywords]') AND parent_object_id = OBJECT_ID(N'[Ads_AdKeywordRelation]'))
ALTER TABLE [Ads_AdKeywordRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_AdKeywordRelation_AdKeywords] FOREIGN KEY([KeywordId])
REFERENCES [Ads_Keywords] ([KeywordId])
ON DELETE CASCADE
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AdKeywordRelation_AdKeywords]') AND parent_object_id = OBJECT_ID(N'[Ads_AdKeywordRelation]'))
ALTER TABLE [Ads_AdKeywordRelation] NOCHECK CONSTRAINT [FK_AdKeywordRelation_AdKeywords]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AdKeywordRelation_Ads]') AND parent_object_id = OBJECT_ID(N'[Ads_AdKeywordRelation]'))
ALTER TABLE [Ads_AdKeywordRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_AdKeywordRelation_Ads] FOREIGN KEY([AdId])
REFERENCES [Ads] ([AdId])
ON DELETE CASCADE
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AdKeywordRelation_Ads]') AND parent_object_id = OBJECT_ID(N'[Ads_AdKeywordRelation]'))
ALTER TABLE [Ads_AdKeywordRelation] NOCHECK CONSTRAINT [FK_AdKeywordRelation_Ads]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Ads_Reports_Ads]') AND parent_object_id = OBJECT_ID(N'[Ads_Reports]'))
ALTER TABLE [Ads_Reports]  WITH CHECK ADD  CONSTRAINT [FK_Ads_Reports_Ads] FOREIGN KEY([AdId])
REFERENCES [Ads] ([AdId])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Ads_Reports_Ads]') AND parent_object_id = OBJECT_ID(N'[Ads_Reports]'))
ALTER TABLE [Ads_Reports] CHECK CONSTRAINT [FK_Ads_Reports_Ads]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Categories_DiscountPlans]') AND parent_object_id = OBJECT_ID(N'[Categories]'))
ALTER TABLE [Categories]  WITH NOCHECK ADD  CONSTRAINT [FK_Categories_DiscountPlans] FOREIGN KEY([DiscountPlanId])
REFERENCES [DiscountPlans] ([DiscountId])
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Categories_DiscountPlans]') AND parent_object_id = OBJECT_ID(N'[Categories]'))
ALTER TABLE [Categories] NOCHECK CONSTRAINT [FK_Categories_DiscountPlans]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Categories_Templates]') AND parent_object_id = OBJECT_ID(N'[Categories]'))
ALTER TABLE [Categories]  WITH NOCHECK ADD  CONSTRAINT [FK_Categories_Templates] FOREIGN KEY([TemplateId])
REFERENCES [Templates] ([TemplateId])
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Categories_Templates]') AND parent_object_id = OBJECT_ID(N'[Categories]'))
ALTER TABLE [Categories] NOCHECK CONSTRAINT [FK_Categories_Templates]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Items_Brands1]') AND parent_object_id = OBJECT_ID(N'[Items]'))
ALTER TABLE [Items]  WITH NOCHECK ADD  CONSTRAINT [FK_Items_Brands1] FOREIGN KEY([BrandId])
REFERENCES [Brands] ([BrandId])
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Items_Brands1]') AND parent_object_id = OBJECT_ID(N'[Items]'))
ALTER TABLE [Items] NOCHECK CONSTRAINT [FK_Items_Brands1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_MediaWidgets_Medias]') AND parent_object_id = OBJECT_ID(N'[MediaWidgets]'))
ALTER TABLE [MediaWidgets]  WITH NOCHECK ADD  CONSTRAINT [FK_MediaWidgets_Medias] FOREIGN KEY([MediaId])
REFERENCES [Media] ([Id])
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_MediaWidgets_Medias]') AND parent_object_id = OBJECT_ID(N'[MediaWidgets]'))
ALTER TABLE [MediaWidgets] NOCHECK CONSTRAINT [FK_MediaWidgets_Medias]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_MediaWidgets_Widgets]') AND parent_object_id = OBJECT_ID(N'[MediaWidgets]'))
ALTER TABLE [MediaWidgets]  WITH CHECK ADD  CONSTRAINT [FK_MediaWidgets_Widgets] FOREIGN KEY([WidgetId])
REFERENCES [Widgets] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_MediaWidgets_Widgets]') AND parent_object_id = OBJECT_ID(N'[MediaWidgets]'))
ALTER TABLE [MediaWidgets] CHECK CONSTRAINT [FK_MediaWidgets_Widgets]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PollAnswers_Polls]') AND parent_object_id = OBJECT_ID(N'[PollAnswers]'))
ALTER TABLE [PollAnswers]  WITH CHECK ADD  CONSTRAINT [FK_PollAnswers_Polls] FOREIGN KEY([PollID])
REFERENCES [Polls] ([PollID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PollAnswers_Polls]') AND parent_object_id = OBJECT_ID(N'[PollAnswers]'))
ALTER TABLE [PollAnswers] CHECK CONSTRAINT [FK_PollAnswers_Polls]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PollsUserResponses_PollAnswers]') AND parent_object_id = OBJECT_ID(N'[PollsUserResponses]'))
ALTER TABLE [PollsUserResponses]  WITH CHECK ADD  CONSTRAINT [FK_PollsUserResponses_PollAnswers] FOREIGN KEY([PollAnswerID])
REFERENCES [PollAnswers] ([PollAnswerID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PollsUserResponses_PollAnswers]') AND parent_object_id = OBJECT_ID(N'[PollsUserResponses]'))
ALTER TABLE [PollsUserResponses] CHECK CONSTRAINT [FK_PollsUserResponses_PollAnswers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Videos_VideoCategories]') AND parent_object_id = OBJECT_ID(N'[Videos]'))
ALTER TABLE [Videos]  WITH NOCHECK ADD  CONSTRAINT [FK_Videos_VideoCategories] FOREIGN KEY([CategoryId])
REFERENCES [VideoCategories] ([CategoryId])
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Videos_VideoCategories]') AND parent_object_id = OBJECT_ID(N'[Videos]'))
ALTER TABLE [Videos] NOCHECK CONSTRAINT [FK_Videos_VideoCategories]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_DeleteAdKeyword]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [Trg_DeleteAdKeyword] ON [Ads_Keywords] 
FOR DELETE 
AS

Delete from Ads_AdKeywordRelation where KeywordId in (select KeywordId from deleted)


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_DeleteBrand]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [Trg_DeleteBrand] ON [Brands] 
FOR DELETE 
AS
Update Items set BrandId=-1 where BrandId in (select BrandId from deleted)


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_CategoryDelete]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [Trg_CategoryDelete] ON [Categories] 
FOR DELETE 
AS
Delete from ItemCategories where CategoryId in (select CategoryId from Deleted)


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_Downloads_Networks]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [Trg_Delete_Downloads_Networks]
   ON  [Downloads]
   AFTER Delete
AS 
BEGIN
	Delete From DownloadsNetwork where DownloadId in (select DownloadId from deleted)
END

' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_delete_Item_Choice]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Trg_delete_Item_Choice]
   ON  [ItemChoices]
   AFTER DELETE
AS 
BEGIN
delete from ItemChoicesOptions where ChoiceId in (select ChoiceId from Deleted)

END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_Option]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Trg_Delete_Option]
   ON  [ItemChoicesOptions]
   AFTER DELETE
AS 
BEGIN
Set NoCount ON;

declare @OptionId int

select @OptionId = OptionId  from deleted;

Delete from ItemOptions Where OptionId = @OptionId
Delete from ItemOptionsInventory where [key] like ''%'' + cast(@OptionId as varchar) + ''%''

END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_DeleteItemOptions]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Trg_DeleteItemOptions]
   ON  [ItemOptions]
   AFTER DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	
	declare @OptionId int
	
	select @OptionId = OptionId  from deleted;

	Delete from ItemOptionsInventory where [key] like ''%'' + cast(@OptionId as varchar) + ''%''

END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_Item]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Trg_Delete_Item] 
   ON  [Items]
   AFTER DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



Delete from ItemCategories where ItemId in (select ItemId from deleted);
Update ShoppingItems Set ItemId=-1 Where ItemId in (select ItemId from deleted);
Delete from ItemRelations where ItemId1 in (select ItemId from deleted) or ItemId2 in (select ItemId from deleted);
Delete from ItemOptions where ItemId in (select ItemId from deleted);
Delete from ItemOptionsInventory where ItemId in (select ItemId from deleted);

Delete from ItemPrices where ItemId in (select ItemId from deleted);


END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Media_Delete]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Media_Delete]
   ON  [Media]
   AFTER DELETE
AS 
BEGIN
Delete From HashTags_Relations where RelateTo in (select Id from deleted) and RelationType in(4,5,6,7,8)

END
' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[trg_Delete_Member]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [trg_Delete_Member]
   ON  [Members] 
   AFTER DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

declare @MemberId int

select @MemberId = MemberId from deleted

Delete from OperatorProfile where MemberId =@MemberId
delete from MemberProfile where MemberId=@MemberId
delete from MemberNetworks where MemberId=@MemberId


    -- Insert statements for trigger here

END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_NetworkId_RelateToDownloads]'))
EXEC dbo.sp_executesql @statement = N'

CREATE TRIGGER [Trg_Delete_NetworkId_RelateToDownloads]
   ON  [Networks]
   AFTER Delete
AS 
BEGIN
	Delete From DownloadsNetwork where NetworkId in (select NetworkId from deleted)
END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_NetworkId_RelateToNews]'))
EXEC dbo.sp_executesql @statement = N'

CREATE TRIGGER [Trg_Delete_NetworkId_RelateToNews]
   ON  [Networks]
   AFTER Delete
AS 
BEGIN
	Delete From NewsNetwork where NetworkId in (select NetworkId from deleted)
END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_NetworkId_RelateToPhotoAlbums]'))
EXEC dbo.sp_executesql @statement = N'

CREATE TRIGGER [Trg_Delete_NetworkId_RelateToPhotoAlbums]
   ON  [Networks]
   AFTER Delete
AS 
BEGIN
	Delete From PhotoAlbumsNetwork where NetworkId in (select NetworkId from deleted)
END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_Delete_News_Networks]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [Trg_Delete_News_Networks]
   ON  [News]
   AFTER Delete
AS 
BEGIN
	Delete From NewsNetwork where NewsId in (select NewsId from deleted)
END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trg_DeleteOrders]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Trg_DeleteOrders]
   ON  [Orders]
   AFTER DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Delete from ShoppingItems where OrderId in (select OrderId from deleted)


END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Page_Delete]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [Page_Delete]
   ON  [Pages]
   AFTER DELETE
AS 
BEGIN

Delete from PageDataPropertyValue where PageId in (select PageID from deleted);
Delete From HashTags_Relations where RelateTo in (select PageID from deleted) and RelationType in( 1)


END


' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trig_DeletePollIOption]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [Trig_DeletePollIOption] ON [PollOptions] 
FOR  DELETE 
AS
delete from pollResults where OptionId in (select OptionId from deleted)
' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[Trig_DeletePollQuestion]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [Trig_DeletePollQuestion] ON [PollQuestions] 
FOR DELETE 
AS
delete from PollOptions where QuestionId in (select QuestionId from deleted)
' 
GO
