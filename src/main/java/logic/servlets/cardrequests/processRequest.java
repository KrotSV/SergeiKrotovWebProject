package logic.servlets.cardrequests;

import logic.DAO.DAO;
import logic.DAO.DAODispatcher;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "processRequest", urlPatterns = "/processRequest")
public class processRequest extends HttpServlet {
    private static Logger logger = Logger.getLogger(processRequest.class);
    private DAO dao = DAODispatcher.getDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            if(request.getParameter("decision").equals("approved")) {
                dao.processRequest(Integer.parseInt(request.getParameter("requestChoose")), true);
                logger.info("Request № " + request.getParameter("requestChoose") + " is approved");
                request.getRequestDispatcher("WEB-INF/deadends/requestProcessed.jsp").forward(request,response);
            }
            else {
                dao.processRequest(Integer.parseInt(request.getParameter("requestChoose")), false);
                logger.info("Request № " + request.getParameter("requestChoose") + " is rejected");
                request.getRequestDispatcher("WEB-INF/deadends/requestProcessed.jsp").forward(request,response);
            }
        }
        catch (NumberFormatException e){
            request.getRequestDispatcher("WEB-INF/deadends/requestNotChoosen.jsp").forward(request,response);
        }
    }
}
