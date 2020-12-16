/****** Script for SelectTopNRows command from SSMS  ******/
/****** test  ******/
SELECT 
      [PositionName],
	  c.DistrictName ,
	  b.ChanyeFenlei
      ,[PositionType2]
      ,[PositionDesc]
      ,[NeedCount] as '需求'
      ,[EducationDemand] as '学历'
      ,[MinAge]
      ,[MaxAge]
      ,[WorkExpDemand]
      ,[Sarlry] as '年薪'
      ,[WorkPlace]
      ,[HasDorn]
      ,[AcceptGraduate]
      ,[OtherDesc]
      ,[KeyWords]
      ,[Note]
      ,[IsDelete]
      ,[BusinessTypeNo]
      ,[ContactId]
      ,[TempId]
      ,[AcceptAutoMail]
      ,[Sequence]
      ,[ResumeAcceptEmail]
      ,[AcceptEmail]
      ,[PositionType2_2]
      ,[MajorType2_2]
  FROM [HrMarket2007].[dbo].[UnitPositions]as a  left join [HrMarket2007].[dbo].[PublishPosition] as d 
  on a.PositionId=d.PositionId
  left join UnitInfo b
on a.UnitId=b.UnitId
left join District c
on b.UnitLocation=c.DistrictNo
  where a.CreateDate>='2020-03-25' and d.TypeId=31 order by c.DistrictNo
