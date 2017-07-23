package logics.servlets;

import entities.BankAccount;
import entities.Client;
import entities.CreditCard;
import logics.DAO;
import logics.ResourceManager;

import java.io.IOException;
import java.util.ArrayList;

@javax.servlet.annotation.WebServlet(name = "ClientLogin", urlPatterns = "/sendClientData")
public class ClientLogin extends javax.servlet.http.HttpServlet {
    DAO dao = new ResourceManager().getDAO();

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    if(dao.checkClientExistence(request.getParameter("firstName"), request.getParameter("lastName"))){
        Client client = dao.getClientData(request.getParameter("firstName"), request.getParameter("lastName"));
        ArrayList<CreditCard> cards = client.getCards();
        ArrayList<BankAccount> accounts = new ArrayList<BankAccount>();
        for (CreditCard c:cards) {
            accounts.add(dao.getAccount(c.getCardNumber()));
        }
        request.getSession().setAttribute("accounts", accounts);
        request.getSession().setAttribute("client", client);request.getRequestDispatcher("WEB-INF/clientDataPage.jsp").forward(request, response);
    }
   }
}