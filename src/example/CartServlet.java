package example;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CartServlet",urlPatterns = "/cartservlet")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//         String url="";
//        ServletContext sc = getServletContext();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            String action = request.getParameter("action");
            if (action.equalsIgnoreCase("add")) {


                String prod_id = request.getParameter("id");
                String size = request.getParameter("size");
                String quantityString = request.getParameter("quantity");
                Product product = ProductDB.selectProduct(prod_id);


                int quantity;
                try {
                    quantity = Integer.parseInt(quantityString);
                    if (quantity < 0) {
                        quantity = 1;
                    }
                } catch (NumberFormatException nfe) {
                    quantity = 1;
                }
                //find if the user have active cart if not create new one
                boolean ch = CartDB.checkActiveCart(user.getId());
                if (!ch) {
                    CartDB.insertNewActiveCart(user.getId());
                }
                int cart_id = CartDB.getActiveCartId(user.getId());
                //check the lineitem availabilty
                int lineava = CartDB.check_lineitem_ava(user.getId(), product.getId(), size);
                int line_id = 0;
                if (lineava == 1) {
                    //lineitem is available meaning there is no such a product in the cart
                    line_id = CartDB.inserNewLineitem(cart_id, product.getId(), quantity, size);


                } else {
                    //lineitem is not available meaning there is one already update the quantity only
                    //no avalibilty indicated by the same product with the same size
                    //or the samr product with the same size and quantity and hence
                    //updating the quantity will slove the both option then why not
                    line_id = CartDB.updateLineitem(product.getId(), quantity, size);


                }
                //update cart with all the lineitem from the database and store them to the session cart
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null) {
                    cart = new Cart();
                }
                cart = CartDB.updateSessionCart(user.getId());


                session.setAttribute("cart", cart);
                Cookie[] cookies = request.getCookies();
                String noti = CookieUtil.getCookieValue(cookies, "noti");
                if (noti == null || noti.equals("")) {
                    Cookie c = new Cookie("noti", Integer.toString(1));
                    c.setMaxAge(60 * 60 * 24 * 360 * 2);
                    c.setPath("/");
                    response.addCookie(c);

                } else {
                    int count = Integer.parseInt(noti);
                    count = count + 1;
                    Cookie c = new Cookie("noti", Integer.toString(count));
                    c.setMaxAge(60 * 60 * 24 * 360 * 2);
                    c.setPath("/");
                    response.addCookie(c);

                }
            } else if (action.equalsIgnoreCase("removeCookie")) {
                Cookie[] cookies = request.getCookies();
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equalsIgnoreCase("noti")) {
                        cookie.setMaxAge(0);
                        cookie.setPath("/");
                        response.addCookie(cookie);
                    }
                }
            } else if (action.equalsIgnoreCase("removeitem")) {
                //you must use this function with jQuery to update the view in jsp file
                int line_id = Integer.parseInt(request.getParameter("line_id"));
                CartDB.removeLineitem(line_id);
                //update cart with all the lineitem from the database and store them to the session cart
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null) {
                    cart = new Cart();
                }
                cart = CartDB.updateSessionCart(user.getId());


            }else if(action.equalsIgnoreCase("update")) {
                String line_id = request.getParameter("id");
                String size = request.getParameter("size");
                String quantity = request.getParameter("quantity");

//                int quantity;
//                try {
//                    quantity = Integer.parseInt(quantityString);
//                    if (quantity < 0) {
//                        quantity = 1;
//                    }
//                } catch (NumberFormatException nfe) {
//                    quantity = 1;
//                }
                CartDB.updateLineitemWithId(Integer.parseInt(line_id), Integer.parseInt(quantity), size);

                //update cart with all the lineitem from the database and store them to the session cart
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null) {
                    cart = new Cart();
                }
                cart = CartDB.updateSessionCart(user.getId());


                session.setAttribute("cart", cart);
                Cookie[] cookies = request.getCookies();
                String noti = CookieUtil.getCookieValue(cookies, "noti");
                if (noti == null || noti.equals("")) {
                    Cookie c = new Cookie("noti", Integer.toString(1));
                    c.setMaxAge(60 * 60 * 24 * 360 * 2);
                    c.setPath("/");
                    response.addCookie(c);

                } else {
                    int count = Integer.parseInt(noti);
                    count = count + 1;
                    Cookie c = new Cookie("noti", Integer.toString(count));
                    c.setMaxAge(60 * 60 * 24 * 360 * 2);
                    c.setPath("/");
                    response.addCookie(c);

                }

            }else if (action.equalsIgnoreCase("total")) {
                float total=CartDB.getTotal(user.getId());
                response.setContentType("text/html;charset=UTF-8");
                request.setCharacterEncoding("UTF-8");
                PrintWriter out=response.getWriter();
                out.print(total);

            }else if(action.equalsIgnoreCase("tax")){
                float tax=CartDB.getTax(user.getId());
                response.setContentType("text/html;charset=UTF-8");
                request.setCharacterEncoding("UTF-8");
                PrintWriter out=response.getWriter();
                out.print(tax);

            }else if(action.equalsIgnoreCase("payment")){
                //complete the program payment
                //making the cart disactive
                //finding the total amount and taxes and so on
                //when we reach this point we assume everything is compeletrly
                //updated through the database and hence we will perform only payment
            int cart_id=CartDB.getActiveCartId(user.getId());
              CartDB.insertNewPayment(user.getId(),cart_id);
              CartDB.insertNewActiveCart(user.getId());
              cart_id = CartDB.getActiveCartId(user.getId());
              Cart  cart = new Cart();
              cart = CartDB.updateSessionCart(user.getId());
              session.setAttribute("cart", cart);
                response.setContentType("text/html;charset=UTF-8");
                request.setCharacterEncoding("UTF-8");
                PrintWriter out=response.getWriter();
                out.print("success");



            }
        }else {
            System.out.println("Cart Servlet no user found!!");
//            url = "/account.jsp";
//            sc.getRequestDispatcher(url).forward(request, response);
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            out.print("register");
        }

    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
