package com.example.mvcproject;

import com.example.mvcService.accountService;
import com.example.mvcVo.userVo;
import org.springframework.context.annotation.ImportResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/mainBoard")
public class loginServlet {
    private static final long serialVersionUID = 1L;

    public loginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String userPassword= request.getParameter("userPassword");

        accountService accountService = new accountService();
        userVo loginMember = accountService.getLoginMember(userName,userPassword);
        //로그인이 성공 되면 userVo 객체가 넘어오고 실패하면 null이 넘어옴

        if(loginMember != null) {
            HttpSession session = request.getSession();
            session.setAttribute("id", userName);
            response.sendRedirect("mainBoard.jsp");
        }else {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('로그인 실패')");
            out.println("history.back()");
            out.println("</script>");
        }
    }

}
