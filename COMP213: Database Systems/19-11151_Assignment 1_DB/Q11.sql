use db_20181010_A;
select SName from Student where SName like 'S%' and SFee>50000 and SProgram=(select SProgram from Student where SID='009');