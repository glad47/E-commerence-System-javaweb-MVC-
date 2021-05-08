package example.service;

import example.model.Product;
import example.model.ProductList;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDB {
    public static ProductList selectProduct(){
        ProductList productList=new ProductList();
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        PreparedStatement ps_2=null;
        ResultSet rs=null;
        ResultSet rs_2=null;
        String query;
        String query_2;
        query = "select * from product join rate on" +
                " product.id=rate.id_prod ";
        query_2="select src from img join prod_img on img.id=prod_img.id_img where id_prod=?";
        try{
            ps=connection.prepareStatement(query);
            rs= ps.executeQuery();

            Product product=null;
            while(rs.next()){
                product=new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setTitle(rs.getString("title"));
                product.setDate(rs.getString("date"));
                product.setPrice(rs.getFloat("price"));
                product.setDescription(rs.getString("description"));
                product.setRating(rs.getInt("rating"));
                ps_2=connection.prepareStatement(query_2);
                ps_2.setInt(1,product.getId() );
                rs_2= ps_2.executeQuery();
                ArrayList<String> src=new ArrayList<String>();
                while (rs_2.next()){
                    src.add(rs_2.getString("src"));
                }
                product.setSrc(src);
                productList.addToList(product);

            }

            return productList;
        }catch(SQLException e){
            System.out.println(e);
            return null;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeResultSet(rs_2);
            DBUtil.closePreparedStatement(ps);
            DBUtil.closePreparedStatement(ps_2);
            pool.freeConnection(connection);

        }


    }

    public static Product selectProduct(String id){
        ProductList productList=new ProductList();
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        PreparedStatement ps_2=null;
        ResultSet rs=null;
        ResultSet rs_2=null;
        String query;
        String query_2;
        query = "select * from product join rate on" +
                " product.id=rate.id_prod where product.id=?";
        query_2="select src from img join prod_img on img.id=prod_img.id_img where id_prod=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(id) );
            rs= ps.executeQuery();

            Product product=null;
            while(rs.next()){
                product=new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setTitle(rs.getString("title"));
                product.setDate(rs.getString("date"));
                product.setPrice(rs.getFloat("price"));
                product.setDescription(rs.getString("description"));
                product.setRating(rs.getInt("rating"));
                ps_2=connection.prepareStatement(query_2);
                ps_2.setInt(1,product.getId() );
                rs_2= ps_2.executeQuery();
                ArrayList<String> src=new ArrayList<String>();
                while (rs_2.next()){
                    src.add(rs_2.getString("src"));
                }
                product.setSrc(src);
                productList.addToList(product);

            }

            return product;
        }catch(SQLException e){
            System.out.println(e);
            System.out.println("109 productDb");
            return null;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeResultSet(rs_2);
            DBUtil.closePreparedStatement(ps);
            DBUtil.closePreparedStatement(ps_2);
            pool.freeConnection(connection);

        }


    }


    public static ProductList selectProductLastest(){
        ProductList productList=new ProductList();
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        PreparedStatement ps_2=null;
        ResultSet rs=null;
        ResultSet rs_2=null;
        String query;
        String query_2;
        query = "select * from product join rate on product.id=rate.id_prod order by product.id desc ";
        query_2="select src from img join prod_img on img.id=prod_img.id_img where id_prod=?";
        try{
            ps=connection.prepareStatement(query);
            rs= ps.executeQuery();

            Product product=null;
            while(rs.next()){
                product=new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setTitle(rs.getString("title"));
                product.setDate(rs.getString("date"));
                product.setPrice(rs.getFloat("price"));
                product.setDescription(rs.getString("description"));
                product.setRating(rs.getInt("rating"));
                ps_2=connection.prepareStatement(query_2);
                ps_2.setInt(1,product.getId() );
                rs_2= ps_2.executeQuery();
                ArrayList<String> src=new ArrayList<String>();
                while (rs_2.next()){
                    src.add(rs_2.getString("src"));
                }
                product.setSrc(src);
                productList.addToList(product);

            }

            return productList;
        }catch(SQLException e){
            System.out.println(e);
            return null;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeResultSet(rs_2);
            DBUtil.closePreparedStatement(ps);
            DBUtil.closePreparedStatement(ps_2);
            pool.freeConnection(connection);

        }


    }

    public static ProductList selectProductSale(){
        ProductList productList=new ProductList();
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        PreparedStatement ps_2=null;
        ResultSet rs=null;
        ResultSet rs_2=null;
        String query;
        String query_2;
        query = "select * from product join rate on product.id=rate.id_prod order by rating desc ";
        query_2="select src from img join prod_img on img.id=prod_img.id_img where id_prod=?";
        try{
            ps=connection.prepareStatement(query);
            rs= ps.executeQuery();

            Product product=null;
            while(rs.next()){
                product=new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setTitle(rs.getString("title"));
                product.setDate(rs.getString("date"));
                product.setPrice(rs.getFloat("price"));
                product.setDescription(rs.getString("description"));
                product.setRating(rs.getInt("rating"));
                ps_2=connection.prepareStatement(query_2);
                ps_2.setInt(1,product.getId() );
                rs_2= ps_2.executeQuery();
                ArrayList<String> src=new ArrayList<String>();
                while (rs_2.next()){
                    src.add(rs_2.getString("src"));
                }
                product.setSrc(src);
                productList.addToList(product);

            }

            return productList;
        }catch(SQLException e){
            System.out.println(e);
            return null;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeResultSet(rs_2);
            DBUtil.closePreparedStatement(ps);
            DBUtil.closePreparedStatement(ps_2);
            pool.freeConnection(connection);

        }


    }
    public static ProductList selectProductPrice(){
        ProductList productList=new ProductList();
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        PreparedStatement ps_2=null;
        ResultSet rs=null;
        ResultSet rs_2=null;
        String query;
        String query_2;
        query = "select * from product join rate on product.id=rate.id_prod order by price asc";
        query_2="select src from img join prod_img on img.id=prod_img.id_img where id_prod=?";
        try{
            ps=connection.prepareStatement(query);
            rs= ps.executeQuery();

            Product product=null;
            while(rs.next()){
                product=new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setTitle(rs.getString("title"));
                product.setDate(rs.getString("date"));
                product.setPrice(rs.getFloat("price"));
                product.setDescription(rs.getString("description"));
                product.setRating(rs.getInt("rating"));
                ps_2=connection.prepareStatement(query_2);
                ps_2.setInt(1,product.getId() );
                rs_2= ps_2.executeQuery();
                ArrayList<String> src=new ArrayList<String>();
                while (rs_2.next()){
                    src.add(rs_2.getString("src"));
                }
                product.setSrc(src);
                productList.addToList(product);

            }

            return productList;
        }catch(SQLException e){
            System.out.println(e);

            return null;

        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeResultSet(rs_2);
            DBUtil.closePreparedStatement(ps);
            DBUtil.closePreparedStatement(ps_2);
            pool.freeConnection(connection);

        }


    }
}
