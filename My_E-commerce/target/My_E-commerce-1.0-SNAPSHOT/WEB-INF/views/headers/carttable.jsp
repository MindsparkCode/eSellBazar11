<%-- 
    Document   : carttable
    Created on : Aug 11, 2020, 8:58:35 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>




                                            <!-- Begin table -->
                                            <table class="table cart-table">
                                                <thead>
                                                    <tr>
                                                        <th class="table-title">Product Name</th>
                                                        <th class="table-title">Product Code</th>
                                                        <th class="table-title">Unit Price</th>
                                                        <th class="table-title">Quantity</th>
                                                        <th class="table-title">SubTotal</th>
                                                        <th>

                                                            <span class="close-button disabled"></span></th>
                                                    </tr>
                                                </thead>


                                                <tbody>

                                                    <c:forEach var="cart" items="${cartlist}" varStatus="status">                                              
                                                        <tr>
                                                            <td class="product-name-col">
                                                                <figure>
                                                                    <a href="#"><img class="img-responsive"  src="img/product/${cart.image}.jpg" alt="White linen sheer dress"></a>
                                                                </figure>
                                                                <h2 class="product-name"><a href="#">${cart.product_name}</a></h2>

                                                                <ul>
                                                                    <li>Color:

                                                                        <select id="region${cart.id}" name="region" class="selectbox">

                                                                            <option value="">select</option>
                                                                            <option value="Red">Red</option>

                                                                            <option value="Green">Green</option>

                                                                            <option value="Black">Black</option>
                                                                        </select></li>
                                                                    <li>Size: <select id="size${cart.id}" name="region" class="selectbox">

                                                                            <option value="">  select</option>
                                                                            <option value="Red">SM</option>

                                                                            <option value="Green">L</option>

                                                                            <option value="Black">M</option>
                                                                            <option value="Black">XL</option>
                                                                        </select></li>
                                                                </ul>
                                                            </td>
                                                            <td class="product-code">${cart.product_id}</td>
                                                            <td class="product-price-col">
                                                                <span class="product-price-special">${cart.new_price}</span>
                                                            </td>
                                                            <td>
                                                                <div class="custom-quantity-input">
                                                                    <input type="number" name="quantity" id="quantity_${cart.id}" oninput="myFunction(${cart.id},${cart.new_price});return false">
                                                                </div>
                                                            </td>
                                                            <td class="product-total-col">
                                                                <span class="product-price-special" id="subtotal_${cart.id}"></span>
                                                            </td>
                                                            <td>
                                                                <a href="deleteCart?id=<c:out value='${cart.id}'/>" class="close-button"><i class="fa fa-times"></i></a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach> 


   

                                                </tbody>
                                            </table>