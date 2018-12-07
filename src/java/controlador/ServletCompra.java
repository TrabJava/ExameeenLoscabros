/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.tagext.TryCatchFinally;
import modelo.dao.DaoBoleta;
import modelo.dao.DaoCompra;
import modelo.dao.DaoUsuario;
import modelo.dto.Boleta;
import modelo.dto.Compra;
import modelo.dto.Estacionamiento;
import modelo.dto.Usuario;

/**
 *
 * @author Berni
 */
public class ServletCompra extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Recibimos el boton del formulario
        String opcion = request.getParameter("btnAccion");
        //Cual accion se ejecuta
        if (opcion.equals("Pagar")) {
            agregarDestino(request, response);
        }
        if (opcion.equals("Listar")) {
            Listar(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void agregarDestino(HttpServletRequest request, HttpServletResponse response) throws IOException {

        int destinoId = Integer.parseInt(request.getParameter("cboDestino"));
        int tipoPago = Integer.parseInt(request.getParameter("cboPago"));
        int tipoEnvio = Integer.parseInt(request.getParameter("cboEnvio"));



        Estacionamiento estacionamiento = new Estacionamiento(destinoId);
        Compra com = new Compra(tipoPago, tipoEnvio);
        Boleta bo = new Boleta(estacionamiento);
        
        
        DaoCompra daoCo = new DaoCompra();
        daoCo.agregar(com);
        DaoBoleta daobo = new DaoBoleta();
        daobo.agregar(bo);
        
        response.sendRedirect("boucher.jsp");
    }

    private void Listar(HttpServletRequest request, HttpServletResponse response) throws IOException {
        DaoCompra dao = new DaoCompra();
        request.getSession().setAttribute("estacionamientos", dao.listarTodo());
        response.sendRedirect("boucher.jsp");
    }

}
