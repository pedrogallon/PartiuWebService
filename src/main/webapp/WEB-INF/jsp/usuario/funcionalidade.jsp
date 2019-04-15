<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
  	<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' />
	<link rel="stylesheet" href="<c:url value="/assets/css/funcionalidade_menu.css"/>">
  </head>
  <body>
  	<input type="text" class="hidden" id="funcionalidade" name="funcionalidade" value="${funcionalidade }">
  	<input type="text" class="hidden" id="modulos" name="separaModulosByIndex" value="${separaModulosByIndex }">
	<div class="overlay">
		<div class="menu">
			<ul id="navbarModulos">
				<c:forEach var="modulo" items="${modulo}">
					<li class="navbarModulos" data-modulo="${modulo.codModulo}">
						<a data-modulo="${modulo.codModulo}" data-caminho="${modulo.nomeModulo}" href="#">
							<span class="col-sm-6">${modulo.icone} </span>
							<span class="col-sm-6" style="margin-left: 5%">${modulo.nomeModulo}</span>
						</a>
					</li>
				</c:forEach>
				<li class="btnSair">
					<a class="redirectToFuncionalidade" data-caminho="sair" href="#">
						<span class="col-sm-6"><i class="fa fa-sign-out"></i> </span>
						<span class="col-sm-6" style="margin-left: 5%">Sair</span>
					</a>
				</li>
			</ul>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/decorators/templateScript.jsp"/>
    <script src="<c:url value="/assets/js/funcionalidade/funcionalidade_menu.js"/>"></script>
  </body>
</html>