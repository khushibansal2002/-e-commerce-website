<%@page import="java.util.Map"%>
<%@page import="com.learn.mycart.helper.Helper"%>
<%@page import="com.learn.mycart.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.mycart.helper.FactoryProvider"%>
<%@page import="com.learn.mycart.dao.CategoryDao"%>
<%@page import="com.learn.mycart.entities.User"%>



<!--//    User user = (User) session.getAttribute("current-user");
//    if (user == null) {
//
//        session.setAttribute("message", "You are not logged in !! Login first");
//        response.sendRedirect("login.jsp");
//        return;
//
//    }-->



 <%  CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                                List<Category> list = cdao.getCategories();
//getting count
Map<String,Long> m=Helper.getCounts(FactoryProvider.getFactory());
                            %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Seller Panel</title>
        <%@include file="components/common_css_js.jsp" %>
      </head>
      <body>
        <%@include file="components/navbar.jsp" %>

        <div class="container seller">

          <div class="row mt-3">
            <!--first col-->
           <div class="col-md-6">
              <div
                class="card"
                data-toggle="modal"
                data-target="#add-product-modal"
              >
                <div class="card-body text-center">
                  <div class="container">
                    <img
                      style="max-width: 125px"
                      class="img-fluid rounded-circle"
                      src="img/plus.png"
                      alt="user_icon"
                    />
                  </div>

                  <p class="mt-2">Click here to add new Product</p>
                                          
                  <h1 class="text-uppercase text-muted">Add Product</h1>
                </div>
              </div>
              
            </div>
          </div>
        </div>

        <!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->

        <!--product modal-->

        <!-- Modal -->
        <div
          class="modal fade"
          id="add-product-modal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="exampleModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">
                  Product details
                </h5>
                <button
                  type="button"
                  class="close"
                  data-dismiss="modal"
                  aria-label="Close"
                >
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                  
                <!--form-->

                <form
                  action="ProductOperationServlet"
                  method="post"
                  enctype="multipart/form-data"
                >
                  <input type="hidden" name="operation" value="addproduct" />

                  <!--product title-->

                  <div class="form-group">
                    <input
                      type="text"
                      class="form-control"
                      placeholder="Enter title of product"
                      name="pName"
                      required
                    />
                  </div>

                  <!--product description-->

                  <div class="form-group">
                    <textarea
                      style="height: 150px"
                      class="form-control"
                      placeholder="Enter product description"
                      name="pDesc"
                    ></textarea>
                  </div>

                  <!--product price-->

                  <div class="form-group">
                    <input
                      type="number"
                      class="form-control"
                      placeholder="Enter price of product"
                      name="pPrice"
                      required
                    />
                  </div>

                  <!--product discount-->

                  <div class="form-group">
                    <input
                      type="number"
                      class="form-control"
                      placeholder="Enter product discount"
                      name="pDiscount"
                      required
                    />
                  </div>

                  <!--product quantity-->

                  <div class="form-group">
                    <input
                      type="number"
                      class="form-control"
                      placeholder="Enter product Quantity"
                      name="pQuantity"
                      required
                    />
                  </div>

                  <!--product category-->

                  <div class="form-group">
                                <select name="catId" class="form-control" id="">
                                    <% for (Category c : list) {
                                    %>
                                    <option value="<%= c.getCategoryId()%>"> <%= c.getCategoryTitle()%> </option>
                                    <%}%>
                                </select>

                            </div>

                  <!--product file-->

                  <div class="form-group">
                    <label for="pPic">Select Picture of product</label>
                    <br />
                    <input type="file" id="pPic" name="pPic" required />
                  </div>

                  <!--submit button-->
                  <div class="container text-center">
                    <button class="btn btn-outline-success">Add product</button>
                  </div>
                </form>
                <!--end form-->
              </div>
              <div class="modal-footer">
                <button
                  type="button"
                  class="btn btn-secondary"
                  data-dismiss="modal"
                >
                  Close
                </button>
              </div>
            </div>
          </div>
        </div>

        <!--End product modal-->

        <%@include file="components/common_modals.jsp" %>
      </body>
    </html>
  </String,Long></Category
>
