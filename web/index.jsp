<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12-Nov-20
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width" initial-scale="1.0">
    <title>Shoppe</title>
      <script src="js/jquery-3.5.1.js"></script>
      <script>

          $(function(){

              $.ajax({
                  type: 'POST',
                  url: "productservlet",
                  data:  {
                      action: "default"
                  },
                  success: ()=>{
                      $.ajax({
                          type: 'POST',
                          url: "cartservlet",
                          data:  {
                              action: "default"
                          },
                          success:  function(data, status){
                              document.location.href = 'main.jsp',true;

                          },
                          async:false
                      });


                  },
                  async:false
              });
              // $.post("productservlet",
              //     {
              //         action: "default"
              //     },


              // $.post("cartservlet",
              //     {
              //         action: "default"
              //     },
              //     function(data, status){
              //         document.location.href = 'main.jsp',true;
              //
              //     });
          })
      </script>


  </head>
  <body>
  </body>
</html>
