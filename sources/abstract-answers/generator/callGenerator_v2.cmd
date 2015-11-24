call %AA_BASE_PATH%\setEnvironment.cmd
java org.apache.xalan.xslt.Process -IN .\generatorInputData_v2.xml -XSL .\modern-format\modern-format.xsl -OUT ..\..\..\httpdocs\abstract-answers\generator\modern-format\what-is-an-etf.html
pause