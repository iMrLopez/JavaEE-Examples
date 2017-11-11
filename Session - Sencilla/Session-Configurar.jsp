<!-- 

En el JSP (Agregar atributos de sesión):
1.	Agregar la declaración de uso de sesión al principio
2.	Agregar el atributo con session.setAttribute(“NombreAtributo”);

-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>


<%@ page session="true" %>
<% session.setAttribute("NombreDeUsuario","Marny Lopez Lopez"); %>