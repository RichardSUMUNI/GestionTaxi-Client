/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modele.TaxiService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Richard.Sumuni
 */
public class Controlleur extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    String ajouter = "ajouter.jsp";
    String modifier = "modifier.jsp";
    String index = "index.jsp";
    String access = "";
    TaxiService taxi = new TaxiService();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if(action.equals("ajouter"))
        {
            access = ajouter;
        }
        else if(action.equals("Ajouter")){
            String numerotaxi = request.getParameter("txtnumtaxi");
            String modelevoiture = request.getParameter("txtmodelevoiture");
            String adresse = request.getParameter("txtadresse");
            String ville = request.getParameter("txtville");
            String pays = request.getParameter("txtpays");
            taxi.ajouter(numerotaxi, modelevoiture, adresse, ville, pays);
            
            access = index;
        }
        else if(action.equals("modifier")){
            access =modifier;
            request.setAttribute("idtaxi", request.getParameter("id"));
        }else if(action.equals("Actualiser")){
            String numerotaxi = request.getParameter("txtnumtaxi");
            String modelevoiture = request.getParameter("txtmodelevoiture");
            String adresse = request.getParameter("txtadresse");
            String ville = request.getParameter("txtville");
            String pays = request.getParameter("txtpays");
            int id = Integer.parseInt(request.getParameter("txtid"));
            
            taxi.actualiser(id, numerotaxi, modelevoiture, adresse, ville, pays);
            access = index;
        }else if(action.equals("eliminar")){
            int id = Integer.parseInt(request.getParameter("id"));
            taxi.supprimer(id);
            access = index;
        }else{
            access = index;
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(access);
        dispatcher.forward(request, response);
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