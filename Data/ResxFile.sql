create table ResxFile
(
	Id int not null primary key identity(1, 1),
	ResxSystemId int not null references ResxSystem(Id),
	CreatedBy int not null references [User](Id),
	CreatedOn datetime not null default(getdate()),
	LastUpdatedBy int not null references [User](Id),
	LastUpdatedOn datetime not null default(getdate())
)