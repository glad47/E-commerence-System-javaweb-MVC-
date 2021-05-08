package example.service;

import example.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDB {
    public static int insert(User user){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        String query="insert into user(username,password,email) values(?,?,?)";
        try{
            ps=connection.prepareStatement(query);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            return ps.executeUpdate();


        }catch(SQLException e){
            System.out.println(e);
            return 0;
        }finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static int update(User user){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        String query="update user set username=?,password=?,email=? where id=?)";
        try{
            ps=connection.prepareStatement(query);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setInt(4, user.getId());
            return ps.executeUpdate();

        }catch(SQLException e){
            System.out.println(e);
            return 0;
        }finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static int delete(User user){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        String query="delete from user where email=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setString(1, user.getEmail());
            return ps.executeUpdate();

        }catch(SQLException e){
            System.out.println(e);
            return 0;
        }finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static boolean emailExists(String email){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from user where email=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setString(1, email);
            rs= ps.executeQuery();
            return rs.next();

        }catch(SQLException e){
            System.out.println(e);
            return false;
        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static boolean usernameExists(String username){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from user where username=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setString(1, username);
            rs= ps.executeQuery();
            return rs.next();

        }catch(SQLException e){
            System.out.println(e);
            return false;
        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static User selectUser(String email){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from user where email=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setString(1, email);
            rs= ps.executeQuery();
            User user=null;
            if(rs.next()){
                user=new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
            }
            return user;

        }catch(SQLException e){
            System.out.println(e);
            return null;
        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static User login(String username,String password){
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from user where username=? and password=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs= ps.executeQuery();
            User user=null;
            if(rs.next()){
                user=new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
            }
            return user;

        }catch(SQLException e){
            System.out.println(e);
            return null;
        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

}
