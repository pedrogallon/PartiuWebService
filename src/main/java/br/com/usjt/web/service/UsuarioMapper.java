package br.com.usjt.web.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import br.com.usjt.web.model.Usuario;

public interface UsuarioMapper {
	// Define parametros utilizados em data.Usuario.xml
	
	
	// retorna todos os usuarios
	List<Usuario> getUsuarios();

	//retorna usuario por email
	Usuario getUsuarioByEmail(
			@Param("email") String email);

	//	retorna usuario por id
	Usuario getUsuarioById(
			@Param("id") int id);
	
	// retorna usuario com login
	Usuario getUsuarioOnLogin(
			@Param("email") String email,
			@Param("senha") String senha);

	//cria usuario (Segundo Semestre)
	void createUsuario(
			@Param("usuario") Usuario usuario);
	
	//atualiza usuario (Segundo Semestre)
	void updateUsuario(
			@Param("usuario") Usuario usuario);
}
