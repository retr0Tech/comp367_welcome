<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>

<%
    Calendar cal = Calendar.getInstance();
    cal.setTime(new Date());
    int hour = cal.get(Calendar.HOUR_OF_DAY);

    String greeting = "";
    if (hour >= 0 && hour < 12) {
        greeting = "Good morning";
    } else if (hour >= 12 && hour < 18) {
        greeting = "Good afternoon";
    } else {
        greeting = "Good evening";
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to COMP367</title>
    </head>
    <body>
        <h1><%=greeting%>, Elliot Ruiz Welcome to COMP367</h1>
    </body>
</html>
