package example.model;

import java.io.Serializable;
import java.text.NumberFormat;

public class LineItem implements Serializable {
    private int id;
    private Product product;
    private int quantity;
    private String size;
    public LineItem() {
        product=new Product();
        size="";
        quantity=0;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public void setProduct(Product p) {
        product=p;
    }

    public Product getProduct() {
        return this.product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return this.quantity;
    }

    public double getTotal() {
        double total = product.getPrice() * quantity;
        return total;
    }

    public String getTotalCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.getTotal());
    }
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
}
