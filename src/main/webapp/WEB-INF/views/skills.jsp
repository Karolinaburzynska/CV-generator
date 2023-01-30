<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jspf" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<body>

<!-- ======= Mobile nav toggle button ======= -->
<i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

<%@include file="dynamic/menu.jspf" %>


<main id="main">


    <!-- ======= Skills Section ======= -->
    <section id="skills" class="skills section-bg">
        <div class="container">

            <div class="section-title">
                <h2>Skills</h2>
            </div>

            <div class="row skills-content">
                <c:forEach items="${skill}" var="title">
                    <div class="col-lg-9" data-aos="fade-up">


                        <div class="progress">
                            <span class="skill">${title.nameSkill} <i class="val">${title.percent} % </i></span>
                            <div class="progress-bar-wrap">
                                <div class="progress-bar" role="progressbar"
                                     aria-valuenow=${title.percent} aria-valuemin="0"
                                     aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>

                    <security:authorize access="hasAnyRole('ADMIN')">
                        <div class="col-lg-2" data-aos="fade-up">

                            <div class="progress">
                                <div class="col-lg-2" data-aos="fade-up">
                                    <form method="post" action='<c:url value="/skills/${title.id}" />'>
                                        <input class="btn btn-danger pull-left" type="submit" value="Delete skill"
                                               id="searchButton">
                                    </form>
                                </div>
                            </div>

                        </div>
                    </security:authorize>
                </c:forEach>


            </div>

        </div>
    </section><!-- End Skills Section -->
    <security:authorize access="hasAnyRole('ADMIN')">
        <form method="post" action='<c:url value="/skills"/> '>
            <div class="row">

                <div class="col-xl-12 col-md-12 mb-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">

                            <div class="form-group row">
                                <label class="col-2 col-form-label">Skill</label>
                                <div class="col-10">
                                    <input class="form-control" type="text" name="nameSkill"
                                           placeholder="enter the skill">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-2 col-form-label">%</label>
                                <div class="col-10">
                                    <input class="form-control" type="number" name="percent" placeholder="0-100">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <input class="btn btn-success pull-left" type="submit" value="Add skill" id="searchButton"/>

            <div class="card-header py-3">


            </div>

        </form>
    </security:authorize>

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