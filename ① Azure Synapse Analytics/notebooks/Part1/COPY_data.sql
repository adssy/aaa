COPY INTO [dbo].[zones] 
FROM 'https://aaadatalake.blob.core.windows.net/filesystem/zones.csv'
    WITH(
        FIRSTROW = 2
    )
;
COPY INTO [dbo].[churners] 
FROM 'https://aaadatalake.blob.core.windows.net/filesystem/churners.csv'
    WITH(
        FIRSTROW = 2
    )
;
COPY INTO [dbo].[wow_logs] 
FROM 'https://aaadatalake.blob.core.windows.net/filesystem/WoW_Logs.csv'
    WITH(
        FIRSTROW = 2
    )
;

--데이터 확인
select top(10) *
from churners
;
select count(*)
from churners
;
select top(10) *
from zones
;
select count(*)
from zones
;
select top(10) *
from wow_logs
;
select count(*)
from wow_logs
;

