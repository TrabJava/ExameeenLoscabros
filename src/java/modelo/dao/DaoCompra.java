/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import interfaces.MetodosCrud;
import java.util.List;
import modelo.dto.Compra;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author gamer
 */
public class DaoCompra implements MetodosCrud<Compra> {

    private Session sesion;
    private Transaction tx;

    public void iniOperacion() {
        sesion = HibernateUtil.getSessionFactory().openSession();
        tx = sesion.beginTransaction();
    }

    @Override
    public boolean agregar(Compra g) {
        try {
            iniOperacion();
            sesion.save(g);
            tx.commit();
            sesion.close();
            return true;
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se pudo almacenar la compra");
        }
    }

    @Override
    public boolean actualizar(Compra g) {
        try {
            iniOperacion();
            Compra com = buscar(g.getIdCompra());
            com.setMontoTotal(g.getMontoTotal());
            com.setMedioEnvio(g.getMedioEnvio());
            com.setMedioPago(g.getMedioPago());
            com.setPagado(g.getPagado());
            com.setUsuario(g.getUsuario());
            sesion.update(com);
            tx.commit();
            sesion.close();
            return true;
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se pudo actualizar la Compra");
        }
    }

    @Override
    public boolean actualizarEstado(Compra g) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Object o) {
        try {
            iniOperacion();
            Compra com = buscar(o);
            sesion.delete(com);
            tx.commit();
            sesion.close();
            return true;
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se pudo eliminar la Compra");
        }
    }

    @Override
    public Compra buscar(Object o) {
        try {
            iniOperacion();
            List<Compra> lista = sesion.createQuery("from Compra where id_compra=" + o).list();
            for (Compra com : lista) {
                return com;
            }
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se encontro la compra");
        }
        return null;
    }

    @Override
    public List<Compra> listarTodo() {
        try {
            iniOperacion();
            List<Compra> lista = sesion.createQuery("from Compra").list();
            return lista;
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se pudo listar las Compras");
        }

    }

}
