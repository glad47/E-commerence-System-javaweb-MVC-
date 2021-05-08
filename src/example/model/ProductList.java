package example.model;

import java.io.Serializable;
import java.util.ArrayList;

public class ProductList implements Serializable {
   private  ArrayList<Product> list;
   public ProductList(){
           list=new ArrayList<Product>();


   }

   public ArrayList<Product> getList(){
       return list;
   }
   public int getCount(){
       return list.size();
   }
   public void addToList(Product product){

       list.add(product);
   }
   public void clearList(){
               list.clear();
               return;
           }
       }


