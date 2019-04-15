package br.com.usjt.web.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import br.com.usjt.web.model.Comanda;

public interface ComandaMapper {

	// Define parametros utilizados em data.Usuario.xml

	
	//pega todas comandas
	List<Comanda> getComandas();
	
	//pega todas comandas por status
	List<Comanda> getComandasByStatusAndId(
			@Param ("idGarcom") int garcom,
			@Param ("status") char status
			);
	
	//pega comanda por codigo
	Comanda getComandaByCodigo(
			@Param("codigo") String codigo);

	//cria comanda
	void createComanda(
			@Param("comanda") Comanda comanda);
	
	List<Comanda> checkComanda(
			@Param("codigo") String codigo);

}
