create table dbo.ResxFileItem
(
	ResxFileId int not null references ResxFile(Id),
	[Language] varchar(25) references [Language](CultureCode),
	[Key] varchar(255) not null,
	[Value] nvarchar(max) not null,
	CreatedBy int not null references [User](Id),
	CreatedOn datetime not null default(getdate()),
	LastUpdatedBy int not null references [User](Id),
	LastUpdatedOn datetime not null default(getdate()),
	primary key (ResxFileId, [Language], [Key])
)