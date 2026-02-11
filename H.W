SQL> SELECT COUNT()
  2  FROM EMP
  3  WHERE DEPTNO=10;
SELECT COUNT()
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> 
SQL> ED
Wrote file afiedt.buf

  1  SELECT COUNT()
  2  FROM EMP
  3* WHERE DEPTNO='10,
SQL> /
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> ED
Wrote file afiedt.buf

  1  SELECT COUNT()
  2  FROM EMP
  3* WHERE DEPTNO='10'
SQL> /
SELECT COUNT()
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> ed
Wrote file afiedt.buf

  1  SELECT COUNT(EMPNO)
  2  FROM EMP
  3* WHERE DEPTNO='10'
SQL> /

COUNT(EMPNO)                                                                    
------------                                                                    
           3                                                                    

SQL> SELECT COUNT(COMM)
  2  FROM EMP
  3  WHERE COMMIS NOT NULL;
WHERE COMMIS NOT NULL
                 *
ERROR at line 3:
ORA-00920: invalid relational operator 


SQL> ED
Wrote file afiedt.buf

  1  SELECT COUNT(COMM)
  2  FROM EMP
  3* WHERE COMM IS NOT NULL
SQL> /

COUNT(COMM)                                                                     
-----------                                                                     
          4                                                                     

SQL> SPOOL OFF
