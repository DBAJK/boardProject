package com.example.mvcproject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout")
public class logoutservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public logoutservlet() {
        super();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session= request.getSession();
        session.invalidate();
        response.sendRedirect("mainBoard.jsp");
    }

}
