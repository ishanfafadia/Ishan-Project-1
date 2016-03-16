Create Table benefits_data
(
	year int,
	Benefits int
);

INSERT OVERWRITE TABLE benefits_data
Select Year,Sum(Benefits) from avro_table
group by year order by 1
