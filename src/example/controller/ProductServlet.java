package example.controller;

import example.service.ProductDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import example.model.ProductList;

@WebServlet(name = "ProductServlet",urlPatterns = "/productservlet")
public class ProductServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        //ServletContext sc = getServletContext();
//        String action = request.getParameter("action");
//        if (action == null) {
//            action = "default";
//
//        }
//      if (action.equals("default")) {
        try{


            ProductList productlist= ProductDB.selectProduct();
            session.setAttribute("listAll",productlist);
            productlist=ProductDB.selectProductLastest();
            session.setAttribute("listAllLastest",productlist);
            productlist=ProductDB.selectProductSale();
            session.setAttribute("listAllSale",productlist);
            productlist=ProductDB.selectProductPrice();
            session.setAttribute("listAllPrice",productlist);
//            System.out.println("Hello we have been successuly did the work!!");


        }catch (Exception e){
            System.out.println(e);
//            System.out.println("you are here");
        }
//            ProductList prodlist=new ProductList();        //ArrayList<Product> products = ProductList.getList();
//        }
    }







    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
