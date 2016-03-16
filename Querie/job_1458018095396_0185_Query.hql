INSERT OVERWRITE TABLE avro1_table SELECT Employee_Id,EmployeeName,
JobTitle,BasePay,OvertimePay,OtherPay,TotalPay,TotalPayBenefits,Year,Agency,Status
FROM salary_data;
