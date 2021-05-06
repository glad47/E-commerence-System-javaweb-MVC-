package example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CartDB {
    public static boolean checkActiveCart(int user_id){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query;
        query = "select count(*) as res from cart where id_user=? and active=\"yes\"";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,user_id);
            rs= ps.executeQuery();
            int  res = 0;
            if(rs.next()){
                res= rs.getInt("res");
            }
            if(res == 0){
                return false;
            }else{
                return true;
            }

        }catch(SQLException e){
            System.out.println(e);
            return false;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }



    public static void insertNewActiveCart(int user_id){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        int rs=0;
        String query;
        query = "insert into cart(id_user,active) values(?,\"yes\")";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,user_id);
            rs= ps.executeUpdate();

        }catch(SQLException e){
            System.out.println(e);

        }finally {

            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static int getActiveCartId(int user_id){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query;
        query = "select id from cart where id_user=? and active=\"yes\"";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,user_id);
            rs= ps.executeQuery();
            int  res = 0;
            if(rs.next()){
                res= rs.getInt("id");
            }

                return res;


        }catch(SQLException e){
            System.out.println(e);
            return -1;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static int check_lineitem_ava(int user_id,int prod_id,String size){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query;
        query = "select ch_lineitem_ava(?,?,?) res";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,user_id);
            ps.setInt(2,prod_id);
            ps.setString(3,size);
            rs= ps.executeQuery();
            int  res = 0;
            if(rs.next()){
                res= rs.getInt("res");
            }

            return res;


        }catch(SQLException e){
            System.out.println(e);
            return -1;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static int inserNewLineitem(int cart_id,int prod_id,int quantity,String size){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs = null;
        String query;
        int line_id=0;
        query = "insert into lineitem(id_prod,quantity,size) values(?,?,?)";
        try{
            ps=connection.prepareStatement(query,ps.RETURN_GENERATED_KEYS);
            ps.setInt(1,prod_id);
            ps.setInt(2,quantity);
            ps.setString(3,size);
            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
            if (rs.next()){
                line_id=rs.getInt(1);
            }
            query = "insert into line_cart(id_cart,id_line)values(?,?)";
            ps=connection.prepareStatement(query);
            ps.setInt(1,cart_id);
            ps.setInt(2,line_id);
            ps.executeUpdate();
            return line_id;

        }catch(SQLException e){
            System.out.println(e);
            return -1;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static int updateLineitem(int prod_id,int quantity,String size){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs = null;
        String query;
        int line_id=0;
        query = "select id from lineitem where id_prod=? and size=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,prod_id);
            ps.setString(2,size);
            rs=ps.executeQuery();
            if(rs.next()){
                line_id= rs.getInt("id");
            }

            query = "update lineitem set quantity=? where id=?";
            ps=connection.prepareStatement(query);
            ps.setInt(1,quantity);
            ps.setInt(2,line_id);
            ps.executeUpdate();
            return line_id;

        }catch(SQLException e){
            System.out.println(e);
            return -1;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static void updateLineitemWithId(int line_id,int quantity,String size){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs = null;
        String query;
        query = "update lineitem set quantity=?,size=? where id=?";
        try{


            ps=connection.prepareStatement(query);
            ps.setInt(1,quantity);
            ps.setString(2,size);
            ps.setInt(3,line_id);
            ps.executeUpdate();


        }catch(SQLException e){
            System.out.println(e);


        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static Cart updateSessionCart(int user_id){
        Cart cart=new Cart();
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query;
        query = "select * from cart \n" +
                "join line_cart on cart.id=line_cart.id_cart\n" +
                "join lineitem on lineitem.id=line_cart.id_line\n" +
                "join product on lineitem.id_prod=product.id\n" +
                "where cart.id_user=? and cart.active=\"yes\"";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,user_id);
            rs= ps.executeQuery();
            int  res = 0;
            while(rs.next()){
                LineItem lineItem = new LineItem();
                lineItem.setId(rs.getInt("line_cart.id_line"));
                Product product=ProductDB.selectProduct(Integer.toString(rs.getInt("lineitem.id_prod")));
                lineItem.setProduct(product);
                lineItem.setQuantity(rs.getInt("lineitem.quantity"));
                lineItem.setSize(rs.getString("lineitem.size"));
                cart.addItem(lineItem);


            }
            return cart;

        }catch(SQLException e){
            System.out.println(e);
            return null;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static int removeLineitem(int line_id){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        int rs =0;
        String query;

        query = "delete from lineitem where id=?";
        try{

            ps=connection.prepareStatement(query);
            ps.setInt(1,line_id);
            rs=ps.executeUpdate();
            return rs;

        }catch(SQLException e){
            System.out.println(e);
            return -1;

        }finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static float getTotal(int user_id){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query;
        query = "select cal_tot_bill(?) res";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,user_id);
            rs= ps.executeQuery();
            float res=0;
            if(rs.next()){
                res= rs.getFloat("res");
            }

            return res;


        }catch(SQLException e){
            System.out.println(e);
            return -1;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static float getTax(int user_id){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query;
        query = "select cal_tot_tax(?) res";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,user_id);
            rs= ps.executeQuery();
            float res=0;
            if(rs.next()){
                res= rs.getFloat("res");
            }

            return res;


        }catch(SQLException e){
            System.out.println(e);
            return -1;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static void makeCartDisactive(int cart_id){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        int rs=0;
        String query;
        query = "update cart set active=\"no\" where id=? ";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,cart_id);
            rs= ps.executeUpdate();

        }catch(SQLException e){
            System.out.println(e);

        }finally {

            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static void insertNewPayment(int user_id,int cart_id){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        int rs=0;
        String query;
        float total=getTotal(user_id)+getTax(user_id);
        query = "insert into payment(id_user,id_cart,total)values(?,?,?)";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,user_id);
            ps.setInt(2,cart_id);
            ps.setFloat(3,total);
            rs= ps.executeUpdate();
            makeCartDisactive(cart_id);

        }catch(SQLException e){
            System.out.println(e);

        }finally {

            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


}
