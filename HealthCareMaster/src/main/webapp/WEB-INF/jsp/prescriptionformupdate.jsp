<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Care</title>

    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Icons font CSS-->
    <link href="resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../resources/css/main.css" rel="stylesheet" media="all">
    <style>
    .text_color {
    background: #ead7e7;
    }
    
    .area_field{
    
    width: 585px;
    margin: 0px;
    height: 174px;
    }
    
    .add_field {
    
    margin: 0px;
    width: 264px;
    height: 50px;
    }
    </style>

</head>
<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 classRegistration="title" style="margin-left: 128px;margin-top:-35px;padding-left: 10px;">Prescription Form</h2>
                     <br><br>
                     <h3 style="margin-left: 100px;margin-top: -20px;color: red;margin-bottom: 20px;">${UpdateMsg}</h3>
                    <form method="POST"  action="PrescriptionFormUpdate"  modelAttribute="form">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">first name</label>
                                    <input class="input--style-4 text_color" type="text" name="firstName" value=${form.firstName}>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">last name</label>
                                    <input class="input--style-4 text_color" type="text" name="lastName" value=${form.lastName}>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Age</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker text_color" type="text" name="age" value=${form.age}>
                                       
                                    </div>
                                </div>
                            </div>
                            
                             <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4 text_color" type="email" name="email" value=${form.email}>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row row-space">
                           
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4 text_color" type="text" name="phone" value=${form.phone}>
                                </div>
                            </div>
                            
                             <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Address</label>
                                    
                                    <textarea class="input--style-4 text_color add_field" name="add">${form.add}</textarea>
                                </div>
                            </div>
                        </div>



                        <div class="row row-space">
                        
                        <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Postal</label>
                                    <input class="input--style-4 text_color" type="text" name="postal" value=${form.postal}>
                                 </div>
                            </div>
                           
                             <div class="col-2">
                                <div class="input-group">
                                    <label class="label">City</label>
                                    <input class="input--style-4 text_color" type="text" name="city" value=${form.city}>
                                </div>
                            </div>

                             
                           
                        </div>


                        <div class="row row-space">


                        	
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">State</label>
                                    <input class="input--style-4 text_color" type="text" name="state" value=${form.state}>
                                 </div>
                            </div>
                            
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Country</label>
                                    <input class="input--style-4 text_color" type="text" name="country" value=${form.country}>
                                </div>
                            </div>
                           
                        </div>

                      <div class="row row-space">


                      	 
                           
                           
                        </div>                        
                        



                        <div class="input-group">


                        	 <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Symptoms</label>
                                    <textarea class="input--style-4 text_color area_field" name="symtoms">${form.symtoms}</textarea>
                                </div>
                            </div>
                            
                        </div>


                        <div class="input-group">
                             <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Medication Details</label>
                                    <textarea class="input--style-4 text_color area_field" name="medicine">${form.medicine}</textarea>
                                </div>
                            </div>
                        </div>



                     <div class="input-group">
                              <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Additional Details</label>
                                    <textarea class="input--style-4 text_color area_field" name="additional" >${form.additional}</textarea>
                                </div>
                            </div>
                            
                           
                        </div>
 						<input type="hidden" name="id" value=${form.id}>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" style="margin-left: 150px;" type="submit">Update</button>
                            <span class="btn btn--radius-2 btn--blue" style="width: 154px;padding-left: 60px;"><a href="/PrescriptionList" style="text-decoration:none; color:white;">Back</a></span>
                            
                        </div>
                    </form>
        </div>




                    
    </div>

    <!-- Jquery JS-->
    <script src="resources/resources/vendor/jquery/jquery.min.js"></script>
    <!-- resources/vendor JS-->
    <script src="resources/vendor/select2/select2.min.js"></script>
    <script src="resources/vendor/datepicker/moment.min.js"></script>
    <script src="resources/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
    
    <h3>${UpdateMsg}</h3>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>