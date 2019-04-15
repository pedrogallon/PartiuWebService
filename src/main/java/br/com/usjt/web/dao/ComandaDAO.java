package br.com.usjt.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import br.com.usjt.web.model.Comanda;
import br.com.usjt.web.service.ComandaMapper;

public class ComandaDAO {
	private SqlSessionFactory sqlSessionFactory;

	public ComandaDAO() {
		sqlSessionFactory = ConnectionFactory.getSqlSessionFactory();
	}

	public void createComanda(Comanda comanda) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			ComandaMapper comandaMapper = session.getMapper(ComandaMapper.class);
			comandaMapper.createComanda(comanda);
			session.commit();
		} finally {
			session.close();
		}
	}

	public List<Comanda> getComandasByStatus(int idGarcom, char status) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			ComandaMapper comandaMapper = session.getMapper(ComandaMapper.class);
			List<Comanda> comandas = comandaMapper.getComandasByStatusAndId(idGarcom, status);
			return comandas;
		} finally {
			session.close();
		}
	}

	public List<Comanda> checkComanda(String codigo) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			ComandaMapper comandaMapper = session.getMapper(ComandaMapper.class);
			List<Comanda> comandas = comandaMapper.checkComanda(codigo);
			return comandas;
		} catch (Exception e) {
			return null;
		} finally {
			session.close();
		}
	}
}
