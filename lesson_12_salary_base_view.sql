USE SalaryBase;

select [id], [first_name], [last_name], 
[experienceYears], [passedExams], [dateOfBirth], [email],
[phone]
from dbo.salary
where passedExams > 30; 




