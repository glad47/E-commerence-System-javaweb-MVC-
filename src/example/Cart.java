package example;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {
    private ArrayList<LineItem> items;
    public Cart(){
        items=new ArrayList<LineItem>();
    }
    public ArrayList<LineItem> getItems(){
        return items;
    }
    public int getCount(){
        return items.size();
    }
    public void addItem(LineItem item){

        items.add(item);
    }
    public void removeItem(LineItem item){

                return;
            }

}


