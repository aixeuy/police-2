<%@ page import="Dao.Service" %>
<%--
  Created by IntelliJ IDEA.
  User: Win7uX32
  Date: 2015/7/17
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
</head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String user=request.getParameter("user");
    String instr=request.getParameter("instr");
    if(instr.equals("edit")) {
        int id = Integer.parseInt(request.getParameter("id"));
        String code = request.getParameter("name");
        String body=request.getParameter("carattere");
        int action=0;
        try{action = Integer.parseInt(request.getParameter("length"));}catch (NumberFormatException e){}
        int width=0;
        try{width = Integer.parseInt(request.getParameter("width"));}catch (NumberFormatException e){}
        int height=0;
            try{height = Integer.parseInt(request.getParameter("height"));}catch (NumberFormatException e){}
        int weight=0;
                try{weight = Integer.parseInt(request.getParameter("weight"));}catch (NumberFormatException e){}
        Service.edit(Service.getItemByIndex(id),code,body,action,
                width,height
                ,weight,request.getParameter("color")
                ,request.getParameter("other"));
    }
    else if(instr.equals("add")){
        String code = request.getParameter("name");
        String body=request.getParameter("carattere");
        int action=0;
        try{action = Integer.parseInt(request.getParameter("length"));}catch (NumberFormatException e){}
        int width=0;
        try{width = Integer.parseInt(request.getParameter("width"));}catch (NumberFormatException e){}
        int height=0;
        try{height = Integer.parseInt(request.getParameter("height"));}catch (NumberFormatException e){}
        int weight=0;
        try{weight = Integer.parseInt(request.getParameter("weight"));}catch (NumberFormatException e){}
        Service.addItem(code,body,action,
                width,height
                ,weight,request.getParameter("color")
                ,request.getParameter("other"));
    }
    else if(instr.equals("delete")){
        int id = Integer.parseInt(request.getParameter("id"));
        Service.deleteItem(Service.getItemByIndex(id));
    }
%>
<p>已保存</p>
<form id="back" method="post" action="list.jsp">
    <input type="hidden" name="user" value="<%out.print(user);%>">
    <input type="submit" value="back">
</form>
</body>
</html>
