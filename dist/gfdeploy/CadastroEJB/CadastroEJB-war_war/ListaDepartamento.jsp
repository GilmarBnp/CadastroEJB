<%-- 
    Document   : ListaDepartamento
    Created on : Jul 13, 2022, 4:54:50 PM
    Author     : emerson
--%>

<%@page import="model.Departamento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
<a href="CadastroFC?acao=incDep">Novo Departamento</a>
<table border="1" width="100%">
<tr><td>Código</td><td>Nome</td><td>Empresa</td>
<td>Opções</td></tr>
<%
List< Departamento > lista = (List< Departamento>)
request.getAttribute("lista");
for(Departamento d: lista){
%>
<tr><td><%=d.getCodigo()%></td>
<td><%=d.getNome()%></td>
<td><%=d.getEmpresa().getRazaoSocial()%></td>
<td>
<a href="CadastroFC?acao=excDepExec&cod=<%=d.getCodigo()%>">
Excluir</a>
</td>
</tr>
<% } %>
</table>
</body>
 </html>
