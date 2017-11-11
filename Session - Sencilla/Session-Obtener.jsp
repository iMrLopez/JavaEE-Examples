<!-- 
En el JSP (Obtener atributos de sesión):
3.	Agregar la declaración de uso de sesión al principio
4.	Obtener con session.getAttribute(“NombreAtributo”);
-->

<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>


<%@ page session="true" %>
<% out.println(session.getAttribute("uname")); %>