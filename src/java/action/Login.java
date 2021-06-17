package action;

import database.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    String e, p, dbe, dbp, dbn;
    ResultSet rs;
    DB db = new DB();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            e = request.getParameter("email");
            p = request.getParameter("pass");

            rs = db.getResult("select * from user");
            while (rs.next()) {
                dbn= rs.getString(1);
                dbe = rs.getString(2);
                dbp = rs.getString(3);

                if ((e.equalsIgnoreCase(dbe)) && (p.equalsIgnoreCase(dbp))) {
                    /* Session start ho gaya */
                    HttpSession s = request.getSession(true);
                    s.setAttribute("name",dbn);
                    s.setAttribute("email", dbe);
                    s.setAttribute("pass", dbp);
                    response.sendRedirect("home.jsp");

                }
            }
            /*  jab koi direct kholega toh error aaega session managemaent ke wjh se*/
            HttpSession s = request.getSession(true);
            s.setAttribute("error", "Sorry!! invalid login credentials");
            response.sendRedirect("login.jsp");

           
        } catch (Exception e) {

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
