<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jspf" %>

<body>

<!-- ======= Mobile nav toggle button ======= -->
<i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

<%@include file="dynamic/menu.jspf" %>

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Edit "about me"</h2>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
        <div class="container">
            <div class="row">
                <form method="post" action='<c:url value="/editAbout" />'>
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Age</label>
                                        <div class="col-10">
                                            <input class="form-control" name="age" type="number"
                                                   placeholder="age">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Phone</label>
                                        <div class="col-10">
                                            <input class="form-control" name="Phone" type="text"
                                                   placeholder="phone">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Email</label>
                                        <div class="col-10">
                                            <input class="form-control" name="email" type="text"
                                                   placeholder="email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">City</label>
                                        <div class="col-10">
                                            <input class="form-control" name="city" type="text"
                                                   placeholder="city">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Description</label>
                                        <div class="col-10">
                                            <input class="form-control" name="description" type="text"
                                                   placeholder="description">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <a href='<c:url value="/about"/>' class="text-center">
                                <button type="submit">Save</button>
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </section>

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer">
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong><span>iPortfolio</span></strong>
        </div>
        <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/ -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div>
</footer><!-- End  Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<%@include file="dynamic/javaScript.jspf" %>

</body>

</html>