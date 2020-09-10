<%-- 
    Document   : pages-settings
    Created on : Aug 5, 2020, 9:07:02 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Responsive Web UI Kit &amp; Dashboard Template based on Bootstrap">
        <meta name="author" content="AdminKit">
        <meta name="keywords" content="adminkit, bootstrap, web ui kit, dashboard template, admin template">

        <link rel="shortcut icon" href="dcss/img/icons/icon-48x48.png" />

        <title>Settings | AdminKit Demo</title>

        <link href="dcss/css/app.css" rel="stylesheet">
    </head>

    <body>
        <div class="wrapper">


            <%@ include file='./sidebar/saidbar.jsp'%>




            <div class="main">

                <%@ include file='./sidebar/navbar.jsp'%>



                <main class="content">
                    <div class="container-fluid p-0">

                        <h1 class="h3 mb-3">Settings</h1>

                        <div class="row">
                            <div class="col-md-3 col-xl-2">

                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="card-title mb-0">Profile Settings</h5>
                                    </div>

                                    <div class="list-group list-group-flush" role="tablist">
                                        <a class="list-group-item list-group-item-action active" data-toggle="list" href="#account" role="tab">
                                            Account
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#password" role="tab">
                                            Password
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#userlist" role="tab">
                                            User List
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#vandorlist" role="tab">
                                            Vendor List
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#employeelist" role="tab">
                                            Employee list
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#adminlist" role="tab">
                                            Admin List
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#productlist" role="tab">
                                            Product List
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#neworders" role="tab">
                                            New Orders
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#confirmorders" role="tab">
                                            Confirm Orders
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#deliveredorders" role="tab">
                                            Delivered Orders
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#addnewproducts" role="tab">
                                            Add New Products
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-9 col-xl-10">
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="account" role="tabpanel">

                                        <div class="card">
                                            <div class="card-header">

                                                <h5 class="card-title mb-0">Public info</h5>
                                            </div>
                                            <div class="card-body">
                                                <form>
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                            <div class="form-group">
                                                                <label for="inputUsername">Username</label>
                                                                <input type="text" class="form-control" id="inputUsername" placeholder="Username">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputUsername">Biography</label>
                                                                <textarea rows="2" class="form-control" id="inputBio" placeholder="Tell something about yourself"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="text-center">
                                                                <img alt="Charles Hall" src="dcss/img/avatars/avatar.jpg" class="rounded-circle img-responsive mt-2" width="128" height="128" />
                                                                <div class="mt-2">
                                                                    <span class="btn btn-primary"><i class="fas fa-upload"></i> Upload</span>
                                                                </div>
                                                                <small>For best results, use an image at least 128px by 128px in .jpg format</small>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                                </form>

                                            </div>
                                        </div>

                                        <div class="card">
                                            <div class="card-header">

                                                <h5 class="card-title mb-0">Private info</h5>
                                            </div>
                                            <div class="card-body">
                                                <form>
                                                    <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                            <label for="inputFirstName">First name</label>
                                                            <input type="text" class="form-control" id="inputFirstName" placeholder="First name">
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label for="inputLastName">Last name</label>
                                                            <input type="text" class="form-control" id="inputLastName" placeholder="Last name">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputEmail4">Email</label>
                                                        <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputAddress">Address</label>
                                                        <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputAddress2">Address 2</label>
                                                        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                            <label for="inputCity">City</label>
                                                            <input type="text" class="form-control" id="inputCity">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label for="inputState">State</label>
                                                            <select id="inputState" class="form-control">
                                                                <option selected>Choose...</option>
                                                                <option>...</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group col-md-2">
                                                            <label for="inputZip">Zip</label>
                                                            <input type="text" class="form-control" id="inputZip">
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                                </form>

                                            </div>
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="password" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Password</h5>

                                                <form>
                                                    <div class="form-group">
                                                        <label for="inputPasswordCurrent">Current password</label>
                                                        <input type="password" class="form-control" id="inputPasswordCurrent">
                                                        <small><a href="#">Forgot your password?</a></small>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPasswordNew">New password</label>
                                                        <input type="password" class="form-control" id="inputPasswordNew">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPasswordNew2">Verify password</label>
                                                        <input type="password" class="form-control" id="inputPasswordNew2">
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                                </form>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="userlist" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">User List</h5>

                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:15%;">id</th>
                                                            <th style="width:15%;">Name</th>
                                                            <th style="width:15%">Phone Number</th>
                                                            <th style="width:15%">Roles</th>
                                                            <th style="width:15%">Email</th>
                                                            <th style="width:15%">District</th>
                                                            <!--<th class="d-nne d-md-table-cell" style="width:25%">Date of Birth</th>-->

                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="emp" items="${userlist}">
                                                            <tr>
                                                                <td><c:out value="${emp.id}"/></td>
                                                                <td><c:out value="${emp.firstname} ${emp.lastname}"/></td>
                                                                <td><c:out value="${emp.phone}"/></td>

                                                                <td>
                                                                    <c:out value="${emp.roles}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.email}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.district}"/>                       
                                                                </td>
                                                                <td class="table-action">
                                                                    <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                                    <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                                                </td>



                                                            </tr>
                                                        </c:forEach>




                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="vandorlist" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Vandor List</h5>

                                                <table class="table">
                                                    <thead>
                                                        <tr>

                                                            <th style="width:12%;">Name</th>
                                                            <th style="width:12%">Phone Number</th>
                                                            <th style="width:12%">Company Name</th>
                                                            <th style="width:12%">Email</th>
                                                            <th style="width:12%">Address</th>

                                                            <th style="width:12%">Agreement</th>

                                                            <!--<th class="d-nne d-md-table-cell" style="width:25%">Date of Birth</th>-->

                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="emp" items="${vendorList}">
                                                            <tr>

                                                                <td><c:out value="${emp.name}"/></td>
                                                                <td><c:out value="${emp.phone}"/></td>

                                                                <td>
                                                                    <c:out value="${emp.company}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.email}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.address} ${emp.thana} ${emp.district} Post code: ${emp.postcode}"/>                       
                                                                </td>

                                                                <td>
                                                                    <c:out value="${emp.agriment}"/>                       
                                                                </td>
                                                                <td class="table-action">
                                                                    <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                                    <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                                                </td>



                                                            </tr>
                                                        </c:forEach>




                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="employeelist" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Employee List</h5>
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:15%;">id</th>
                                                            <th style="width:15%;">Name</th>
                                                            <th style="width:15%">NID Number</th>
                                                            <th style="width:15%">Address</th>
                                                            <th style="width:15%">Employee ID</th>
                                                            <th style="width:15%">Post</th>
                                                            <!--<th class="d-nne d-md-table-cell" style="width:25%">Date of Birth</th>-->

                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="emp" items="${emplist}">
                                                            <tr>
                                                                <td><c:out value="${emp.id}"/></td>
                                                                <td><c:out value="${emp.name}"/></td>
                                                                <td><c:out value="${emp.nid}"/></td>

                                                                <td>
                                                                    <c:out value="${emp.address}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.emp_id}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.post}"/>                       
                                                                </td>
                                                                <td class="table-action">
                                                                    <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                                    <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                                                </td>



                                                            </tr>
                                                        </c:forEach>




                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="adminlist" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Admin List</h5>

                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:15%;">id</th>
                                                            <th style="width:15%;">Name</th>
                                                            <th style="width:15%">Phone Number</th>
                                                            <th style="width:15%">Roles</th>
                                                            <th style="width:15%">Email</th>
                                                            <th style="width:15%">District</th>
                                                            <!--<th class="d-nne d-md-table-cell" style="width:25%">Date of Birth</th>-->

                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="emp" items="${userlist}">
                                                            <tr>
                                                                <td><c:out value="${emp.id}"/></td>
                                                                <td><c:out value="${emp.firstname} ${emp.lastname}"/></td>
                                                                <td><c:out value="${emp.phone}"/></td>

                                                                <td>
                                                                    <c:out value="${emp.roles}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.email}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.district}"/>                       
                                                                </td>
                                                                <td class="table-action">
                                                                    <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                                    <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                                                </td>



                                                            </tr>
                                                        </c:forEach>




                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="neworders" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">New Orders</h5>

                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:15%;">id</th>
                                                            <th style="width:15%;">Name</th>
                                                            <th style="width:15%">Phone Number</th>
                                                            <th style="width:15%">Roles</th>
                                                            <th style="width:15%">Email</th>
                                                            <th style="width:15%">District</th>
                                                            <!--<th class="d-nne d-md-table-cell" style="width:25%">Date of Birth</th>-->

                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="emp" items="${userlist}">
                                                            <tr>
                                                                <td><c:out value="${emp.id}"/></td>
                                                                <td><c:out value="${emp.firstname} ${emp.lastname}"/></td>
                                                                <td><c:out value="${emp.phone}"/></td>

                                                                <td>
                                                                    <c:out value="${emp.roles}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.email}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.district}"/>                       
                                                                </td>
                                                                <td class="table-action">
                                                                    <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                                    <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                                                </td>



                                                            </tr>
                                                        </c:forEach>




                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>


                                    <div class="tab-pane fade" id="confirmorders" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Confirm Orders</h5>

                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:15%;">id</th>
                                                            <th style="width:15%;">Name</th>
                                                            <th style="width:15%">Phone Number</th>
                                                            <th style="width:15%">Roles</th>
                                                            <th style="width:15%">Email</th>
                                                            <th style="width:15%">District</th>
                                                            <!--<th class="d-nne d-md-table-cell" style="width:25%">Date of Birth</th>-->

                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="emp" items="${userlist}">
                                                            <tr>
                                                                <td><c:out value="${emp.id}"/></td>
                                                                <td><c:out value="${emp.firstname} ${emp.lastname}"/></td>
                                                                <td><c:out value="${emp.phone}"/></td>

                                                                <td>
                                                                    <c:out value="${emp.roles}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.email}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.district}"/>                       
                                                                </td>
                                                                <td class="table-action">
                                                                    <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                                    <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                                                </td>



                                                            </tr>
                                                        </c:forEach>




                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="deliveredorders" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Delivered Orders</h5>

                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:15%;">id</th>
                                                            <th style="width:15%;">Name</th>
                                                            <th style="width:15%">Phone Number</th>
                                                            <th style="width:15%">Roles</th>
                                                            <th style="width:15%">Email</th>
                                                            <th style="width:15%">District</th>
                                                            <!--<th class="d-nne d-md-table-cell" style="width:25%">Date of Birth</th>-->

                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="emp" items="${userlist}">
                                                            <tr>
                                                                <td><c:out value="${emp.id}"/></td>
                                                                <td><c:out value="${emp.firstname} ${emp.lastname}"/></td>
                                                                <td><c:out value="${emp.phone}"/></td>

                                                                <td>
                                                                    <c:out value="${emp.roles}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.email}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.district}"/>                       
                                                                </td>
                                                                <td class="table-action">
                                                                    <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                                    <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                                                </td>



                                                            </tr>
                                                        </c:forEach>




                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="addnewproducts" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Add New Products</h5>
                                                
                                                

                                                <div class="col-12 col-xl-6">
                                                    <div class="card">
                                                        <div class="card-header">
                                                            <h5 class="card-title">Basic form</h5>
                                                            <h6 class="card-subtitle text-muted">Default Bootstrap form layout.</h6>
                                                        </div>
                                                        <div class="card-body">
                                                            <form>
                                                                <div class="form-group">
                                                                    <label class="form-label">Email address</label>
                                                                    <input type="email" class="form-control" placeholder="Email">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="form-label">Password</label>
                                                                    <input type="password" class="form-control" placeholder="Password">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="form-label">Textarea</label>
                                                                    <textarea class="form-control" placeholder="Textarea" rows="1"></textarea>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="form-label w-100">File input</label>
                                                                    <input type="file">
                                                                    <small class="form-text text-muted">Example block-level help text here.</small>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input">
                                                                        <span class="custom-control-label">Check me out</span>
                                                                    </label>
                                                                </div>
                                                                <button type="submit" class="btn btn-primary">Submit</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>

                                                
                                                
                                                
                                                
                                                
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="productlist" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Product List</h5>


                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:15%;">id</th>
                                                            <th style="width:15%;">Name</th>
                                                            <th style="width:15%">Category</th>
                                                            <th style="width:15%">Company</th>
                                                            <th style="width:15%">Stock Detail</th>
                                                            <th style="width:15%">New Price</th>
                                                            <th style="width:15%">Cost Price</th>
                                                            <!--<th class="d-nne d-md-table-cell" style="width:25%">Date of Birth</th>-->

                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="emp" items="${productList}">
                                                            <tr>
                                                                <td><c:out value="${emp.product_id}"/></td>
                                                                <td><c:out value="${emp.product_name}"/></td>
                                                                <td><c:out value="${emp.category}"/></td>

                                                                <td>
                                                                    <c:out value="${emp.company}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.quantity}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.new_price}"/>                       
                                                                </td>
                                                                <td>
                                                                    <c:out value="${emp.cost_price}"/>                       
                                                                </td>
                                                                <td class="table-action">
                                                                    <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                                    <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                                                </td>



                                                            </tr>
                                                        </c:forEach>




                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>




                                </div>
                            </div>
                        </div>

                    </div>
                </main>

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row text-muted">
                            <div class="col-6 text-left">
                                <p class="mb-0">
                                    <a href="index.html" class="text-muted"><strong>AdminKit Demo</strong></a> &copy;
                                </p>
                            </div>
                            <div class="col-6 text-right">
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Support</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Help Center</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Privacy</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Terms</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

        <!--	<script src="dcss/js/vendor.js"></script>-->
        <script src="dcss/js/app.js"></script>

    </body>

</html>