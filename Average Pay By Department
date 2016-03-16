INSERT OVERWRITE TABLE AVERAGE1_DATA
select  JobType,percentile(cast(Totalpay as bigint), 0.5),count (*) as Records from 


(
select case when upper(jobtitle) like '%FIRE%' then 'Fire'
when upper(jobtitle) like '%POLICE%' then 'Police'
when upper(jobtitle) like '%SHERIFF%' then 'Police'
when upper(jobtitle) like '%PROBATION%' then 'Police'
when upper(jobtitle) like '%SERGEANT%' then 'Police'

when upper(jobtitle) like '%MTA%' then 'Transit'
when upper(jobtitle) like '%TRANSIT%' then 'Transit'

when upper(jobtitle) like '%ANESTH%' then 'Medical'
when upper(jobtitle) like '%MEDICAL%' then 'Medical'
when upper(jobtitle) like '%NURSE%' then 'Medical'
when upper(jobtitle) like '%HEALTH%' then 'Medical'
when upper(jobtitle) like '%PYSICIAN%' then 'Medical'
when upper(jobtitle) like '%ORTHOPEDIC%' then 'Medical'
when upper(jobtitle) like '%PHARM%' then 'Medical'
when upper(jobtitle) like '%health%' then 'Medical'
when upper(jobtitle) like '%AIRPORT%' then 'Airport'
when upper(jobtitle) like '%ANIMAL%' then 'Animal'
when upper(jobtitle) like '%ARCHITECT%' then 'Architectural'
when upper(jobtitle) like '%COURT%' then 'Court'
when upper(jobtitle) like '%LEGAL%' then 'Court'
when upper(jobtitle) like '%MAYOR%' then 'Mayor'
when upper(jobtitle) like '%LIBRARY%' then 'Library'
when upper(jobtitle) like '%PARKING%' then 'Parking'
when upper(jobtitle) like '%Public Works%' then 'Public Works'
when upper(jobtitle) like '%ATTORNEY%' then 'Attorney'
when upper(jobtitle) like '%MECHANIC%' then 'Automotive'
when upper(jobtitle) like '%AUTOMOTIVE%' then 'Automotive'
when upper(jobtitle) like '%CUSTODIAN%' then 'Custodian'
when upper(jobtitle) like '%ENGINEER%' then 'Engineering'
when upper(jobtitle) like '%ENGR%' then 'Engineering'
when upper(jobtitle) like '%ACCOUNT%' then 'Accounting'
when upper(jobtitle) like '%GARDENER%' then 'Gardening'
when upper(jobtitle) like '%GENERAL LABORER%' then 'General Laborer'
when upper(jobtitle) like '%FOOD SERV%' then 'Food Service'
when upper(jobtitle) like '%CLERK%' then 'Clerk'
when upper(jobtitle) like '%PORTER%' then 'Porter'

else 'Other' end JobType,
TotalPay
from avro_table )
JobType group by JobType;

