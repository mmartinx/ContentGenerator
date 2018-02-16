create table dbo.ResxSystem
(
	Id int not null primary key identity(1, 1),
	[Name] varchar(255) not null,
	CreatedBy int not null references [User](Id),
	CreatedOn datetime not null default(getdate()),
	LastUpdatedBy int not null references [User](Id),
	LastUpdatedOn datetime not null default(getdate())
)