<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="dynamic/css.jspf"%>
<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

  <%@include file="dynamic/menu.jspf"%>



  <main id="main">

    <!-- ======= Resume Section ======= -->
    <section id="resume" class="resume">
      <div class="container">

        <div class="section-title">
          <h2>Education</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-up">

            <h3 class="resume-title">Education</h3>

            <c:forEach items="${education}" var="title">
            <div class="resume-item">
              <h4>${title.fieldOfStudy}</h4>
              <h5>${title.startTime} - ${title.stopTime}</h5>
              <p><em>${title.place}</em></p>
              <p>${title.description}</p>
            </div>
            </c:forEach>
          </div>
          <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
          </div>
        </div>

      </div>

      <form method="post" action='<c:url value="/education"/> '>
        <div class="row">

          <div class="col-xl-12 col-md-12 mb-12">
            <div class="card shadow mb-4">
              <div class="card-header py-3">

                <div class="form-group row">
                  <label class="col-2 col-form-label">Field of study</label>
                  <div class="col-10">
                    <input class="form-control"  type="text" name="fieldOfStudy" placeholder="enter the field of study">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-2 col-form-label">Place</label>
                  <div class="col-10">
                    <input class="form-control"  type="text" name="place" placeholder="place">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-2 col-form-label">Start time</label>
                  <div class="col-10">
                    <input class="form-control"  type="text" name="startTime" placeholder="enter the start time">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-2 col-form-label">Stop time</label>
                  <div class="col-10">
                    <input class="form-control"  type="text" name="stopTime" placeholder="enter the stop time">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-2 col-form-label">Description</label>
                  <div class="col-10">
                    <input class="form-control"  type="text" name="description" placeholder="description">
                  </div>
                </div>


              </div>
            </div>
          </div>
        </div>
        <input class="btn btn-success pull-left" type="submit" value="Add education" id="searchButton"/>

        <div class="card-header py-3">


        </div>
      </form>

    </section><!-- End Resume Section -->



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

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <%@include file="dynamic/javaScript.jspf"%>

</body>

</html>