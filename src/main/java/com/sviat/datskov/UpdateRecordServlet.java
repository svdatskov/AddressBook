package com.sviat.datskov;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/update")
public class UpdateRecordServlet extends HttpServlet {
    private AddressBook addressBook;
    private String firstName;
    private String lastName;
    private String address;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        firstName = request.getParameter("first-name");
        lastName = request.getParameter("last-name");
        address = addressBook.read(firstName, lastName);

        if (address == null) {
            request.setAttribute("fullName", firstName + " " + lastName);
            response.setStatus(404);
            request.getRequestDispatcher("/WEB-INF/404-error.jsp").forward(request, response);
        } else {
            request.setAttribute("address", address);
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.getRequestDispatcher("/WEB-INF/update-record.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String newAddress = request.getParameter("updatedAddress");
        addressBook.update(firstName, lastName, newAddress);
        response.sendRedirect("/records/list");
    }
}
