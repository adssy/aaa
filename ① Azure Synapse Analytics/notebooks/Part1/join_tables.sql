create TABLE final_table
with (distribution = ROUND_ROBIN)
as
select c.*, d.churn_timestamp, d.churn
from
(select a.identifierid, a.level, a.race, a.charclass, a.guild, a.log_timestamp, b.*
from wow_logs a
left join zones b on a.zoneid = b.Zoneid) c
left join churners d on c.identifierid = d.identifierid
;

select top(10) *
from final_table
;
select count(*)
from final_table
