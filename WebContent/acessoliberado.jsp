<%@page import="com.sun.javafx.css.CalculatedValue"%>
<%@page import="javax.xml.crypto.Data"%>

<jsp:useBean id="calcula" class="beans.BeanCursoJsp" type="beans.BeanCursoJsp" scope="page"></jsp:useBean>
    
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="myprefix" uri="WEB-INF/testetag.tld"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	
	<jsp:setProperty property="*" name="calcula"/>
	<h3>Seja bem vindo ao sistema em jsp</h3>
	
	<a href="salvarUsuario?acao=listartodos"><img width="100px" height="100px" title="Cadastro de usu�rio" alt="Cadastro de usu�rio" src="resources/img/usuario.jpg"> </a>
	
	<a href="salvarProduto?acao=listartodos"><img width="100px" height="100px" title="Cadastro de Produto" alt="Cadastro de Produto" src="resources/img/icone-produto.png"> </a>

</body>
</html>









