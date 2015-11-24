set CLASSPATH=D:\Portable\xalan-j_2_7_2\xalan.jar
java org.apache.xalan.xslt.Process -IN .\abstractanswers.xml -XSL .\sections-format\sections-format.xsl -OUT ..\..\..\httpdocs\abstract-answers\generator\sections-format\what-is-an-etf.html
pause