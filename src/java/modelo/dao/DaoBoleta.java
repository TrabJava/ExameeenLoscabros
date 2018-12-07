/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import interfaces.MetodosCrud;
import java.util.List;
import modelo.dto.Boleta;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author gamer
 */
public class DaoBoleta implements MetodosCrud<Boleta> {

    //Declaramos variables
    private Session sesion;//la que contiene todo los query
    private Transaction tx;

    //Metodo para iniciar la sesion con la BD
    public void iniOperacion() {
        sesion = HibernateUtil.getSessionFactory().openSession();
        tx = sesion.beginTransaction();
    }

    @Override
    public boolean agregar(Boleta g) {
        try {
            iniOperacion();
            sesion.save(g);
            tx.commit();
            sesion.close();
            return true;
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se pudo almacenar la Boleta");
        }
    }

    @Override
    public boolean actualizar(Boleta g) {
        try {
            iniOperacion();
            Boleta bol = buscar(g.getIdBoleta());
            bol.setMontoBoleta(g.getMontoBoleta());
            bol.setCantidad(g.getCantidad());
            bol.setCompra(g.getCompra());
            bol.setEstacionamiento(g.getEstacionamiento());
            sesion.update(bol);
            tx.commit();
            sesion.close();
            return true;
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se pudo actualizar la Boleta");
        }
    }

    @Override
    public boolean actualizarEstado(Boleta g) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Object o) {
        try {
            iniOperacion();
            Boleta bol = buscar(o);
            sesion.delete(bol);
            tx.commit();
            sesion.close();
            return true;
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se pudo eliminar la Boleta");
        }
    }

    @Override
    public Boleta buscar(Object o) {
        try {
            iniOperacion();
            List<Boleta> lista = sesion.createQuery("from Boleta where id_boleta=" + o).list();
            for (Boleta bol : lista) {
                return bol;
            }
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se encontro la compra");
        }
        return null;
    }

    @Override
    public List<Boleta> listarTodo() {
        try {
            iniOperacion();
            List<Boleta> lista = sesion.createQuery("from Boleta").list();
            return lista;
        } catch (Exception e) {
            tx.rollback();
            sesion.close();
            throw new RuntimeException("No se pudo listar las Boletas");
        }
    }

}
