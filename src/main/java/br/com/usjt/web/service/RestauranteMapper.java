package br.com.usjt.web.service;

import org.apache.ibatis.annotations.Param;

import br.com.usjt.web.model.Restaurante;

public interface RestauranteMapper {

	void createRestaurante(
			@Param("restaurante") Restaurante restaurante);
	
	Restaurante getRestauranteByIdGarcom(
			@Param("idGarcom")int idGarcom);
}
