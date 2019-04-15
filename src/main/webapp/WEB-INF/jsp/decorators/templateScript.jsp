<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<input type="text" class="hidden" id="usuarioLogado" name="usuarioLogado" value="${usuarioLogado.usuarioLogado }">
	<input type="text" class="hidden" id="usuarioLogin" name=usuarioLogin value="${usuarioLogado.usuarioLogin }">
	<input type="text" class="hidden" id="idUsuario" name="idUsuario" value="${usuarioLogado.idUsuario }">
	<input type="text" class="hidden" id="usuarioMatricula" name="usuarioLogado" value="${usuarioLogado.matricula }">
	<input type="text" class="hidden" id="idFilialBase" name="idFilialBase" value="${usuarioLogado.idFilialBase }">
	<input type="text" class="hidden" id="funcionalidadeAtual" name="funcionalidadeAtual">
	
    <script src="<c:url value="/assets/js/jquery-1.12.4.js"/>"></script>
    <script src="<c:url value="/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fa-brands.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fa-brands.min.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fa-regular.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fa-regular.min.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fa-solid.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fa-solid.min.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fa-v4-shims.min.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fa-v4-shims.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fontawesome-all.min.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fontawesome-all.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fontawesome.js"/>"></script>
    <script src="<c:url value="/assets/svg-with-js/js/fontawesome.min.js"/>"></script>    
   <script src="<c:url value="/assets/svg-with-js/js/fontawesome.js"/>"></script>
    <script src="<c:url value="/assets/js/sweetalert.js"/>"></script>
    <script src="<c:url value="/assets/js/sweetalert.min.js"/>"></script>
<script>
	document.body.innerHTML += '<div style="background-color: #FF8F0F; font-family: Raleway, sans-serif; font-size: 20px; padding: 15px; color: #fff; margin-bottom: 4%;"> <span class="col-sm-6"><i class="fas fa-angle-right"></i> </span> <span class="">' + localStorage.funcionalidadeAtual+'</span></div>';

	$(document).on('click', '.redirectToFuncionalidade', function(e){
		caminho = $(this).data("caminho");
		
		caminho = caminho.replace(/[^a-zA-Z0-9]+/g,'');
		nomeFuncionalidade = $(this).data("nomefuncionalidade");
		if(nomeFuncionalidade != null) localStorage.funcionalidadeAtual = nomeFuncionalidade;
		if (caminho == "sair" || $('#usuarioLogin').val() == ''){
			window.location.assign("${linkTo[UsuarioController].login}");
		} else if (caminho == "voltar"){
			window.location.assign("${linkTo[UsuarioController].funcionalidade}?usuarioLogin=" + $('#usuarioLogin').val().toLowerCase());
		} else if (caminho == "gerarCartaz"){
			window.location.assign("${linkTo[CartazeamentoController].gerarCartaz}?usuarioLogin=" + $('#usuarioLogin').val().toLowerCase());
		} else if (caminho == "controleWifi"){
			window.location.assign("${linkTo[OperacoesController].controleWifiMaat}?usuarioLogin=" + $('#usuarioLogin').val().toLowerCase());
		}

	});
	
</script>