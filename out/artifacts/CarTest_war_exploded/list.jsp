<%@ page import="java.io.PrintStream" %>
<%@ page import="Dao.Service" %>
<%@ page import="model.Item" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Win7uX32
  Date: 2015/7/20
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String user=request.getParameter("user");

    Service.start();
   List<Item> list=Service.lst;
    response.setContentType("text/html;charSet=GBK");
    if(user.equals("")||user==null){

    }
    else {
        out.println("<html>\n" +
                "  <head>\n" +
                "    <title>List</title>\n" +
                "  </head>\n" +
                "  <body>\n<table>");
        int i=0;
        for(Item p:list){
            out.println("<tr>\n" +
                    "        <td>物品"+(i+1)+"</td>\n" +
                    "        <td>\n" +
                    "    <form id=\"view"+i+"\" method=\"post\" action=\"view.jsp\">\n" +
                    "        <input type=\"hidden\" name=\"id\" value="+i+">\n" +
                    "        <input type=\"hidden\" name=\"instr\" value=\"view\">\n" +
                    "        <input type=\"hidden\" name=\"user\" value=\""+user+"\">\n" +
                    "        <input type=\"submit\" value=\"view\">\n" +
                    "    </form>\n" +
                    "        </td>\n" +
                    "        <td>\n" +
                    "    <form id=\"edit"+i+"\" method=\"post\" action=\"edit.jsp\">\n" +
                    "        <input type=\"hidden\" name=\"id\" value="+i+">\n" +
                    "        <input type=\"hidden\" name=\"instr\" value=\"edit\">\n" +
                    "        <input type=\"hidden\" name=\"user\" value=\""+user+"\">\n" +
                    "        <input type=\"submit\" value=\"edit\">\n" +
                    "    </form>\n" +
                    "        </td>\n" +
                    "        <td>\n" +
                    "    <form id=\"delete"+i+"\" method=\"post\" action=\"saved.jsp\">\n" +
                    "        <input type=\"hidden\" name=\"id\" value="+i+">\n" +
                    "        <input type=\"hidden\" name=\"instr\" value=\"delete\">\n" +
                    "        <input type=\"hidden\" name=\"user\" value=\""+user+"\">\n" +
                    "        <input type=\"submit\" value=\"delete\">\n" +
                    "    </form>\n" +
                    "        </td>\n" +
                    "    </tr>");
            i++;
        }
        out.println("<tr><td>------</td><td>------</td><td>--------</td><td>" +
                "    <form id=\"add\" method=\"post\" action=\"add.jsp\">\n" +
                "        <input type=\"hidden\" name=\"user\" value=\""+user+"\">\n" +
                "        <input type=\"submit\" value=\"add\">\n" +
                "    </form>\n" +
                "</td></tr>");

        out.println("</table>  </body>\n" +
                "</html>");
    }
%>
</body>
</html>
