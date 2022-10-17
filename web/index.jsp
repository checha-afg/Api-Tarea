<%-- 
    Document   : index
    Created on : Oct 15, 2022, 11:53:59 AM
    Author     : james
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="javax.swing.table.DefaultTableModel" %>
<%@page import ="apis.api_cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <h1>Hello World!</h1>
        <table class="table table-striped">
    <thead>
      <tr>
        <th>Nit</th>
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>Nacimiento</th>
      </tr>
    </thead>
    <tbody>
        <% 
        api_cliente api_c =  new api_cliente();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = api_c.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id="+ tabla.getValueAt(t, 0) + ">");
            out.println("<td>"+ tabla.getValueAt(t, 1) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 2) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 3) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 4) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 5) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 6) +"</td>");
            out.println("</tr>");
        
        }%>
    </tbody>
  </table>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
