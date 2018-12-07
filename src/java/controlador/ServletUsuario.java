/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.DaoUsuario;
import modelo.dto.Tipousuario;
import modelo.dto.Usuario;

/**
 *
 * @author Berni
 */
public class ServletUsuario extends HttpServlet {

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
        try {
            //Recibimos los datos del formulario
            String user = request.getParameter("txtNombreUsuario");
            String pass = request.getParameter("txtContrasenia");
            int rut = Integer.parseInt(request.getParameter("txtRut"));
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String correo = request.getParameter("txtCorreo");
            int telefono = Integer.parseInt(request.getParameter("txtTelefono"));

            int tipoUsuario = 1;

            Tipousuario tipo = new Tipousuario(tipoUsuario);

            //Validamos a nivel de modelo (DTO)
            Usuario usuario = new Usuario(tipo, user, pass, rut, nombre, apellido, telefono, correo);

            //Llamamos al dao que tiene los metodos
            DaoUsuario dao = new DaoUsuario();

            if (dao.agregar(usuario)) {
                //variable de sesion (nombre de la variable,contenido)
                request.getSession().setAttribute("msjOK", "Usuario agregado");
            } else {
                //variable de sesion (nombre de la variable,contendio)
                request.getSession().setAttribute("msjNO", "Usuario no agregado");
            }

        } catch (Exception e) {
            request.getSession().setAttribute("msjNO", "Error: ");

        } finally {
            response.sendRedirect("registrarse.jsp");
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

}
