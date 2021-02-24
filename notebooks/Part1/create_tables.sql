CREATE TABLE dbo.zones
(
    Zoneid nvarchar(100),
    Continent nvarchar(100),
    Area nvarchar(100),
    Zone nvarchar(100),
    Subzone nvarchar(100),
    Type nvarchar(100),
    Size int,
    Controlled nvarchar(100),
    Min_req_level int,
    Min_rec_level int,
    Max_rec_level int,
    Min_bot_level int,
    Max_bot_level int
);
CREATE TABLE dbo.churners
(
    identifierid nvarchar(100),
    churn_timestamp nvarchar(100),
    churn nvarchar(100)
);
CREATE TABLE dbo.wow_logs
(
    identifierid nvarchar(100),
    level int,
    race nvarchar(100),
    charclass nvarchar(100),
    zoneid nvarchar(100),
    guild int,
    log_timestamp nvarchar(100)
);
