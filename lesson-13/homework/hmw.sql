Easy tasks
1 Select concat('100','-','Steven',' ','King')
    
2 Select replace(PHONE_NUMBER,'124','999')
    from Employees
    
3 SELECT FIRST_NAME, len(FIRST_NAME) as [Lenghts]
    FROM Employees
    WHERE (FIRST_NAME LIKE 'A%'
    OR FIRST_NAME LIKE 'J%' 
    OR FIRST_NAME LIKE 'M%')
    
4 select MANAGER_ID,
    Sum(SALARY) as Total_salary
    from Employees
  Group by MANAGER_ID
    
5 select Year1,
    greatest(Max1,Max2,Max3)
    from TestMax
    
6 select*from cinema
    where rating>'6.2'
    and id not like '4'
    
7 select*from SingleOrder
    order by
    case when id=0 then 1 else 0 end; 

8 

    
Medium Tasks
1 SELECT 
  StudentID,
  Grade,
  -- Имя (первое слово)
  LEFT(FullName, CHARINDEX(' ', FullName) - 1) AS FirstName,

  -- Отчество (второе слово)
  SUBSTRING(
    FullName,
    CHARINDEX(' ', FullName) + 1,
    CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1) - CHARINDEX(' ', FullName) - 1
  ) AS MiddleName,

  -- Фамилия (оставшееся после второго пробела)
  RIGHT(
    FullName,
    LEN(FullName) - CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1)
  ) AS LastName

FROM Students;

2 
