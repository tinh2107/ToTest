/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AccountDAO;
import DAO.TableReservationDAO;
import entity.Account;
import entity.Table;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LENOVO
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // get parameters from jsp
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        // get parameters from jsp

        /// test account
        if (userName.equals("admin") && password.equals("admin")) {
            request.getRequestDispatcher("AdminPage/index.jsp").forward(request, response);
            return;
        }
        ///
        Account a = null;
        try {
            a = new AccountDAO().getAccount(userName, password);
        } catch (SQLException ex) {
            // Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("LoginError", "Login failed");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        if (a != null) {
            HttpSession session = request.getSession();
            session.setAttribute("userLogin", a.getName());
            session.setAttribute("loggedAccount", a);
            TableReservationDAO tdao = new TableReservationDAO();
            ArrayList<Table> tables = tdao.getTables();
            request.setAttribute("tablesTotal", tables.size());

            int available = 0;
            int reserved = 0;
            int occupied = 0;
            for (int i = 0; i < tables.size(); i++) {
                if (tables.get(i).getStatus().equalsIgnoreCase("available")) {
                    available += 1;
                }

                if (tables.get(i).getStatus().equalsIgnoreCase("occupied")) {
                    occupied += 1;
                }

                if (tables.get(i).getStatus().equalsIgnoreCase("reserved")) {
                    reserved += 1;
                }

            }

            request.setAttribute("availableTables", available);
            request.setAttribute("reservedTables", reserved);
            request.setAttribute("occupiedTables", occupied);
            if (a.getRole_id() == 1) {

                request.getRequestDispatcher("AdminPage/index.jsp").forward(request, response);

            } else if (a.getRole_id() == 2) {
                request.getRequestDispatcher("CashierHomePage.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("LoginError", "Login failed");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

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
