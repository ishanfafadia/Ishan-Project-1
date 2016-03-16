Create Table totalpay_data
(
	year int,
	totalpay int
);

INSERT OVERWRITE TABLE totalpay_data

Select Year,max(TotalPay) from avro_table
group by Year order by 1;
