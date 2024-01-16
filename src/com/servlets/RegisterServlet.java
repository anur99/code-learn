package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.ErrorMessage;
import com.beans.InfoBeans;
import com.beans.InsertData;
import com.dao.ConnectionProvider;

@MultipartConfig
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // user data fetching from browser.....
        String firstname = request.getParameter("f_name");
        String lastname = request.getParameter("l_name");
        String username = firstname + " " + lastname;

        String useremail = request.getParameter("useremail");
        String userphone = request.getParameter("userphone");
        String userpass = request.getParameter("userpass");
  
        List<String> list = new ArrayList<String>();
        Connection con = null;
        try {
            con = ConnectionProvider.getConnection();
            PreparedStatement ps = con.prepareStatement("select Email from user");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("Email"));
            }

            boolean flag = false;
            for (String email : list) {
                if (email.equals(useremail)) {
                    flag = true;
                    break;
                }
            }
            if (flag) {
                //error message
                ErrorMessage err = new ErrorMessage("This Email is already Exists", "error", "alert-danger");
                HttpSession session = request.getSession();
                session.setAttribute("msg", err);
                response.sendRedirect("registerPage.jsp");
            } else {
                InfoBeans bean = new InfoBeans(username, useremail, userphone, userpass);
                InsertData save = new InsertData();
                save.savedata(bean);
                response.sendRedirect("loginPage.jsp");
            }
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

}
