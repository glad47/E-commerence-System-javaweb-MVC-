package example;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import java.util.ArrayList;
import java.util.Iterator;

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


//            ProductList productlist=ProductDB.selectProduct();
            ProductList productlist=new ProductList();



            productlist.addToList(new Product(1,"Red Dress","Lorem Ipsum is simply dummy.","01/01/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",159.0,4,"img/product1.jfif"
            ));
            productlist.addToList(new Product(2,"White Dress","Lorem Ipsum is simply dummy.","10/01/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",199.0,5,"img/product2.jfif"));
            productlist.addToList(new Product(3,"Summer White T-Shirt","Lorem Ipsum is simply dummy.","21/01/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",119.0,4,"img/product3.jfif"));
            productlist.addToList(new Product(4,"Stylish Blue Women Bug","Lorem Ipsum is simply dummy.","26/01/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",249.0,5,"img/product4.jfif"));
            productlist.addToList(new Product(5,"An Amazing Short T-Shirt","Lorem Ipsum is simply dummy.","3/02/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",49.0,5,"img/product5.jfif"));
            productlist.addToList(new Product(6,"Black Jacket For Winter","Lorem Ipsum is simply dummy.","8/02/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",109.0,5,"img/product6.jfif"));
            productlist.addToList(new Product(7,"Skinny Blue Jeans","Lorem Ipsum is simply dummy.","17/02/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",129.0,4,"img/product7.jfif"));
            productlist.addToList(new Product(8,"Blue Short Pants For Summer","Lorem Ipsum is simply dummy.","29/02/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",169.0,4,"img/product8.jfif"));
            productlist.addToList(new Product(9,"Gray Color Shawl","Lorem Ipsum is simply dummy.","15/03/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",89.0,4,"img/product9.jfif"));
            productlist.addToList(new Product(10,"Long Down Jacket for Winter","Lorem Ipsum is simply dummy.","25/03/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",299.0,5,"img/product10.jfif"));
            productlist.addToList(new Product(11,"Black Bug For Women","Lorem Ipsum is simply dummy.","21/04/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",139.0,4,"img/product11.jfif"));
            productlist.addToList(new Product(12,"Black Bug For Women","Lorem Ipsum is simply dummy.","23/04/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",169.0,4,"img/product12.jfif"));
            productlist.addToList(new Product(13,"Red Bug For Women","Lorem Ipsum is simply dummy.","13/06/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",169.0,5,"img/product13.jfif"));
            productlist.addToList(new Product(14,"Grey Bug For Women","Lorem Ipsum is simply dummy.","19/07/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",219.0,5,"img/product14.jfif"));
            productlist.addToList(new Product(15,"Red Bug For Women","Lorem Ipsum is simply dummy.","27/08/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",179.0,5,"img/product15.jfif"));
            productlist.addToList(new Product(16,"Gray Bug For Women","Lorem Ipsum is simply dummy.","14/09/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",129.0,5,"img/product16.jfif"));
            productlist.addToList(new Product(17,"Summer Shoes For Women","Lorem Ipsum is simply dummy.","28/09/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",109.0,4,"img/product17.jfif"));
            productlist.addToList(new Product(18,"Black Bug For Women","Lorem Ipsum is simply dummy.","23/04/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",169.0,5,"img/product18.jfif"));
            productlist.addToList(new Product(19,"Sandale For Women","Lorem Ipsum is simply dummy.","22/10/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",69.0,4,"img/product19.jfif"));
            productlist.addToList(new Product(20,"School Shoes For Women","Lorem Ipsum is simply dummy.","11/11/2020","Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat. ",99.0,5,"img/product20.jfif"));


            session.setAttribute("listAll",productlist);
            session.setAttribute("listAllLastest",productlist);
            session.setAttribute("listAllSale",productlist);
            session.setAttribute("listAllPrice",productlist);
//            productlist=ProductDB.selectProductLastest();
//            session.setAttribute("listAllLastest",productlist);
//            productlist=ProductDB.selectProductSale();
//            session.setAttribute("listAllSale",productlist);
//            productlist=ProductDB.selectProductPrice();
//            session.setAttribute("listAllPrice",productlist);
//            System.out.println("Hello we have been successuly did the work!!");


        }catch (Exception e){
            System.out.println(e);
            System.out.println("you are here");
        }
//            ProductList prodlist=new ProductList();        //ArrayList<Product> products = ProductList.getList();
//        }
    }







    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
