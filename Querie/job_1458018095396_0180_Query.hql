CREATE TABLE Record1_DATA
(Year int,
Meanpay int,
Records int
);

INSERT OVERWRITE TABLE Record1_DATA
SELECT year, percentile(cast(Totalpay as bigint), 0.5) , count(*) Records from avro_table
group by year order by 1;
