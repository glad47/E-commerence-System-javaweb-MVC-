package example.controller;

import example.model.Cart;
import example.model.User;
import example.service.UserDB;
import example.service.CartDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserServlet",urlPatterns = "/userservlet")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        if (action.equalsIgnoreCase("register")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            User user=new User(0,username,password,email);
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            if(UserDB.emailExists(email)){
                out.print("email failed");
            }else if(UserDB.usernameExists(username)){
                out.print("username failed");
            }else{
                UserDB.insert(user);
                user=UserDB.selectUser(email);
                session.setAttribute("user",user);
                out.print("sucess register");
            }



        }else if(action.equalsIgnoreCase("login")){

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            try{
            User user=UserDB.login(username,password);
            if(user == null ){
                out.print("login failed");
            }else{
                session.setAttribute("user",user);
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null) {
                    cart = new Cart();
                }
                cart = CartDB.updateSessionCart(user.getId());
                session.setAttribute("cart",cart);
                out.print("sucess login");
            }
        }catch (Exception e){
            System.out.println(e);

            }
        }


    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
