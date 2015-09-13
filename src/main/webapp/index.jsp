<%@page import="org.mariadb.jdbc.Driver"%>
<%@ page language="java" import="java.util.*" %>
<%@ page import="java.sql.*"%>

<%
Connection conn=null;
Statement stat=null;
ResultSet set=null;
Class.forName("org.mariadb.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mariadb://localhost:3306/Humau", "root","123456");
stat=conn.createStatement();
set=stat.executeQuery("select * from sysusers");

%>
<html>
<body>
<h2>Hello World!</h2>
<%
while(set.next())
{%>

	<%=set.getString("username")+"11" %>
	<%
}
conn.close();
%>
</body>
</html>
