package action;

import database.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Change_Password extends HttpServlet {
String cp,np,rnp,dbp,dbe;
    PreparedStatement pst;
    DB db=new DB();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         cp=request.getParameter("opass");
         np=request.getParameter("npass");
         rnp=request.getParameter("rpass"); 
         
            HttpSession s=request.getSession(false);
            dbp=(String)s.getAttribute("pass");
            dbe=(String)s.getAttribute("email");
            
            if((cp.equals(dbp))&&(np.equals(rnp)))
            {
               pst=db.getPre("update user set password=? where email=?");
               pst.setString(1, np); // ? mark ke liye 1 hai for password;
               pst.setString(2, dbe);//? mark ke liye 2 hai for email;
               
               pst.executeUpdate();
            
               s.invalidate();
               response.sendRedirect("login.jsp");
            }
            else
            {
                response.sendRedirect("change_password.jsp");
            }
        }catch(Exception e)
        {
            
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