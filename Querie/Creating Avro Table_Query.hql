CREATE TABLE avro1_table
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
TBLPROPERTIES (
    'avro.schema.literal'='{
      "namespace": "com.saket.avro",
      "name": "Sfsalary_data",
      "type": "record",
      "fields": 
      [ { "name":"Employee_Id","type":"int"},
      { "name":"EmployeeName","type":"string"}, 
      { "name":"JobTitle","type":"string"},
      { "name":"BasePay","type":"int"},
       { "name":"OvertimePay","type":"int"},
        { "name":"OtherPay","type":"int"},
{ "name":"Benefits","type":"int"},
      { "name":"TotalPay","type":"int"}, 
      { "name":"TotalPayBenefits","type":"int"},
      { "name":"Year","type":"int"},
       { "name":"Agency","type":"string"},
        { "name":"Status","type":"string"}]
    }');

