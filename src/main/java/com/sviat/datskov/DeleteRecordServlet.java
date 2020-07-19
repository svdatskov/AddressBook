package com.sviat.datskov;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/delete")
public class DeleteRecordServlet extends HttpServlet {
    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        boolean result = addressBook.delete(firstName, lastName);

        if (!result) {
            request.setAttribute("fullName", firstName + " " + lastName);
            response.setStatus(404);
            request.getRequestDispatcher("/WEB-INF/404-error.jsp").forward(request, response);
        } else {
            response.sendRedirect("/records/list");
        }
    }
}
