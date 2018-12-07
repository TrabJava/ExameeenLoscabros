/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import java.util.List;
import modelo.dto.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author gamer
 */
public class DaoLogin {
    private Session session;
    private Transaction tx;
    
    public void iniOpeaciones(){
        session = HibernateUtil.getSessionFactory().openSession();
        tx = session.beginTransaction();
    }
    
    public Usuario buscar(String user, String pass){
        try {
            iniOpeaciones();
            List<Usuario> lista = session.createQuery("from Usuario where user='"+ user +"' and pass='"+pass+"'").list();
            for (Usuario aux : lista){
                if (aux.getUser().equals(user) && aux.getPass().equals(pass)){
                    return aux;
                }
            }
        } catch (Exception e) {
            tx.rollback();
            session.close();
            throw new RuntimeException("Error: ");
        }
        return null;
    }
}
