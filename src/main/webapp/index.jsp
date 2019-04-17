<%--
  Created by IntelliJ IDEA.
  User: dinh
  Date: 16/04/2019
  Time: 09:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="cus.Customer" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    Customer[] listcustomer=new Customer[3];
    listcustomer[0]=new Customer("Ngo Cong Tun","1/1/1990","Hanoi","https://yt3.ggpht.com/a-/AAuE7mDGN4WmsOPvQURqbOiac_2JV6ntwAFVXQIzVg=s900-mo-c-c0xffffffff-rj-k-no");
    listcustomer[1]=new Customer("Ngo Duc Hai","1/2/1888","HCM","https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Anime_eye.svg/1200px-Anime_eye.svg.png");
    listcustomer[2]=new Customer("Tran Duc Chung","12/12/1222","adress","https://i.pinimg.com/originals/99/59/1b/99591bbc318ecd41ae7bbf39a9106e12.jpg");
    request.setAttribute("data",listcustomer);
  %>
  <table align="center" width="300" border="1" style="text-align: center">
    <tr>
      <td> Tên </td>
      <td> Ngày sinh  </td>
      <td> Địa chỉ </td>
      <td> Hình ảnh </td>
    </tr>
    <c:forEach var="cus" items="${data}">

      <tr>
        <td>${cus.getHoten()}</td>
        <td>${cus.getNgaysinh()}</td>
        <td>${cus.getDiachi()}</td>
        <td> <img width="100" height="100" src=" ${cus.getAnh()}"></td>

      </tr>
    </c:forEach>
    <%
      String Result="";
      for (Customer cust:listcustomer) {
        Result+= "<tr>";
        Result+="<td>"+cust.getHoten()+"</td>";
        Result+="<td>"+cust.getNgaysinh()+"</td>";
        Result+="<td>"+cust.getDiachi()+"</td>";
        Result+="<td> <img width='100' height='100' src='"+cust.getAnh()+"'></td>";
        Result+="</tr>";
      }

    %>
    <%= Result%>


  </table>

  </body>
</html>