<%-- 
    Document   : signup
    Created on : 11-Aug-2023, 7:41:16 pm
    Author     : Ritik Mondal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


    </head>
    <body style="background: url(img/pexels-pixabay-531880.jpg); background-size: cover; background-attachment:fixed">
        <div class="container center-align">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3>Register here!!</h3>
                            <h5 id="msg"></h5>

                            <!--Form-->
                            <div class="form" >
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter your Name"/>
                                    <input type="password" name="user_password" placeholder="Enter your Password"/>
                                    <input type="email" name="user_email" placeholder="Enter your Email"/>
                                    <!--taking image input-->
                                    <div class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input type="file" name="image" >
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>
                                    </div>

                                    <button type="submit" class="btn teal">Submit</button>
                                </form>

                            </div>

                            <!--Loader-->
                            <div class="loader" style="margin-top: 15px; display: none">
                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>

                                <h5>Please wait...</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script
            src="https://code.jquery.com/jquery-3.7.0.min.js"
            integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
        crossorigin="anonymous"></script>

        <script>
            $(document).ready(function () {
                console.log("page is ready....");

                $("#myform").on('submit', function (event) {
                    event.preventDefault();
//                    var f = $(this).serialize();
                    var f = new FormData(this);
                    console.log(f);
                    $(".loader").show();
                    $(".form").hide();

                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        processData: false,
                        contentType: false,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("sucess......");
                            $(".loader").hide();
                            $(".form").show();
                           
                            if (data.trim() === 'Done') {
                                $('#msg').html("Succesfully Registered !!")
                                $("#msg").addClass('green-text')
                               
                            } else {
                               // $('#msg').html("Something went wrong !!")
                                $("#msg").addClass('red-text')
                                
                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(data);
                            console.log("Error.....");
                            $(".loader").hide();
                            $(".form").show();
                            $('#msg').html("Something went wrong !!")
                            $("#msg").addClass('red-text')

                      }
                      
//                        processData: false;
//                        contentType: false;

                    })
                })

            })
        </script>

    </body>
</html>
