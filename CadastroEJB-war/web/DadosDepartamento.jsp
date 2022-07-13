<%-- 
    Document   : DadosDepartamento
    Created on : Jul 13, 2022, 4:19:17 PM
    Author     : emerson
--%>

<%@page import="model.Empresa"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
<form action="CadastroFC" method="post">
<input type="hidden" name="acao" value="incDepExec"/>
Empresa:
<select name="cod_empresa">
<%
    List< Empresa> lista = (List< Empresa>) request.getAttribute("listaEmp");
    for (Empresa e : lista) {
%>
<option> value="<%=e.getCodigo()%>
<%=e.getRazaoSocial()%>
</option>
<% } %>
</select><br/>
Nome:<input type="text" name="nome"/>

<input type="submit" value="Cadastrar"/>
</form>
</body>
</html>
