package com.distribuida.dao;
import java.util.List;
import com.distribuida.entities.Autor;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
@Repository
public class AutorDAOImpl implements AutorDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Autor> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Autor", Autor.class).getResultList();
	}
 
	@Override
	public Autor findOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}
 
	@Override
	public void add(Autor autor) {
		// TODO Auto-generated method stub
 
	}
 
	@Override
	public void up(Autor autor) {
		// TODO Auto-generated method stub
 
	}
 
	@Override
	public void del(int id) {
		// TODO Auto-generated method stub
 
	}
 
}