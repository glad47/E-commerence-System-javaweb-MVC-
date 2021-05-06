package example;


import java.io.Serializable;
import java.text.NumberFormat;
import java.util.ArrayList;

public class Product implements Serializable {

    private int id;
    private String name;
    private String title;
    private String date;
    private String description;
    private double price;
    private int rating;
    private ArrayList<String> src;

    public Product() {
        id=0;
        name="";
        title="";
        date="";
        description = "";
        price = 0;
        rating=0;
        src=new ArrayList<String>();
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return this.description;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return this.price;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.price);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public ArrayList<String> getSrc() {
        return src;
    }

    public void setSrc(ArrayList<String> src) {
        this.src = src;
    }
    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

}