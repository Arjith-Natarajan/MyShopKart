/**
 * 
 */
package com.niit.myshop.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.myshop.dao.UserDAO;
import com.niit.myshop.model.User;


@SuppressWarnings("deprecation")
@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public UserDAOImpl() {

	}

	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public List<User> list() {
		@SuppressWarnings({ "unchecked" })
		List<User> listUser = (List<User>) sessionFactory.getCurrentSession()
		.createCriteria(User.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listUser;
	}
	@SuppressWarnings("rawtypes")

	public User get(int id) {
		String hql = "from User where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) query.list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}

		return null;
	}
	public User get(String uname) {
	
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		
		Criteria criteria = s.createCriteria(User.class);
		User fuser= (User) criteria.add(Restrictions.eq("userName", uname)).uniqueResult();
		tx.commit();
		s.close();
		System.out.println("user fetched");	
		if(fuser!=null) {return fuser;}
		return null;
		
	}

	public void saveOrUpdate(User user) {
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		s.save(user);
		tx.commit();
		s.close();
		System.out.println("user inserted");	
		
		//sessionFactory.getCurrentSession().saveOrUpdate(user);
	}


	public void delete(int id) {
		User userToDelete = new User();
		userToDelete.setUserId(id);
		sessionFactory.getCurrentSession().delete(userToDelete);
	}

}
