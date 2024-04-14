select * from [Adress]
select * from [Cat]
select * from [Owner]

select o.[Name]+ ' ' + o.[Surname] as 'Person', o.[PhoneNumber] as 'Phone',
a.[Apt]+' ' +a.[Street]+', '+a.[City]+', '+a.[Region]+', '+a.[Country] as 'Adress',
c.[Name], c.[Age], c.[Color], c.[TypeName]
from [Owner] as o, [Cat] as c, [Adress] as a
where o.[AdressId] = a.[Id] and  o.[CatId] = c.[Id] and c.[Age] = 2