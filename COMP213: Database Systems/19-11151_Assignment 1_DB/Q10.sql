use db_20181010_A;
select SName from Student where SProgram= (select SProgram from Student where SID='009');