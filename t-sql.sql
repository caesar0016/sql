declare @counter int;
declare @countRow int;

set @countRow = (select count(id) from Records);

set @counter = 1;

while( @counter <= @countRow)

Begin

	Declare @id int;
	Declare @FirstName varchar(35);
	Declare @LastName varchar(35);
	Declare @Age int;
	Declare	@Gender varchar(15);
	Declare @level varchar(25);

	Select @FirstName = FirstName, @LastName = LastName, @Gender = Gender, @level = level, @Age = age from Records where ID = @counter;

	if @Age >= 14 And @Age <=16
		select @level = 'Freshman';
	else if @Age >= 17 and @Age <= 19
		select @level = 'Sophomore'
	else if @Age >= 20 and @Age <= 22
		select @level = 'Junior'
	else if @Age >= 23 and @Age <=25
		select @level = 'Senior'
	else
		select @level = 'Unknown';

	--age gender --level

	Print 'ID:' + Cast(@counter as varchar) +'  | FirstName: ' + @FirstName + ' | ' +
			'LastName: ' + @lastName  + ' | ' + 
			'Age: ' + Cast(@age as varchar) + ' | ' + 
			'Gender: ' + @gender + '|' + 
			'Level: ' +lower(@level);

set @counter = @counter + 1;
End


