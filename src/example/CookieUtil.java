package example;

import javax.servlet.http.Cookie;
import java.io.Serializable;

public class CookieUtil implements Serializable {
    public static String getCookieValue(Cookie[] cookies,String cookieName){
        String cookieValue="";
        if(cookies != null){
            for(Cookie cookie:cookies){
                if(cookieName.equalsIgnoreCase(cookie.getName())){
                    cookieValue=cookie.getValue();
                    return cookieValue;
                }

            }
        }
        return cookieValue;
    }
}
