USE [umbraco-news]
GO
/****** Object:  Table [dbo].[cmsContentNu]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentNu](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[data] [ntext] NOT NULL,
	[rv] [bigint] NOT NULL,
 CONSTRAINT [PK_cmsContentNu] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[isContainer] [bit] NOT NULL,
	[isElement] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
	[variations] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NULL,
	[key] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroSource] [nvarchar](255) NOT NULL,
	[macroType] [int] NOT NULL,
 CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniquePropertyId] [uniqueidentifier] NOT NULL,
	[editorAlias] [nvarchar](255) NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [int] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
	[isSensitive] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[mandatoryMessage] [nvarchar](500) NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[validationRegExpMessage] [nvarchar](500) NULL,
	[Description] [nvarchar](2000) NULL,
	[variations] [int] NOT NULL,
	[UniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[propertyTypeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group] [nvarchar](100) NOT NULL,
	[languageId] [int] NULL,
	[tag] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccess]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccess](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[loginNodeId] [int] NOT NULL,
	[noAccessNodeId] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccessRule]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccessRule](
	[id] [uniqueidentifier] NOT NULL,
	[accessId] [uniqueidentifier] NOT NULL,
	[ruleValue] [nvarchar](255) NOT NULL,
	[ruleType] [nvarchar](255) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccessRule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAudit]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAudit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[performingUserId] [int] NOT NULL,
	[performingDetails] [nvarchar](1024) NULL,
	[performingIp] [nvarchar](64) NULL,
	[eventDateUtc] [datetime] NOT NULL,
	[affectedUserId] [int] NOT NULL,
	[affectedDetails] [nvarchar](1024) NULL,
	[eventType] [nvarchar](256) NOT NULL,
	[eventDetails] [nvarchar](1024) NULL,
 CONSTRAINT [PK_umbracoAudit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoCacheInstruction]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoCacheInstruction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[utcStamp] [datetime] NOT NULL,
	[jsonInstruction] [ntext] NOT NULL,
	[originated] [nvarchar](500) NOT NULL,
	[instructionCount] [int] NOT NULL,
 CONSTRAINT [PK_umbracoCacheInstruction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoConsent]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoConsent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[current] [bit] NOT NULL,
	[source] [nvarchar](512) NOT NULL,
	[context] [nvarchar](128) NOT NULL,
	[action] [nvarchar](512) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[state] [int] NOT NULL,
	[comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoConsent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContent]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContent](
	[nodeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_umbracoContent] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentSchedule]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentSchedule](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[date] [datetime] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoContentSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersion]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[versionDate] [datetime] NOT NULL,
	[userId] [int] NULL,
	[current] [bit] NOT NULL,
	[text] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersionCultureVariation]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersionCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[date] [datetime] NOT NULL,
	[availableUserId] [int] NULL,
 CONSTRAINT [PK_umbracoContentVersionCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDataType]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDataType](
	[nodeId] [int] NOT NULL,
	[propertyEditorAlias] [nvarchar](255) NOT NULL,
	[dbType] [nvarchar](50) NOT NULL,
	[config] [ntext] NULL,
 CONSTRAINT [PK_umbracoDataType] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocument]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[edited] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocument] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentCultureVariation]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[edited] [bit] NOT NULL,
	[available] [bit] NOT NULL,
	[published] [bit] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoDocumentCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentVersion]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentVersion](
	[id] [int] NOT NULL,
	[templateId] [int] NULL,
	[published] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocumentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDomain]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomain](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoDomain] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoExternalLogin]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoExternalLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[loginProvider] [nvarchar](4000) NOT NULL,
	[providerKey] [nvarchar](4000) NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoExternalLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoKeyValue]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoKeyValue](
	[key] [nvarchar](256) NOT NULL,
	[value] [nvarchar](255) NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoKeyValue] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](14) NULL,
	[languageCultureName] [nvarchar](100) NULL,
	[isDefaultVariantLang] [bit] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[fallbackLanguageId] [int] NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLock]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLock](
	[id] [int] NOT NULL,
	[value] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_umbracoLock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[NodeId] [int] NOT NULL,
	[entityType] [nvarchar](50) NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
	[parameters] [nvarchar](500) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoMediaVersion]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoMediaVersion](
	[id] [int] NOT NULL,
	[path] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoMediaVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[parentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[trashed] [bit] NOT NULL,
	[nodeUser] [int] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoPropertyData]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[segment] [nvarchar](256) NULL,
	[intValue] [int] NULL,
	[decimalValue] [decimal](38, 6) NULL,
	[dateValue] [datetime] NULL,
	[varcharValue] [nvarchar](512) NULL,
	[textValue] [ntext] NULL,
 CONSTRAINT [PK_umbracoPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRedirectUrl]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRedirectUrl](
	[id] [uniqueidentifier] NOT NULL,
	[contentKey] [uniqueidentifier] NOT NULL,
	[createDateUtc] [datetime] NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[culture] [nvarchar](255) NULL,
	[urlHash] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_umbracoRedirectUrl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeUniqueId] [uniqueidentifier] NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NULL,
	[childObjectType] [uniqueidentifier] NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isMaster] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](500) NOT NULL,
	[passwordConfig] [nvarchar](500) NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userLanguage] [nvarchar](10) NULL,
	[securityStampToken] [nvarchar](255) NULL,
	[failedLoginAttempts] [int] NULL,
	[lastLockoutDate] [datetime] NULL,
	[lastPasswordChangeDate] [datetime] NULL,
	[lastLoginDate] [datetime] NULL,
	[emailConfirmedDate] [datetime] NULL,
	[invitedDate] [datetime] NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[avatar] [nvarchar](500) NULL,
	[tourData] [ntext] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nchar](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2UserGroup]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2UserGroup](
	[userId] [int] NOT NULL,
	[userGroupId] [int] NOT NULL,
 CONSTRAINT [PK_user2userGroup] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[userGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userGroupAlias] [nvarchar](200) NOT NULL,
	[userGroupName] [nvarchar](200) NOT NULL,
	[userGroupDefaultPermissions] [nvarchar](50) NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[icon] [nvarchar](255) NULL,
	[startContentId] [int] NULL,
	[startMediaId] [int] NULL,
 CONSTRAINT [PK_umbracoUserGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2App]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2App](
	[userGroupId] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_userGroup2App] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[app] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2NodePermission]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2NodePermission](
	[userGroupId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUserGroup2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserLogin]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogin](
	[sessionId] [uniqueidentifier] NOT NULL,
	[userId] [int] NOT NULL,
	[loggedInUtc] [datetime] NOT NULL,
	[lastValidatedUtc] [datetime] NOT NULL,
	[loggedOutUtc] [datetime] NULL,
	[ipAddress] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoUserLogin] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserStartNode]    Script Date: 5/13/2020 4:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserStartNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[startNode] [int] NOT NULL,
	[startNodeType] [int] NOT NULL,
 CONSTRAINT [PK_userStartNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1064, 0, N'{"properties":{},"cultureData":{},"urlSegment":"homepage"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1064, 1, N'{"properties":{},"cultureData":{},"urlSegment":"homepage"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1065, 0, N'{"properties":{"articleTitle":[{"culture":"","seg":"","val":"GIC ra mắt sản phẩm bảo hiểm du lịch toàn cầu Gic Global Safe"}],"articleBodyText":[{"culture":"","seg":"","val":"<p>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</p>"}],"articlesThumbnail":[{"culture":"","seg":"","val":"/media/gkkp5bpr/a14.jpg"}],"articlePublishedDate":[]},"cultureData":{},"urlSegment":"articles-main"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1065, 1, N'{"properties":{"articleTitle":[{"culture":"","seg":"","val":"GIC ra mắt sản phẩm bảo hiểm du lịch toàn cầu Gic Global Safe"}],"articleBodyText":[{"culture":"","seg":"","val":"<p>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</p>"}],"articlesThumbnail":[{"culture":"","seg":"","val":"/media/gkkp5bpr/a14.jpg"}],"articlePublishedDate":[]},"cultureData":{},"urlSegment":"articles-main"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1066, 0, N'{"properties":{"articleTitle":[{"culture":"","seg":"","val":"<h1 style=\"text-align: center;\">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>"}],"articleContent":[{"culture":"","seg":"","val":"<div>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>\n<div>\n<div>\n<div>\n<div>\n<p align=\"center\"><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg\" alt=\"\" /></p>\nNgày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name=\"_Hlk531767691\"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>\n</div>\n<div><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg\" alt=\"\" /></div>\n<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg\" alt=\"\" /><br /></em>\n<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg\" alt=\"\" /></em></div>\n<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>\n</div>\n</div>\n<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>\n<p align=\"justify\">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name=\"_Hlk531767563\"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>\n<div>\n<div>\n<p align=\"justify\">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>\n<p align=\"justify\"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>\n<p align=\"justify\">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>\n<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg\" alt=\"\" /><br /></span>\n<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>\n<div><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg\" alt=\"\" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>\n<div><em><br /></em>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg\" alt=\"\" /></em></div>\n<div> </div>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg\" alt=\"\" /></em></div>\n<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg\" alt=\"\" /></em></div>\n<em><br /></em>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg\" alt=\"\" /></em><em> </em><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg\" alt=\"\" /></em></div>\n<p align=\"center\">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg\" alt=\"\" /><br /><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg\" alt=\"\" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>\n<p align=\"center\"><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg\" alt=\"\" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>\n</div>\n</div>\n</div>\n</div>"}],"author":[{"culture":"","seg":"","val":"Administrator"}],"articlePublishedDate":[]},"cultureData":{},"urlSegment":"post1"}', 3)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1066, 1, N'{"properties":{"articleTitle":[{"culture":"","seg":"","val":"<h1 style=\"text-align: center;\">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>"}],"articleContent":[{"culture":"","seg":"","val":"<div>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>\n<div>\n<div>\n<div>\n<div>\n<p align=\"center\"><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg\" alt=\"\" /></p>\nNgày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name=\"_Hlk531767691\"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>\n</div>\n<div><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg\" alt=\"\" /></div>\n<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg\" alt=\"\" /><br /></em>\n<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg\" alt=\"\" /></em></div>\n<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>\n</div>\n</div>\n<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>\n<p align=\"justify\">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name=\"_Hlk531767563\"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>\n<div>\n<div>\n<p align=\"justify\">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>\n<p align=\"justify\"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>\n<p align=\"justify\">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>\n<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg\" alt=\"\" /><br /></span>\n<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>\n<div><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg\" alt=\"\" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>\n<div><em><br /></em>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg\" alt=\"\" /></em></div>\n<div> </div>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg\" alt=\"\" /></em></div>\n<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg\" alt=\"\" /></em></div>\n<em><br /></em>\n<div><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg\" alt=\"\" /></em><em> </em><em><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg\" alt=\"\" /></em></div>\n<p align=\"center\">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg\" alt=\"\" /><br /><br /><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg\" alt=\"\" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>\n<p align=\"center\"><img src=\"http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg\" alt=\"\" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>\n</div>\n</div>\n</div>\n</div>"}],"author":[{"culture":"","seg":"","val":"Administrator"}],"articlePublishedDate":[]},"cultureData":{},"urlSegment":"post1"}', 3)
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (535, 1052, N'articlesItem', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (536, 1054, N'articlesMain', N'icon-folders', N'folder.png', NULL, 1, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (537, 1063, N'master', N'icon-home color-purple', N'folder.png', NULL, 0, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1054, 1052, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1063, 1054, 0)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1052, 1051, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1054, 1053, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1063, 1062, 1)
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON 

INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (6, 1043, 1032, 3, N'umbracoFile', N'Upload image', 0, 1, NULL, NULL, NULL, NULL, 0, N'00000006-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (7, -91, 1032, 3, N'umbracoWidth', N'Width', 0, 0, NULL, NULL, NULL, N'in pixels', 0, N'00000007-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (8, -91, 1032, 3, N'umbracoHeight', N'Height', 0, 0, NULL, NULL, NULL, N'in pixels', 0, N'00000008-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (9, -93, 1032, 3, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, N'00000009-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, N'0000000a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', 0, 1, NULL, NULL, NULL, NULL, 0, N'00000018-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, N'00000019-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (26, -93, 1033, 4, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, N'0000001a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', 0, 0, NULL, NULL, NULL, NULL, 0, N'0000001c-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (29, -91, 1044, 11, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', 1, 0, NULL, NULL, NULL, NULL, 0, N'0000001d-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (30, -49, 1044, 11, N'umbracoMemberApproved', N'Is Approved', 2, 0, NULL, NULL, NULL, NULL, 0, N'0000001e-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (31, -49, 1044, 11, N'umbracoMemberLockedOut', N'Is Locked Out', 3, 0, NULL, NULL, NULL, NULL, 0, N'0000001f-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (32, -94, 1044, 11, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', 4, 0, NULL, NULL, NULL, NULL, 0, N'00000020-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (33, -94, 1044, 11, N'umbracoMemberLastLogin', N'Last Login Date', 5, 0, NULL, NULL, NULL, NULL, 0, N'00000021-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (34, -94, 1044, 11, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', 6, 0, NULL, NULL, NULL, NULL, 0, N'00000022-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (35, -94, 1044, 11, N'umbracoMemberPasswordRetrievalQuestion', N'Password Question', 7, 0, NULL, NULL, NULL, NULL, 0, N'00000023-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (36, -94, 1044, 11, N'umbracoMemberPasswordRetrievalAnswer', N'Password Answer', 8, 0, NULL, NULL, NULL, NULL, 0, N'00000024-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (37, 1056, 1054, 12, N'articleTitle', N'Article Title', 0, 0, NULL, NULL, NULL, NULL, 0, N'71bee41b-3712-46a5-9588-87db4f4bd569')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (38, 1057, 1054, 12, N'articleBodyText', N'Article Body Text', 1, 0, NULL, NULL, NULL, NULL, 0, N'501fb87e-6645-4a29-aae5-7e0aa56b1561')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (39, 1058, 1054, 12, N'articlesThumbnail', N'Articles Thumbnail', 2, 0, NULL, NULL, NULL, NULL, 0, N'56c0e8f7-bb02-4f16-957c-6c086a7aa998')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (40, -94, 1054, 12, N'articlePublishedDate', N'Article Published Date', 3, 0, NULL, NULL, NULL, NULL, 0, N'577e8333-e032-44e0-b4f1-2604189dfd83')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (41, 1067, 1052, 13, N'articleTitle', N'Article Title', 0, 0, NULL, NULL, NULL, NULL, 0, N'188f7e43-29c8-47a6-a35b-8362bc56b373')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (42, 1060, 1052, 13, N'articleContent', N'Article Content', 1, 0, NULL, NULL, NULL, NULL, 0, N'e78f0993-7d8a-424d-bf75-61c57827060a')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (43, 1061, 1052, 13, N'author', N'Author', 2, 0, NULL, NULL, NULL, NULL, 0, N'28716e16-dfe7-4190-8713-12e8a52017f1')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [variations], [UniqueID]) VALUES (44, -94, 1052, 13, N'articlePublishedDate', N'Article Published Date', 3, 0, NULL, NULL, NULL, NULL, 0, N'37553305-60e6-4a3d-b7fe-dbfe4eab044a')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON 

INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (3, 1032, N'Image', 1, N'79ed4d07-254a-42cf-8fa9-ebe1c116a596')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (4, 1033, N'File', 1, N'50899f9c-023a-4466-b623-aba9049885fe')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (11, 1044, N'Membership', 1, N'0756729d-d665-46e3-b84a-37aceaa614f8')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (12, 1054, N'Intro', 0, N'68eca51c-d8b5-44e4-9d0b-f20704a20a81')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (13, 1052, N'Content', 0, N'96386fcc-9b0b-4fc4-8ff6-9e03fdf5c216')
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (1, 1051, N'ArticlesItem')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (2, 1053, N'ArticlesMain')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (3, 1062, N'master')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
SET IDENTITY_INSERT [dbo].[umbracoAudit] ON 

INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T02:52:36.553' AS DateTime), -1, N'User "Administrator" ', N'umbraco/user/save', N'updating RawPasswordValue, LastPasswordChangeDate, UpdateDate, SecurityStamp')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T02:52:37.083' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/save', N'updating Email, Name, Username, UpdateDate, SecurityStamp')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (3, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T02:52:37.410' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (4, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T02:53:19.423' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/save', N'updating FailedPasswordAttempts, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (5, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T02:53:23.397' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/save', N'updating FailedPasswordAttempts, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (6, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T02:53:23.483' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (7, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T02:53:23.507' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (8, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T08:27:15.543' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (9, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-05-13T08:27:15.630' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (10, -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'::1', CAST(N'2020-05-13T08:27:19.193' AS DateTime), -1, N'User "Truc Phan" <anhtruc1234@gmail.com>', N'umbraco/user/save', N'updating TourData, UpdateDate')
SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON 

INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1, CAST(N'2020-05-13T02:53:19.507' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P16296/D5] 7A03F63A150E41D2A00019E14BA1EC0D', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (2, CAST(N'2020-05-13T02:53:23.873' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P16296/D5] 7A03F63A150E41D2A00019E14BA1EC0D', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (3, CAST(N'2020-05-13T08:27:16.067' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4, CAST(N'2020-05-13T08:27:19.200' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (5, CAST(N'2020-05-13T08:28:11.163' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":1}]"},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1053]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1054,\"ChangeTypes\":1}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 4)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (6, CAST(N'2020-05-13T08:29:33.527' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"Key\":\"90b17bfc-5b29-4a7a-b012-f9032fd76b2d\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (7, CAST(N'2020-05-13T08:30:20.580' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1057,\"Key\":\"f1ed5d88-73a7-4b5a-8bbd-d27136a985a7\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (8, CAST(N'2020-05-13T08:30:58.223' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1058,\"Key\":\"8be40760-fcd0-4803-9ff8-341d976810c5\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (9, CAST(N'2020-05-13T08:31:42.770' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1054,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (10, CAST(N'2020-05-13T08:32:15.237' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1059,\"Key\":\"8016dd5c-02ce-4219-8166-da3ca18b0fe3\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (11, CAST(N'2020-05-13T08:32:32.337' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1060,\"Key\":\"b99ba3e2-913f-4f58-9501-b5d25e805c15\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (12, CAST(N'2020-05-13T08:38:00.727' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1061,\"Key\":\"1051ee44-6130-4460-b44f-f3f17a6dda4d\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (13, CAST(N'2020-05-13T08:39:10.637' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (14, CAST(N'2020-05-13T08:39:28.393' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (15, CAST(N'2020-05-13T08:39:33.250' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (16, CAST(N'2020-05-13T08:39:35.457' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (17, CAST(N'2020-05-13T08:40:40.587' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1063,\"ChangeTypes\":1}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (18, CAST(N'2020-05-13T08:40:46.257' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1063,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (19, CAST(N'2020-05-13T08:40:50.193' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1063,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (20, CAST(N'2020-05-13T08:41:00.517' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1064,\"Key\":\"a13f4eb1-bb86-44c2-9c47-4b5143c70cbb\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (21, CAST(N'2020-05-13T08:42:30.203' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"d33f7dc5-91f3-488c-a231-730774f95e06\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (22, CAST(N'2020-05-13T08:43:41.667' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (23, CAST(N'2020-05-13T08:43:50.843' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1064,\"Key\":\"a13f4eb1-bb86-44c2-9c47-4b5143c70cbb\",\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (24, CAST(N'2020-05-13T08:43:53.307' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"d33f7dc5-91f3-488c-a231-730774f95e06\",\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (25, CAST(N'2020-05-13T08:43:57.940' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (26, CAST(N'2020-05-13T08:44:22.580' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1063,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (27, CAST(N'2020-05-13T08:44:59.370' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (28, CAST(N'2020-05-13T08:49:37.897' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (29, CAST(N'2020-05-13T08:49:57.747' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (30, CAST(N'2020-05-13T08:50:25.253' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (31, CAST(N'2020-05-13T08:51:27.540' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (32, CAST(N'2020-05-13T08:52:02.917' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (33, CAST(N'2020-05-13T08:53:26.140' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (34, CAST(N'2020-05-13T08:53:40.773' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (35, CAST(N'2020-05-13T08:54:00.033' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (36, CAST(N'2020-05-13T08:55:21.167' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (37, CAST(N'2020-05-13T08:55:30.853' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (38, CAST(N'2020-05-13T08:55:52.887' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (39, CAST(N'2020-05-13T08:57:07.953' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"d33f7dc5-91f3-488c-a231-730774f95e06\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (40, CAST(N'2020-05-13T08:57:12.703' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (41, CAST(N'2020-05-13T08:57:43.883' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (42, CAST(N'2020-05-13T08:57:44.520' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (43, CAST(N'2020-05-13T08:58:08.740' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (44, CAST(N'2020-05-13T08:58:13.670' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (45, CAST(N'2020-05-13T08:58:34.890' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1054,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (46, CAST(N'2020-05-13T08:59:13.857' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1060,\"Key\":\"b99ba3e2-913f-4f58-9501-b5d25e805c15\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (47, CAST(N'2020-05-13T08:59:16.370' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (48, CAST(N'2020-05-13T08:59:31.487' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (49, CAST(N'2020-05-13T09:01:24.410' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (50, CAST(N'2020-05-13T09:01:40.040' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (51, CAST(N'2020-05-13T09:01:54.703' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (52, CAST(N'2020-05-13T09:02:30.107' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (53, CAST(N'2020-05-13T09:02:44.107' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (54, CAST(N'2020-05-13T09:04:18.177' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (55, CAST(N'2020-05-13T09:05:20.227' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"75424b17-3d9f-49f7-9ecc-d08b4b7ccac4\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (56, CAST(N'2020-05-13T09:05:25.480' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (57, CAST(N'2020-05-13T09:07:42.903' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (58, CAST(N'2020-05-13T09:08:02.093' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"75424b17-3d9f-49f7-9ecc-d08b4b7ccac4\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (59, CAST(N'2020-05-13T09:08:26.857' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (60, CAST(N'2020-05-13T09:08:49.580' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (61, CAST(N'2020-05-13T09:09:18.177' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (62, CAST(N'2020-05-13T09:09:48.393' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (63, CAST(N'2020-05-13T09:10:06.370' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (64, CAST(N'2020-05-13T09:10:54.033' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (65, CAST(N'2020-05-13T09:15:42.173' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (66, CAST(N'2020-05-13T09:16:15.443' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (67, CAST(N'2020-05-13T09:16:45.580' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (68, CAST(N'2020-05-13T09:16:53.207' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (69, CAST(N'2020-05-13T09:18:45.423' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (70, CAST(N'2020-05-13T09:19:43.620' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1060,\"Key\":\"b99ba3e2-913f-4f58-9501-b5d25e805c15\",\"Removed\":false}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (71, CAST(N'2020-05-13T09:19:48.977' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (72, CAST(N'2020-05-13T09:19:58.163' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (73, CAST(N'2020-05-13T09:20:23.290' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (74, CAST(N'2020-05-13T09:20:51.677' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"41891025-23da-4d63-87db-4eaf55cedb68\",\"ChangeTypes\":2}]"}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (75, CAST(N'2020-05-13T09:25:49.267' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (76, CAST(N'2020-05-13T09:26:07.950' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (77, CAST(N'2020-05-13T09:26:21.210' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (78, CAST(N'2020-05-13T09:27:25.993' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (79, CAST(N'2020-05-13T09:27:51.717' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (80, CAST(N'2020-05-13T09:27:56.273' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (81, CAST(N'2020-05-13T09:28:00.483' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (82, CAST(N'2020-05-13T09:29:06.983' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (83, CAST(N'2020-05-13T09:30:11.003' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonIdCount":1,"JsonPayload":null}]', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT [P14184/D2] 8977FC3E78C34A688BAC8C423328B171', 1)
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1064, 1063)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1065, 1054)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1066, 1052)
SET IDENTITY_INSERT [dbo].[umbracoContentVersion] ON 

INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1, 1064, CAST(N'2020-05-13T15:43:46.523' AS DateTime), -1, 0, N'Homepage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (2, 1065, CAST(N'2020-05-13T15:43:53.203' AS DateTime), -1, 0, N'Articles Main')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (3, 1066, CAST(N'2020-05-13T15:43:57.857' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (4, 1064, CAST(N'2020-05-13T15:43:46.523' AS DateTime), -1, 1, N'Homepage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (5, 1065, CAST(N'2020-05-13T15:57:07.847' AS DateTime), -1, 0, N'Articles Main')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (6, 1066, CAST(N'2020-05-13T15:57:12.640' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (7, 1065, CAST(N'2020-05-13T15:57:07.847' AS DateTime), -1, 1, N'Articles Main')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (8, 1066, CAST(N'2020-05-13T15:57:44.463' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (9, 1066, CAST(N'2020-05-13T15:58:13.607' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (10, 1066, CAST(N'2020-05-13T16:04:18.033' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (11, 1066, CAST(N'2020-05-13T16:07:42.763' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (12, 1066, CAST(N'2020-05-13T16:08:26.730' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (13, 1066, CAST(N'2020-05-13T16:15:42.050' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (14, 1066, CAST(N'2020-05-13T16:16:15.310' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (15, 1066, CAST(N'2020-05-13T16:16:53.130' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (16, 1066, CAST(N'2020-05-13T16:18:45.263' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (17, 1066, CAST(N'2020-05-13T16:19:58.050' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (18, 1066, CAST(N'2020-05-13T16:20:23.157' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (19, 1066, CAST(N'2020-05-13T16:20:51.523' AS DateTime), -1, 0, N'Post1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (20, 1066, CAST(N'2020-05-13T16:20:51.523' AS DateTime), -1, 1, N'Post1')
SET IDENTITY_INSERT [dbo].[umbracoContentVersion] OFF
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-99, N'Umbraco.Label', N'Decimal', N'{"umbracoDataValueType":"DECIMAL"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-98, N'Umbraco.Label', N'Date', N'{"umbracoDataValueType":"TIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-97, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":10, "orderBy":"username", "orderDirection":"asc", "includeProperties":[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-96, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-95, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-94, N'Umbraco.Label', N'Date', N'{"umbracoDataValueType":"DATETIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-93, N'Umbraco.Label', N'Nvarchar', N'{"umbracoDataValueType":"BIGINT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-92, N'Umbraco.Label', N'Nvarchar', N'{"umbracoDataValueType":"STRING"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-91, N'Umbraco.Label', N'Integer', N'{"umbracoDataValueType":"INT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-90, N'Umbraco.UploadField', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-89, N'Umbraco.TextArea', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-88, N'Umbraco.TextBox', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-87, N'Umbraco.TinyMCE', N'Ntext', N'{"value":",code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-51, N'Umbraco.Integer', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-49, N'Umbraco.TrueFalse', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-43, N'Umbraco.CheckBoxList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-42, N'Umbraco.DropDown.Flexible', N'Nvarchar', N'{"multiple":true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-41, N'Umbraco.DateTime', N'Date', N'{"format":"YYYY-MM-DD"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-40, N'Umbraco.RadioButtonList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-39, N'Umbraco.DropDown.Flexible', N'Nvarchar', N'{"multiple":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-37, N'Umbraco.ColorPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-36, N'Umbraco.DateTime', N'Date', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1041, N'Umbraco.Tags', N'Ntext', N'{"group":"default", "storageType":"Json"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1043, N'Umbraco.ImageCropper', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1046, N'Umbraco.ContentPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1047, N'Umbraco.MemberPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1048, N'Umbraco.MediaPicker', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1049, N'Umbraco.MediaPicker', N'Ntext', N'{"multiPicker":1}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1050, N'Umbraco.MultiUrlPicker', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1056, N'Umbraco.TextBox', N'Nvarchar', N'{}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1057, N'Umbraco.TinyMCE', N'Ntext', N'{"editor":{"toolbar":["ace","styleselect","bold","italic","alignleft","aligncenter","alignright","bullist","numlist","outdent","indent","link","umbmediapicker","umbmacro","umbembeddialog"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"hideLabel":false,"ignoreUserStartNodes":false,"mediaParentId":null}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1058, N'Umbraco.UploadField', N'Nvarchar', N'{}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1059, N'Umbraco.TextBox', N'Nvarchar', N'{}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1060, N'Umbraco.TinyMCE', N'Ntext', N'{"editor":{"toolbar":["ace","removeformat","styleselect","bold","italic","alignleft","aligncenter","alignright","bullist","numlist","outdent","indent","link","umbmediapicker","umbmacro","umbembeddialog"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"hideLabel":false,"ignoreUserStartNodes":false,"mediaParentId":null}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1061, N'Umbraco.TextBox', N'Nvarchar', N'{}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1067, N'Umbraco.TinyMCE', N'Ntext', N'{"editor":{"toolbar":["ace","styleselect","bold","italic","alignleft","aligncenter","alignright","bullist","numlist","outdent","indent","link","umbmediapicker","umbmacro","umbembeddialog"],"stylesheets":["/css/Heading.css"],"maxImageSize":500,"mode":"classic"},"hideLabel":false,"ignoreUserStartNodes":false,"mediaParentId":null}')
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1064, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1065, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1066, 1, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1, 1062, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (2, 1053, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (3, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (4, 1062, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (5, 1053, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (6, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (7, 1053, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (8, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (9, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (10, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (11, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (12, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (13, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (14, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (15, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (16, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (17, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (18, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (19, 1051, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (20, 1051, 0)
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Core.Upgrader.State+Umbraco.Core', N'{2AB29964-02A1-474D-BD6B-72148D2A53A2}', CAST(N'2020-05-13T09:52:35.580' AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON 

INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName], [isDefaultVariantLang], [mandatory], [fallbackLanguageId]) VALUES (1, N'en-US', N'English (United States)', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-1000, 1, N'MainDom')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-340, 1, N'Languages')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-339, 1, N'KeyValues')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-338, 1, N'Domains')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-337, 1, N'MemberTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-336, 1, N'MediaTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-335, 1, N'MemberTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-334, 1, N'MediaTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-333, 1, N'ContentTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-332, 1, N'ContentTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-331, -1, N'Servers')
SET IDENTITY_INSERT [dbo].[umbracoLog] ON 

INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1, -1, 1051, N'Template', CAST(N'2020-05-13T15:28:10.903' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (2, -1, 1052, N'DocumentType', CAST(N'2020-05-13T15:28:10.967' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (3, -1, 1053, N'Template', CAST(N'2020-05-13T15:28:11.100' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (4, -1, 1054, N'DocumentType', CAST(N'2020-05-13T15:28:11.110' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (5, -1, 1056, N'DataType', CAST(N'2020-05-13T15:29:33.497' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (6, -1, 1057, N'DataType', CAST(N'2020-05-13T15:30:20.570' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (7, -1, 1058, N'DataType', CAST(N'2020-05-13T15:30:58.210' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (8, -1, 1054, N'DocumentType', CAST(N'2020-05-13T15:31:42.660' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (9, -1, 1059, N'DataType', CAST(N'2020-05-13T15:32:15.230' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (10, -1, 1060, N'DataType', CAST(N'2020-05-13T15:32:32.320' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (11, -1, 1061, N'DataType', CAST(N'2020-05-13T15:38:00.717' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (12, -1, 1052, N'DocumentType', CAST(N'2020-05-13T15:39:10.540' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (13, -1, 1062, N'Template', CAST(N'2020-05-13T15:39:28.387' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (14, -1, 1062, N'Template', CAST(N'2020-05-13T15:39:33.237' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (15, -1, 1062, N'Template', CAST(N'2020-05-13T15:39:35.453' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (16, -1, 1063, N'DocumentType', CAST(N'2020-05-13T15:40:40.493' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (17, -1, 1063, N'DocumentType', CAST(N'2020-05-13T15:40:46.197' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (18, -1, 1063, N'DocumentType', CAST(N'2020-05-13T15:40:50.127' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (19, -1, 1064, N'Document', CAST(N'2020-05-13T15:41:00.137' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (20, -1, 1065, N'Document', CAST(N'2020-05-13T15:42:30.107' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (21, -1, 1066, N'Document', CAST(N'2020-05-13T15:43:41.587' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (22, -1, 1064, N'Document', CAST(N'2020-05-13T15:43:46.580' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (23, -1, 1065, N'Document', CAST(N'2020-05-13T15:43:53.223' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (24, -1, 1066, N'Document', CAST(N'2020-05-13T15:43:57.870' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (25, -1, 1063, N'DocumentType', CAST(N'2020-05-13T15:44:22.453' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (26, -1, 1062, N'Template', CAST(N'2020-05-13T15:44:59.357' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (27, -1, 1062, N'Template', CAST(N'2020-05-13T15:49:37.887' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (28, -1, 1062, N'Template', CAST(N'2020-05-13T15:49:57.733' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (29, -1, 1062, N'Template', CAST(N'2020-05-13T15:50:25.240' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (30, -1, 1062, N'Template', CAST(N'2020-05-13T15:51:27.530' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (31, -1, 1062, N'Template', CAST(N'2020-05-13T15:52:02.903' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (32, -1, 1062, N'Template', CAST(N'2020-05-13T15:53:26.130' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (33, -1, 1062, N'Template', CAST(N'2020-05-13T15:53:40.760' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (34, -1, 1062, N'Template', CAST(N'2020-05-13T15:54:00.027' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (35, -1, 1062, N'Template', CAST(N'2020-05-13T15:55:21.160' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (36, -1, 1062, N'Template', CAST(N'2020-05-13T15:55:30.843' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (37, -1, 1062, N'Template', CAST(N'2020-05-13T15:55:52.877' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (38, -1, 1065, N'Document', CAST(N'2020-05-13T15:57:07.883' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (39, -1, 1066, N'Document', CAST(N'2020-05-13T15:57:12.660' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (40, -1, 1066, N'Document', CAST(N'2020-05-13T15:57:43.800' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (41, -1, 1066, N'Document', CAST(N'2020-05-13T15:57:44.480' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (42, -1, 1066, N'Document', CAST(N'2020-05-13T15:58:08.697' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (43, -1, 1066, N'Document', CAST(N'2020-05-13T15:58:13.613' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (44, -1, 1054, N'DocumentType', CAST(N'2020-05-13T15:58:34.770' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (45, -1, 1060, N'DataType', CAST(N'2020-05-13T15:59:13.813' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (46, -1, 1052, N'DocumentType', CAST(N'2020-05-13T15:59:16.267' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (47, -1, 1066, N'Document', CAST(N'2020-05-13T15:59:31.417' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (48, -1, 1051, N'Template', CAST(N'2020-05-13T16:01:24.397' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (49, -1, 1051, N'Template', CAST(N'2020-05-13T16:01:40.027' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (50, -1, 1051, N'Template', CAST(N'2020-05-13T16:01:54.697' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (51, -1, 1051, N'Template', CAST(N'2020-05-13T16:02:30.090' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (52, -1, 1051, N'Template', CAST(N'2020-05-13T16:02:44.100' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (53, -1, 1066, N'Document', CAST(N'2020-05-13T16:04:18.080' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (54, -1, 1067, N'DataType', CAST(N'2020-05-13T16:05:20.217' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (55, -1, 1052, N'DocumentType', CAST(N'2020-05-13T16:05:25.343' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (56, -1, -1, N'Stylesheet', CAST(N'2020-05-13T16:06:31.250' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (57, -1, -1, N'Stylesheet', CAST(N'2020-05-13T16:06:43.117' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (58, -1, 1066, N'Document', CAST(N'2020-05-13T16:07:42.810' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (59, -1, 1067, N'DataType', CAST(N'2020-05-13T16:08:02.057' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (60, -1, 1066, N'Document', CAST(N'2020-05-13T16:08:26.777' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (61, -1, 1052, N'DocumentType', CAST(N'2020-05-13T16:08:49.450' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (62, -1, 1051, N'Template', CAST(N'2020-05-13T16:09:18.170' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (63, -1, 1051, N'Template', CAST(N'2020-05-13T16:09:48.377' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (64, -1, 1051, N'Template', CAST(N'2020-05-13T16:10:06.363' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (65, -1, 1051, N'Template', CAST(N'2020-05-13T16:10:54.020' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (66, -1, 1066, N'Document', CAST(N'2020-05-13T16:15:42.093' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (67, -1, 1066, N'Document', CAST(N'2020-05-13T16:16:15.353' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (68, -1, 1066, N'Document', CAST(N'2020-05-13T16:16:45.503' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (69, -1, 1066, N'Document', CAST(N'2020-05-13T16:16:53.143' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (70, -1, 1066, N'Document', CAST(N'2020-05-13T16:18:45.323' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (71, -1, 1060, N'DataType', CAST(N'2020-05-13T16:19:43.587' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (72, -1, 1052, N'DocumentType', CAST(N'2020-05-13T16:19:48.857' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (73, -1, 1066, N'Document', CAST(N'2020-05-13T16:19:58.097' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (74, -1, 1066, N'Document', CAST(N'2020-05-13T16:20:23.197' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (75, -1, 1066, N'Document', CAST(N'2020-05-13T16:20:51.573' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (76, -1, 1062, N'Template', CAST(N'2020-05-13T16:25:49.257' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (77, -1, 1062, N'Template', CAST(N'2020-05-13T16:26:07.943' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (78, -1, 1062, N'Template', CAST(N'2020-05-13T16:26:21.203' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (79, -1, 1062, N'Template', CAST(N'2020-05-13T16:27:25.983' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (80, -1, 1062, N'Template', CAST(N'2020-05-13T16:27:51.703' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (81, -1, 1062, N'Template', CAST(N'2020-05-13T16:27:56.263' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (82, -1, 1062, N'Template', CAST(N'2020-05-13T16:28:00.480' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (83, -1, 1062, N'Template', CAST(N'2020-05-13T16:29:06.970' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (84, -1, 1062, N'Template', CAST(N'2020-05-13T16:30:10.997' AS DateTime), N'Save', NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
SET IDENTITY_INSERT [dbo].[umbracoNode] ON 

INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-99, N'8f1ef1e1-9de4-40d3-a072-6673f631ca64', -1, 1, N'-1,-99', 39, 0, -1, N'Label (decimal)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.610' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-98, N'a97cec69-9b71-4c30-8b12-ec398860d7e8', -1, 1, N'-1,-98', 38, 0, -1, N'Label (time)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.610' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-97, N'aa2c52a0-ce87-4e65-a47c-7df09358585d', -1, 1, N'-1,-97', 2, 0, -1, N'List View - Members', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.620' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-96, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', -1, 1, N'-1,-96', 2, 0, -1, N'List View - Media', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.620' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-95, N'c0808dd3-8133-4e4b-8ce8-e2bea84a96a4', -1, 1, N'-1,-95', 2, 0, -1, N'List View - Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.620' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-94, N'0e9794eb-f9b5-4f20-a788-93acd233a7e4', -1, 1, N'-1,-94', 37, 0, -1, N'Label (datetime)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.610' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-93, N'930861bf-e262-4ead-a704-f99453565708', -1, 1, N'-1,-93', 36, 0, -1, N'Label (bigint)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.610' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-92, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', -1, 1, N'-1,-92', 35, 0, -1, N'Label (string)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.610' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-91, N'8e7f995c-bd81-4627-9932-c40e568ec788', -1, 1, N'-1,-91', 36, 0, -1, N'Label (integer)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.610' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-90, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', -1, 1, N'-1,-90', 34, 0, -1, N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.613' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-89, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', -1, 1, N'-1,-89', 33, 0, -1, N'Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.613' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-88, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', -1, 1, N'-1,-88', 32, 0, -1, N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.613' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-87, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', -1, 1, N'-1,-87', 4, 0, -1, N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.617' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-51, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', -1, 1, N'-1,-51', 2, 0, -1, N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.617' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-49, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', -1, 1, N'-1,-49', 2, 0, -1, N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.617' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-43, N'fbaf13a8-4036-41f2-93a3-974f678c312a', -1, 1, N'-1,-43', 2, 0, -1, N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.617' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-42, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', -1, 1, N'-1,-42', 2, 0, -1, N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.617' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-41, N'5046194e-4237-453c-a547-15db3a07c4e1', -1, 1, N'-1,-41', 2, 0, -1, N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.617' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-40, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', -1, 1, N'-1,-40', 2, 0, -1, N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.617' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-39, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', -1, 1, N'-1,-39', 2, 0, -1, N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.617' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-37, N'0225af17-b302-49cb-9176-b9f35cab9c17', -1, 1, N'-1,-37', 2, 0, -1, N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.620' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-36, N'e4d66c0f-b935-4200-81f0-025f7256b89a', -1, 1, N'-1,-36', 2, 0, -1, N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.620' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-21, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', -1, 0, N'-1,-21', 0, 0, -1, N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(N'2020-05-13T09:52:34.607' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-20, N'0f582a79-1e41-4cf0-bfa0-76340651891a', -1, 0, N'-1,-20', 0, 0, -1, N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(N'2020-05-13T09:52:34.607' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-1, N'916724a5-173d-4619-b97e-b9de133dd6f5', -1, 0, N'-1', 0, 0, -1, N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(N'2020-05-13T09:52:34.597' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1031, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', -1, 1, N'-1,1031', 2, 0, -1, N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2020-05-13T09:52:34.620' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1032, N'cc07b313-0843-4aa8-bbda-871c8da728c8', -1, 1, N'-1,1032', 2, 0, -1, N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2020-05-13T09:52:34.623' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1033, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', -1, 1, N'-1,1033', 2, 0, -1, N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2020-05-13T09:52:34.623' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1041, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', -1, 1, N'-1,1041', 2, 0, -1, N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.623' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1043, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', -1, 1, N'-1,1043', 2, 0, -1, N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.623' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1044, N'd59be02f-1df9-4228-aa1e-01917d806cda', -1, 1, N'-1,1044', 0, 0, -1, N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(N'2020-05-13T09:52:34.623' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1046, N'fd1e0da5-5606-4862-b679-5d0cf3a52a59', -1, 1, N'-1,1046', 2, 0, -1, N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.623' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1047, N'1ea2e01f-ebd8-4ce1-8d71-6b1149e63548', -1, 1, N'-1,1047', 2, 0, -1, N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.627' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1048, N'135d60e0-64d9-49ed-ab08-893c9ba44ae5', -1, 1, N'-1,1048', 2, 0, -1, N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.627' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1049, N'9dbbcbbb-2327-434a-b355-af1b84e5010a', -1, 1, N'-1,1049', 2, 0, -1, N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.627' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1050, N'b4e3535a-1753-47e2-8568-602cf8cfee6f', -1, 1, N'-1,1050', 2, 0, -1, N'Multi URL Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T09:52:34.627' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1051, N'fe37562f-04a7-43d7-a0ee-b05cf8b8f306', -1, 1, N'-1,1051', 0, 0, NULL, N'Articles Item', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-05-13T15:28:10.873' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1052, N'6b489793-9235-4fcf-8084-ec894d2cbb30', 1055, 2, N'-1,1055,1052', 1, 0, -1, N'Articles Item', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-05-13T15:28:10.930' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1053, N'a213c97b-77f8-4c71-b58b-ebefaaf135c0', -1, 1, N'-1,1053', 0, 0, NULL, N'Articles Main', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-05-13T15:28:11.090' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1054, N'dbdbc324-ab6c-4df7-b34d-8f7af35e0915', 1055, 2, N'-1,1055,1054', 2, 0, -1, N'Articles Main', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-05-13T15:28:11.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1055, N'7f15977d-9d84-4d55-b322-af7196b1bbbd', -1, 1, N'-1,1055', 0, 0, -1, N'Pages', N'2f7a2769-6b0b-4468-90dd-af42d64f7f16', CAST(N'2020-05-13T15:28:23.420' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1056, N'90b17bfc-5b29-4a7a-b012-f9032fd76b2d', -1, 1, N'-1,1056', 29, 0, -1, N'Articles Main - Article Title - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T15:29:33.463' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1057, N'f1ed5d88-73a7-4b5a-8bbd-d27136a985a7', -1, 1, N'-1,1057', 30, 0, -1, N'Articles Main - Article Body Text - Rich Text Editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T15:30:20.547' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1058, N'8be40760-fcd0-4803-9ff8-341d976810c5', -1, 1, N'-1,1058', 31, 0, -1, N'Articles Main - Articles Thumbnail - File upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T15:30:58.203' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1059, N'8016dd5c-02ce-4219-8166-da3ca18b0fe3', -1, 1, N'-1,1059', 32, 0, -1, N'Articles Item - Article Title - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T15:32:15.217' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1060, N'b99ba3e2-913f-4f58-9501-b5d25e805c15', -1, 1, N'-1,1060', 33, 0, -1, N'Articles Item - Article Content - Rich Text Editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T15:32:32.303' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1061, N'1051ee44-6130-4460-b44f-f3f17a6dda4d', -1, 1, N'-1,1061', 34, 0, -1, N'Articles Item - Author - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T15:38:00.700' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1062, N'a85d7106-1ab5-410b-a290-54d08df6c02a', -1, 1, N'-1,1062', 0, 0, NULL, N'Master', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-05-13T15:39:28.370' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1063, N'5af18b50-81cd-42c3-aa36-e311175ef7ad', 1055, 2, N'-1,1055,1063', 2, 0, -1, N'Master', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-05-13T15:40:40.480' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1064, N'a13f4eb1-bb86-44c2-9c47-4b5143c70cbb', -1, 1, N'-1,1064', 0, 0, -1, N'Homepage', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-05-13T15:41:00.047' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1065, N'd33f7dc5-91f3-488c-a231-730774f95e06', 1064, 2, N'-1,1064,1065', 0, 0, -1, N'Articles Main', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-05-13T15:42:30.060' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1066, N'41891025-23da-4d63-87db-4eaf55cedb68', 1065, 3, N'-1,1064,1065,1066', 0, 0, -1, N'Post1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-05-13T15:43:41.553' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1067, N'75424b17-3d9f-49f7-9ecc-d08b4b7ccac4', -1, 1, N'-1,1067', 35, 0, -1, N'Articles Item - Article Title - Rich Text Editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-05-13T16:05:20.197' AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] ON 

INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (7, 2, 37, NULL, NULL, NULL, NULL, NULL, N'GIC ra mắt sản phẩm bảo hiểm du lịch toàn cầu Gic Global Safe', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (9, 2, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (11, 2, 39, NULL, NULL, NULL, NULL, NULL, N'/media/gkkp5bpr/a14.jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (13, 3, 41, NULL, NULL, NULL, NULL, NULL, N'GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (15, 3, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-description">Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div class="article-content">
<div>
<div>
<div>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
<span>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</span></div>
</div>
<div><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (17, 3, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (19, 5, 37, NULL, NULL, NULL, NULL, NULL, N'GIC ra mắt sản phẩm bảo hiểm du lịch toàn cầu Gic Global Safe', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (20, 7, 37, NULL, NULL, NULL, NULL, NULL, N'GIC ra mắt sản phẩm bảo hiểm du lịch toàn cầu Gic Global Safe', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (21, 5, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (22, 7, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (23, 5, 39, NULL, NULL, NULL, NULL, NULL, N'/media/gkkp5bpr/a14.jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (24, 7, 39, NULL, NULL, NULL, NULL, NULL, N'/media/gkkp5bpr/a14.jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (25, 6, 41, NULL, NULL, NULL, NULL, NULL, N'GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (27, 6, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-description">Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div class="article-content">
<div>
<div>
<div>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
<span>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</span></div>
</div>
<div><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (29, 6, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (34, 8, 41, NULL, NULL, NULL, NULL, NULL, N'GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (36, 8, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</p>
<p><br />Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</p>
<p> </p>
<p>MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe</p>
<p><br />GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<p> </p>
<p>Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự. <br />Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p>Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<p>“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p>Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p>Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<p>Dưới đây là một số hình ảnh của Hội thảo:</p>
<p><br />Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe</p>
<p><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</p>
<p> </p>
<p>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe</p>
<p> </p>
<p><br />Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm</p>
<p> </p>
<p><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p><br />Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (38, 8, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (43, 9, 41, NULL, NULL, NULL, NULL, NULL, N'GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (45, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (47, 9, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (52, 10, 41, NULL, NULL, NULL, NULL, NULL, N'GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (54, 10, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-description">Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div class="article-content">
<div>
<div>
<div>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
<span>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</span></div>
</div>
<div><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (56, 10, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (58, 11, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<p style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (60, 11, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-description">Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div class="article-content">
<div>
<div>
<div>
<p align="center"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
<span>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</span></div>
</div>
<div><br /><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (62, 11, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (64, 12, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (66, 12, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-description">Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div class="article-content">
<div>
<div>
<div>
<p align="center"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
<span>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</span></div>
</div>
<div><br /><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (68, 12, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (70, 13, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (72, 13, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-description">Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div class="article-content">
<div>
<div>
<div>
<p align="center"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
<span>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</span></div>
</div>
<div><br /><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (74, 13, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (76, 14, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (78, 14, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-description">Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div class="article-content">
<div>
<div>
<div>
<p align="center"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
<span>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</span></div>
</div>
<div><br /><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (80, 14, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (85, 15, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (87, 15, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-content">
<div>
<div>
<div>
<p style="text-align: start;" align="center"><span>Today is Friday</span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (89, 15, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (91, 16, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (93, 16, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div class="article-description">Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div class="article-content">
<div>
<div>
<div>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
<span>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</span></div>
</div>
<div><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (95, 16, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (97, 17, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (99, 17, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div>
<div>
<div>
<div>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
</div>
<div><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (101, 17, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (103, 18, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (105, 18, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div>
<div>
<div>
<div>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
</div>
<div><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (107, 18, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (109, 19, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (110, 20, 41, NULL, NULL, NULL, NULL, NULL, NULL, N'<h1 style="text-align: center;">GIC RA MẮT SẢN PHẨM BẢO HIỂM DU LỊCH TOÀN CẦU GIC GLOBAL SAFE</h1>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (111, 19, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div>
<div>
<div>
<div>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
</div>
<div><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (112, 20, 42, NULL, NULL, NULL, NULL, NULL, NULL, N'<div>Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
<div>
<div>
<div>
<div>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A4.jpg" alt="" /></p>
Ngày 23/11/2018 - Tại khách sạn Novotel Đà Nẵng và Ngày 29/11/2018 – Tại khách sạn Movenpick Hotel Hà Nội, Tổng Công ty Cổ phần Bảo hiểm Toàn cầu GIC và Amadeus Việt Nam đã phối hợp tổ chức Hội thảo giới thiệu sản phẩm<a name="_Hlk531767691"></a> “Bảo hiểm Du lịch Toàn Cầu GIC Global Safe”. Chương trình Hội thảo lần này có sự tham gia góp mặt của hơn 180 đối tác, Đại lý Phòng vé, Công ty du lịch lữ hành trên địa bàn Đà Nẵng và Hà Nội cùng đội ngũ nhân viên, Ban Lãnh Đạo của GIC và Amadeus Việt Nam.</div>
</div>
<div><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A5.jpg" alt="" /></div>
<div><em><br />MC giới thiệu khai mạc chương trình Hội thảo GIC Global Safe<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A6.jpg" alt="" /><br /></em>
<p>GIC và Amadeus Việt Nam giao lưu gặp gỡ với các Đại lý tham dự Hội thảo</p>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A7.jpg" alt="" /></em></div>
<div><br />Hội thảo thu hút nhiều các Đại lý, Đối tác, Phòng vé trên địa bàn Đà Nẵng và Hà Nội tham dự.<em> </em></div>
</div>
</div>
<p>Thị trường du lịch Việt Nam trong những năm qua có những bước phát triển thật ấn tượng, đứng thứ 6/10 quốc gia có tốc độ phát triển trong ngành du lịch thế giới. Riêng trong năm 2017, lượng khách du lịch nội địa đạt 73,2 triệu lượt, tăng trưởng 18% so với năm 2016. Trong khi đó số lượng khách Việt Nam đi du lịch nước ngoài cũng tăng mạnh, đạt 6,5 triệu lượt khách trong năm 2016, tăng trưởng khoảng 15%.</p>
<p align="justify">Bảo hiểm Du lịch được xem là “Giấy thông hành quan trọng thứ hai sau hộ chiếu”, đóng vai trò cốt yếu khi du khách phải đối mặt với những sự cố không mong muốn trong hành trình du lịch nước ngoài. Với phương châm “Đồng hành cùng bạn trên mỗi chuyến đi” và mong nuốn giúp khách hàng an tâm tận hưởng khoảng thời gian tuyệt vời trên từng chuyến đi du lịch nước ngoài, GIC phối hợp cùng ERGO (Một trong những Nhà bảo hiểm lớn nhất tại Đức và Châu Âu) cho ra mắt sản phẩm “Bảo hiểm Du lịch Toàn Cầu <a name="_Hlk531767563"></a>GIC Global Safe”. Đặc biệt, sản phẩm được tích hợp trực tiếp trên hệ thống booking hiện đại của Amadeus, giúp các Phòng vé và Đại lý thực hiện việc cấp đơn bảo hiểm cho khách hàng một cách nhanh chóng và tiện lợi.</p>
<div>
<div>
<p align="justify">“Bảo hiểm Du lịch Toàn Cầu GIC Global Safe” là dòng sản phẩm bảo hiểm mới của GIC dành cho khách hàng đi du lịch từ Việt Nam ra nước ngoài. Sản phẩm được Bộ Tài Chính cấp phép triển khai chính thức từ ngày 08/10/2018. Sản phẩm mang đến những quyền lợi vượt trội cho khách hàng như: Bao gồm 24 quyền lợi bảo hiểm thiết yếu dành cho người đi du lịch nước ngoài, Mức trách nhiệm bảo hiểm tai nạn cá nhân lên đến 6.3 tỷ đồng, Gói bảo hiểm bảo vệ khách hàng trong trường hợp bị không tặc, khủng bố khi đi nước ngoài, Chi trả chi phí y tế trực tiếp ở nước ngoài khi khách hàng nằm viện (không giới hạn chi phí tối thiểu để bảo lãnh viện phí). Dịch vụ trợ giúp khẩn cấp 24/24 của EURO CENTER có hơn 45 năm kinh nghiệm hoạt động với 14 trung tâm hỗ trợ khẩn cấp và tổng đài đa ngôn ngữ, bao gồm tiếng Việt. Đặc biệt, GIC Global Safe có các gói bảo hiểm được thiết kế dành riêng cho Khối Schegen, đáp ứng các nhu cầu bảo hiểm thiết yếu và xin VISA của Khách hàng khi đi du lịch đến khu vực này với mức phí bảo hiểm hợp túi tiền.</p>
<p align="justify"> Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng cho biết: ‘’Thị trường du lịch phát triển vô cùng năng động đi kèm với áp lực cạnh tranh ngày càng tăng đối với các Đại lý phân phối vé máy bay và tour du lịch, không chỉ về mặt chi phí vận hành mà còn về chất lượng sản phẩm mà Đại lý phân phối. Nắm được thị trường du lịch đang dần tăng trưởng, với mong muốn giúp các Đại lý đa dạng hóa sản phẩm, đa dạng hóa nguồn thu, GIC và Amadeus Việt Nam phối hợp tổ chức buổi hội thảo ngày hôm nay để giới thiệu đến Quý Anh/Chị đại lý sản phẩm GIC Global Safe được tích hợp trên hệ thống booking của Amadeus”.</p>
<p align="justify">Đặc biệt mọi thắc mắc của khách tham dự về sản phẩm đều được ghi nhận, tận tình hướng dẫn và giải đáp trực tiếp ngay trong buổi hội thảo bởi GIC và Amadeus Việt Nam. Điều này đã góp phần củng cố niềm tin cho kênh phân phối vào chất lượng của thương hiệu GIC. Kết thúc buổi hội thảo, các quan khách dùng tiệc trưa tại khách sạn, cùng nhau giao lưu, chia sẻ kinh nghiệm thành công, chụp ảnh tặng quà lưu niệm với các giải thưởng đặc biệt đến từ Ban Tổ Chức chương trình.</p>
<span>Dưới đây là một số hình ảnh của Hội thảo: <br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/IMG_2972.jpg" alt="" /><br /></span>
<div><em>Trung tâm Hội nghị Movenpick - Hà Nội nơi diễn ra hội thảo GIC Global Safe<br /><br /></em></div>
<div><img src="http://www.gic.com.vn/images/news/233/4073/4243/A3.jpg" alt="" /><em><br />Bà Lê Thị Phương Mai – Giám đốc Công ty Bảo hiểm Toàn Cầu Đà Nẵng phát biểu tại buổi hội thảo</em></div>
<div><em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A8.jpg" alt="" /></em></div>
<div> </div>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A9.jpg" alt="" /></em></div>
<em>Quan khách nghe trình bày và giới thiệu về sản phẩm GIC Global Safe<br /><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A10.jpg" alt="" /></em></div>
<em><br /></em>
<div><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/V22%20(2).jpg" alt="" /></em><em> </em><em><img src="http://www.gic.com.vn/images/news/233/4073/4243/A11.jpg" alt="" /></em></div>
<p align="center">Nhân viên GIC và Amadues Việt Nam tư vấn và hướng dẫn Đại lý sử dụng sản phẩm<br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A12.jpg" alt="" /><br /><br /><img src="http://www.gic.com.vn/images/news/233/4073/4243/A13.jpg" alt="" /><br />GIC tặng quà tri ân đại lý tham dự Hội thảo</p>
<p align="center"><img src="http://www.gic.com.vn/images/news/233/4073/4243/A14.jpg" alt="" /><br /><span>Ban Lãnh Đạo và đội ngũ nhân viên GIC và Amadeus Việt Nam chụp hình lưu niệm<br /></span></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (113, 19, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (114, 20, 43, NULL, NULL, NULL, NULL, NULL, N'Administrator', NULL)
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] OFF
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, N'4cbeb612-e689-3563-b755-bf3ede295433', 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (2, N'0cc3507c-66ab-3091-8913-3d998148e423', 0, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Parent Document On Delete', N'relateParentDocumentOnDelete')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (3, N'8307994f-faf2-3844-bab9-72d34514edf2', 0, N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'Relate Parent Media Folder On Delete', N'relateParentMediaFolderOnDelete')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (4, N'4954ce93-3bf9-3d1e-9cd2-21bf9f9c2abf', 0, NULL, NULL, N'Related Media', N'umbMedia')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (5, N'0b93e414-5abe-36ec-a6bb-516e56f12238', 0, NULL, NULL, N'Related Document', N'umbDocument')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
SET IDENTITY_INSERT [dbo].[umbracoServer] ON 

INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isMaster]) VALUES (1, N'http://localhost/umbraco', N'LAPTOP-MLEJ55T5//LM/W3SVC/2/ROOT', CAST(N'2020-05-13T09:53:13.117' AS DateTime), CAST(N'2020-05-13T16:34:29.060' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [avatar], [tourData]) VALUES (-1, 0, 0, N'Truc Phan', N'anhtruc1234@gmail.com', N'2BFslcWPmgpIw6FHo7MNXA==f9JK6bkqvNOdVAEEY4kTY8rGIRLH9rq16CfpQxZojCg=', N'{"hashAlgorithm":"HMACSHA256"}', N'anhtruc1234@gmail.com', N'en-US', N'06b1abc9-add9-4c52-a097-a5638fdf9084', 0, NULL, CAST(N'2020-05-13T09:52:36.470' AS DateTime), CAST(N'2020-05-13T15:27:15.450' AS DateTime), NULL, NULL, CAST(N'2020-05-13T09:52:34.447' AS DateTime), CAST(N'2020-05-13T15:27:19.170' AS DateTime), NULL, N'[{"alias":"umbIntroIntroduction","completed":false,"disabled":true}]')
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 1)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 5)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] ON 

INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F7ï', CAST(N'2020-05-13T09:52:35.413' AS DateTime), CAST(N'2020-05-13T09:52:35.413' AS DateTime), N'icon-medal', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (2, N'writer', N'Writers', N'CAH:F', CAST(N'2020-05-13T09:52:35.423' AS DateTime), CAST(N'2020-05-13T09:52:35.423' AS DateTime), N'icon-edit', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5Fï', CAST(N'2020-05-13T09:52:35.423' AS DateTime), CAST(N'2020-05-13T09:52:35.423' AS DateTime), N'icon-tools', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (4, N'translator', N'Translators', N'AF', CAST(N'2020-05-13T09:52:35.423' AS DateTime), CAST(N'2020-05-13T09:52:35.423' AS DateTime), N'icon-globe', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (5, N'sensitiveData', N'Sensitive data', N'', CAST(N'2020-05-13T09:52:35.423' AS DateTime), CAST(N'2020-05-13T09:52:35.423' AS DateTime), N'icon-lock', -1, -1)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] OFF
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'member')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'packages')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'settings')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'translation')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'users')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (2, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (4, N'translation')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'b01847b5-adff-4b6e-a532-dc5473ee33bc', -1, CAST(N'2020-05-13T08:27:16.077' AS DateTime), CAST(N'2020-05-13T09:31:55.637' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'cfd0f2b2-3ffd-4f0e-8b1d-fc1bd552e64e', -1, CAST(N'2020-05-13T02:53:23.880' AS DateTime), CAST(N'2020-05-13T02:58:29.830' AS DateTime), NULL, N'::1')
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isContainer]  DEFAULT ('0') FOR [isContainer]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isElement]  DEFAULT ('0') FOR [isElement]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroUseInEditor]  DEFAULT ('0') FOR [macroUseInEditor]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroRefreshRate]  DEFAULT ('0') FOR [macroRefreshRate]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ('1') FOR [macroCacheByPage]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ('0') FOR [macroCachePersonalized]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ('0') FOR [macroDontRender]
GO
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertySortOrder]  DEFAULT ('0') FOR [macroPropertySortOrder]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_isSensitive]  DEFAULT ('0') FOR [isSensitive]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_UniqueID]  DEFAULT (newid()) FOR [UniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_uniqueID]  DEFAULT (newid()) FOR [uniqueID]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAudit] ADD  CONSTRAINT [DF_umbracoAudit_eventDateUtc]  DEFAULT (getdate()) FOR [eventDateUtc]
GO
ALTER TABLE [dbo].[umbracoCacheInstruction] ADD  CONSTRAINT [DF_umbracoCacheInstruction_instructionCount]  DEFAULT ('1') FOR [instructionCount]
GO
ALTER TABLE [dbo].[umbracoConsent] ADD  CONSTRAINT [DF_umbracoConsent_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoContentVersion] ADD  CONSTRAINT [DF_umbracoContentVersion_versionDate]  DEFAULT (getdate()) FOR [versionDate]
GO
ALTER TABLE [dbo].[umbracoExternalLogin] ADD  CONSTRAINT [DF_umbracoExternalLogin_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoKeyValue] ADD  CONSTRAINT [DF_umbracoKeyValue_updated]  DEFAULT (getdate()) FOR [updated]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_isDefaultVariantLang]  DEFAULT ('0') FOR [isDefaultVariantLang]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_uniqueId]  DEFAULT (newid()) FOR [uniqueId]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[cmsContentNu]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cmsContentNu] CHECK CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[umbracoDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsContent]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
ALTER TABLE [dbo].[cmsTags]  WITH CHECK ADD  CONSTRAINT [FK_cmsTags_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsTags] CHECK CONSTRAINT [FK_cmsTags_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id1] FOREIGN KEY([loginNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id1]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id2] FOREIGN KEY([noAccessNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id2]
GO
ALTER TABLE [dbo].[umbracoAccessRule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY([accessId])
REFERENCES [dbo].[umbracoAccess] ([id])
GO
ALTER TABLE [dbo].[umbracoAccessRule] CHECK CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id] FOREIGN KEY([availableUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoDataType]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDataType] CHECK CONSTRAINT [FK_umbracoDataType_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocument]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocument] CHECK CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoDomain]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomain_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomain] CHECK CONSTRAINT [FK_umbracoDomain_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoLanguage]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id] FOREIGN KEY([fallbackLanguageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoLanguage] CHECK CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoLog]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLog_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoLog] CHECK CONSTRAINT [FK_umbracoLog_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoMediaVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoMediaVersion] CHECK CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoUser_id] FOREIGN KEY([nodeUser])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startContentId_umbracoNode_id] FOREIGN KEY([startContentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startContentId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startMediaId_umbracoNode_id] FOREIGN KEY([startMediaId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startMediaId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2App]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2App] CHECK CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] CHECK CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] CHECK CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserLogin]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserLogin] CHECK CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id] FOREIGN KEY([startNode])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id]
GO
