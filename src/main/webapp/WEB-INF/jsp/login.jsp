<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="/WEB-INF/jsp/decorators/templateCss.jsp"/>
    <style>
	    .form-control{
			height: 54px;
			font-family: 'Raleway', sans-serif; 
			font-size: 17px;
		}
		/* link que ainda não foi visitado */
		a:link {
		    color: inherit;
		}
		
		/* link que foi visitado */
		a:visited {
		    color: inherit;
		}
		
		/* mouse over */
		a:hover {
		    color: inherit;
		}
		
		/* link selecionado */
		a:active {
		    color: inherit;
		}
    </style>
  </head>
  <body>
    <!-- Your app's content goes inside .window-content -->
    <input type="text" class="hidden" id="usuarioLogado" name="usuarioLogado" value="${usuarioLogado.usuarioLogado }">
	<input type="text" class="hidden" id="usuarioLogin" name=usuarioLogin value="${usuarioLogado.usuarioLogin }">
	<input type="text" class="hidden" id="idUsuario" name="idUsuario" value="${usuarioLogado.idUsuario }">
	<input type="text" class="hidden" id="usuarioMatricula" name="usuarioLogado" value="${usuarioLogado.matricula }">
	<input type="text" class="hidden" id="funcionalidadeAtual" name="funcionalidadeAtual">
     <div class="col-sm-12" style="position: absolute; top: 14%; display: block;">
             <div class="form-signin-heading col-sm-12" style="position:relative; padding: 32px;">
                 <img src="/conecta-app/assets/img/CONECTA_Logo-11.png" width="100%" height="10%" class="form-signin-heading img-responsive"> 
             </div>
             <div class="form-signin-heading col-sm-12" style="padding-bottom: 2%; font-size: 18px;">
                 <i class="fas fa-lock"></i>
                 Acesso
             </div>
             <div class="col-sm-12">
               <input type="text" class="form-control logar" placeholder="Login" id="login" required>
             </div>
             <div class="col-sm-12">
               <a class="btn btn-lg btn-block btnLogar" id="btnLogin" type="button"
                     style="margin-top: 15px; color: white;">
                   <i class="icon-circle-arrow-right"></i>
                   Acessar
               </a>
               <p class="erro hide" id="erroMatricula" style="color: rgb(221, 90, 67);font-weight: bold; font-size: 15px;"><i class="ace-icon fa fa-exclamation-circle bigger-110"></i> Prenchimento obrigatório: Matrícula </p> 
               <p class="erro hide" id="erroMatriculaIncorreta" style="color: rgb(221, 90, 67);font-weight: bold; font-size: 15px;"><i class="ace-icon fa fa-exclamation-circle bigger-110"></i> Matrícula incorreta </p> 
             </div>
       </div>
    <script defer src="<c:url value="/assets/js/font-awesome.js"/>"></script>
    <script src="<c:url value="/assets/js/jquery-1.12.4.js"/>"></script>
    <script src="<c:url value="/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap.js"/>"></script>
    <script>
    
		$(".btnLogar").click(function(e){
			e.preventDefault();
			var passa = 0;
			if($("#login").val() == ''){
	            $("#erroMatricula").removeClass('hide');
	            passa = 1;
			}
			if(passa == 0){
				var requestData = {
					matricula : $("#login").val()
				};
				$.get("${linkTo[UsuarioController].buscaUsuarioByHorus}",requestData, function(data) {
					if(data == 'success'){
						window.location.assign("${linkTo[UsuarioController].funcionalidade}?usuarioLogin=" + $("#login").val());
					} else{
		                $("#erroMatriculaIncorreta").removeClass('hide');
					}
				});
			}    	
		});
    	
    	$(".logar").on("keypress", function(event) {
    		var tecla = (window.event) ? event.keyCode : event.which;
    		if (tecla == 13) {
        		var passa = 0;
    			if($("#login").val() == ''){
                    $("#erroMatricula").removeClass('hide');
                    passa = 1;
    			}
    			if(passa == 0){
    				var requestData = {
    					matricula : $("#login").val()
    				};
    				$.get("${linkTo[UsuarioController].buscaUsuarioByHorus}",requestData, function(data) {
    					if(data == 'success'){
    						window.location.assign("${linkTo[UsuarioController].funcionalidade}?usuarioLogin=" + $("#login").val());
    					} else{
    		                $("#erroMatriculaIncorreta").removeClass('hide');
    					}
    				});
    			}
    		}
    	});
    </script>
  </body>
</html>