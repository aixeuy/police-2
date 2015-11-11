
<%--
  Created by IntelliJ IDEA.
  User: Win7uX32
  Date: 2015/7/16
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add car</title>
</head>
<body>
<%
    String user=request.getParameter("user");
    //out.println(id);
    //Hbmain.data.onedit=Hbmain.data.list.get(id);
    response.setCharacterEncoding("GBK");
%>
<table>
    <form id="add" method="post" action="saved.jsp">
        <input type="hidden" name="user" value="<%out.print(user);%>">
        <input type="hidden" name="instr" value="add">
        <tr><td>名称</td><td><input type="text" name="name"></td></tr>
        <tr><td>特征描述</td><td><input type="text" name="carattere"></td></tr>
        <tr><td>长</td><td><input type="text" name="length">cm</td></tr>
        <tr><td>宽</td><td><input type="text" name="width">cm</td></tr>
        <tr><td>高</td><td><input type="text" name="height">cm</td></tr>
        <tr><td>重量</td><td><input type="text" name="weight">g</td></tr>
        <tr><td>颜色</td><td><input type="text" name="color"></td></tr>
        <tr><td>其他特征</td><td><input type="text" name="other"></td></tr>
        <tr><td><input type="submit" value="submit"></td><td><input type="reset" value="reset"></td></tr>
    </form>
    <tr><td></td><td>
        <form id="back" method="post" action="list.jsp">
            <input type="hidden" name="user" value="<%out.print(user);%>">
            <input type="submit" value="back">
        </form></td>
    </tr>
</table>
</body>
</html>

