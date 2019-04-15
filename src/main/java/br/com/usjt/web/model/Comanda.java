package br.com.usjt.web.model;

public class Comanda {

	private int id;
	private String codigo;
	private char status;
	private int mesa;
	private Usuario garcom;
	private String dtaEntrada;
	private String dtaSaida;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Usuario getGarcom() {
		return garcom;
	}

	public void setGarcom(Usuario garcom) {
		this.garcom = garcom;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public char getStatus() {
		return status;
	}

	public void setStatus(char status) {
		this.status = status;
	}

	public String getDtaEntrada() {
		return dtaEntrada;
	}

	public void setDtaEntrada(String dtaEntrada) {
		this.dtaEntrada = dtaEntrada;
	}

	public String getDtaSaida() {
		return dtaSaida;
	}

	public void setDtaSaida(String dtaSaida) {
		this.dtaSaida = dtaSaida;
	}

	
	
	public int getMesa() {
		return mesa;
	}

	public void setMesa(int mesa) {
		this.mesa = mesa;
	}

	public Comanda() {
		super();
	}
	
}
