/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.UserAdminGet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserAdmin;


/**
 *
 * @author NguyenDang
 */

public class AdminUserServlet extends HttpServlet {

  UserAdminGet userAdminGet = new UserAdminGet();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String commandadmin = request.getParameter("commandadmin");
        String url = "";
        UserAdmin userAdmin = new UserAdmin();
        HttpSession session = request.getSession();
        
        switch (commandadmin) {
            
            case "login":
                
                String email = request.getParameter("emailadmin");
                String pass = request.getParameter("passadmin");
                userAdmin = userAdminGet.login(email,pass);
                if (userAdmin != null) {
                    
                   session.setAttribute("useradmin", userAdmin);
                   url = "/MusicShop/admin/index.jsp";
                   
                }
                
                else{
                    request.setAttribute("error", "Lỗi tên đăng nhập hoặc mật khẩu");
                    url = "/MusicShop/admin/login.jsp";
                }
                break;
        }
        response.sendRedirect(url);
       
    }
    
  
    

 }

