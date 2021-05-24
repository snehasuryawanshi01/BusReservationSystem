<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
<style>
        body {

            font-family: 'Ubuntu', sans-serif;
        }
    </style>

<title>User Register</title>
</head>
<body>
	<div class="container-fluid">
	<form action="UserRegister.jsp" method="post">
        <div class="row  align-items-center text-darkflex-direction-start" style="height:10vh;background:#f5f5f5">
           
        </div>
        <div class="row" style="height:76vh;background:#f5f5f5">
            <div class="col-3 "></div>
            <div class="col-6">
                <div class="row bg-secondary " style="height:76vh">
                    <div class="col-6 bg-danger d-flex justify-content-center align-items-center"
                        style="background:url(images/pexels-dominika-roseclay-1036808.jpg)center no-repeat;background-size:cover;">

                    </div>
                    <div class="col-6 bg-info">
                        <div class="row flex-column justify-content-center align-items-center ">
                            <div class="col bg-dark"></div>
                            <div class="col  mt-2 d-flex justify-content-center align-items-center text-light"
                                style="font-size: 52px;font-weight: bold;">
                                User Register</div>
                            <!-- symbol -->
                            <div class="col  mt-3 d-flex justify-content-center align-items-center">
                                <i class="fa fa-google " style="font-size:32px;color:white"></i>
                                <i class="fa fa-linkedin ml-4" style="font-size:32px;color:white"></i>
                                <i class="fa fa-facebook-f ml-4" style="font-size:32px;color:white"></i>

                            </div>
                            <div class="col mt-3 text-light" style="font-size:20px;">
                                Email:
                            </div>

                            <div class=" col mt-1 text-light">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default"><svg width="1em"
                                                height="1em" viewBox="0 0 16 16" class="bi bi-envelope-open"
                                                fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd"
                                                    d="M8.47 1.318a1 1 0 0 0-.94 0l-6 3.2A1 1 0 0 0 1 5.4v.818l5.724 3.465L8 8.917l1.276.766L15 6.218V5.4a1 1 0 0 0-.53-.882l-6-3.2zM15 7.388l-4.754 2.877L15 13.117v-5.73zm-.035 6.874L8 10.083l-6.965 4.18A1 1 0 0 0 2 15h12a1 1 0 0 0 .965-.738zM1 13.117l4.754-2.852L1 7.387v5.73zM7.059.435a2 2 0 0 1 1.882 0l6 3.2A2 2 0 0 1 16 5.4V14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V5.4a2 2 0 0 1 1.059-1.765l6-3.2z" />
                                            </svg></span>
                                    </div>
                                    <input type="text" name="emailId" placeholder="Enter your Email" class="form-control mr-5"
                                        aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                </div>
                            </div>
                            <div class="col mt-2 text-light" style="font-size:20px;">
                                User Name:
                            </div>

                            <div class=" col mt-1 text-light">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default"><svg width="1em"
                                                height="1em" viewBox="0 0 16 16" class="bi bi-envelope-open"
                                                fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd"
                                                    d="M8.47 1.318a1 1 0 0 0-.94 0l-6 3.2A1 1 0 0 0 1 5.4v.818l5.724 3.465L8 8.917l1.276.766L15 6.218V5.4a1 1 0 0 0-.53-.882l-6-3.2zM15 7.388l-4.754 2.877L15 13.117v-5.73zm-.035 6.874L8 10.083l-6.965 4.18A1 1 0 0 0 2 15h12a1 1 0 0 0 .965-.738zM1 13.117l4.754-2.852L1 7.387v5.73zM7.059.435a2 2 0 0 1 1.882 0l6 3.2A2 2 0 0 1 16 5.4V14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V5.4a2 2 0 0 1 1.059-1.765l6-3.2z" />
                                            </svg></span>
                                    </div>
                                    <input type="text" name="userName" placeholder="Enter your Name" class="form-control mr-5"
                                        aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                </div>
                            </div>
                            <div class="col mt-2 text-light" style="font-size:20px;">
                               User Pass:
                            </div>
                            <div class=" col mt-1 text-light" style="font-size:20px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default"><svg width="1em"
                                                height="1em" viewBox="0 0 16 16" class="bi bi-key" fill="currentColor"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd"
                                                    d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z" />
                                                <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                                            </svg></span>
                                    </div>
                                    <input type="password" name="userPass" placeholder="Enter your Password"
                                        class="form-control mr-5" aria-label="Sizing example input"
                                        aria-describedby="inputGroup-sizing-default">
                                </div>
                            </div>


                            <!-- button -->
                            <div class=" col  mt-4 mb-3 d-flex justify-content-center align-items-center">

                                <button type="submit" class="btn btn-outline-dark btn-light"
                                    style="width:300px;font-size: 20px;">Register</button>


                            </div>
                            <div class="col mb-3 mt-3 text-light d-flex justify-content-around "
                                style="font-size: 16px;text-decoration: none;">
                                <a href="UserForgetForm.jsp" style="color:white;">Forget Password?</a><a
                                    href="UserLoginForm.jsp" style="color:white;">Log
                                    In</a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row" style="height:12vh;background:#f5f5f5">

        </div>

</form>
    </div>
</body>
</html>