package br.com.usjt.web.service;

import org.apache.ibatis.annotations.Param;

import br.com.usjt.web.model.Endereco;

public interface EnderecoMapper {
	//cria endereco
	void createEndereco(
			@Param("endereco") Endereco endereco);

}
