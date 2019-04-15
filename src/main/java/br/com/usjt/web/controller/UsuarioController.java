package br.com.usjt.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.google.inject.Inject;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.usjt.web.dao.UsuarioDAO;
import br.com.usjt.web.model.Usuario;

@Resource
public class UsuarioController {

	@Inject
	Result result;

	@Path("/index")
	public void index() {
		result.use(Results.json()).withoutRoot().from("Endereco Inválido").serialize();
	}

	@Path("/login")
	public void login(String email, String senha) {
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		try {
			Usuario usuario = usuarioDAO.getUsuarioOnLogin(email, senha);
			if (usuario != null) {
				result.use(Results.json()).withoutRoot().from(usuario).serialize();
			}else {
				result.use(Results.json()).withoutRoot().from("NOTIFICACAO: Usuario inválido!").serialize();
			}

		} catch (Exception e) {
			result.use(Results.json()).withoutRoot().from("ERRO: "+e.getMessage()).serialize();
		}

	}

	//Nao Usado
	@Path("/logout")
	public void logout() {

	}

	
	//Segundo Semestre
	@Path("/createUsuario")
	public void createUsuario(Usuario usuario) {
		UsuarioDAO usuarioDAO = new UsuarioDAO();

		try {
			usuarioDAO.createUsuario(usuario);
			result.use(Results.json()).withoutRoot().from("NOTIFICACAO: Usuario criado com sucesso").serialize();
		} catch (Exception e) {
			result.use(Results.json()).withoutRoot().from("ERRO: "+e.getMessage()).serialize();
		}
	}

	//Segundo Semestre
	@Path("/updateUsuario")
	public void updateUsuario(Usuario usuario) {
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		try {
			usuarioDAO.updateUsuario(usuario);
			result.use(Results.json()).withoutRoot().from("NOTIFICACAO: Alterado com sucesso").serialize();
		} catch (Exception e) {
			result.use(Results.json()).withoutRoot().from("ERRO: "+e.getMessage()).serialize();
		}
	}

	// Não Utilizado
	@Path("/getUsuarios")
	public void getUsuarios() {
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		try {
			List<Usuario> usuarios = usuarioDAO.getUsuarios();
			result.use(Results.json()).withoutRoot().from(usuarios).serialize();
		} catch (Exception e) {
			result.use(Results.json()).withoutRoot().from("ERRO: "+e.getMessage()).serialize();
		}
	}

	
	@Path("/getUsuarioByEmail")
	public void getusuarioByEmail(String email) {
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		try {
			Usuario usuario = usuarioDAO.getusuarioByEmail(email);
			result.use(Results.json()).withoutRoot().from(usuario).serialize();
		} catch (Exception e) {
			result.use(Results.json()).withoutRoot().from("ERRO: EMAIL inexistente para Usuário; EMAIL: "+email+";	\n"+e.getMessage()).serialize();
		}
	}
	
	@Path("/getUsuarioById")
	public void getusuarioById(int id) {
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		try {
			Usuario usuario = usuarioDAO.getusuarioById(id);
			result.use(Results.json()).withoutRoot().from(usuario).serialize();
		} catch (Exception e) {
			result.use(Results.json()).withoutRoot().from("ERRO: ID inexistente para Usuário; ID: "+id+";	\n"+e.getMessage()).serialize();
		}
	}
}

