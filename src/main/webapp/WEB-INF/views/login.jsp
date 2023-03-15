<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/cssIndex.jspf" %>
<body style="background-color: #666666;">

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form class="login100-form validate-form" method="post" action="<c:url value="/login"/> ">
					<span class="login100-form-title p-b-43">
						Login to continue
					</span>


                <div class="wrap-input100 validate-input" data-validate="Valid email is required: ">
                    <input class="input100" type="text" name="username">
                    <span class="focus-input100"></span>
                    <span class="label-input100">Email</span>
                </div>


                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <input class="input100" type="password" name="password">
                    <span class="focus-input100"></span>
                    <span class="label-input100">Password</span>
                </div>

                <div class="flex-sb-m w-full p-t-3 p-b-32">
                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                        <label class="label-checkbox100" for="ckb1">
                            Remember me
                        </label>
                    </div>

                    <div>
                        <a href="#" class="txt1">
                            Forgot Password?
                        </a>
                    </div>
                </div>


                <div class="container-login100-form-btn">
                    <input type="submit" class="login100-form-btn" value="Login">
                </div>

                <div class="text-center p-t-46 p-b-20">
						<span class="txt2">
							or sign up using
						</span>
                </div>

                <div class="login100-form-social flex-c-m">
                    <a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
                        <i class="fa fa-facebook-f" aria-hidden="true"></i>
                    </a>

                    <a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                    </a>
                </div>
            </form>

            <div class="login100-more" style="background-image: url ("/resources/auth/images/bg-01.jpg"">
        </div>
    </div>
</div>
</div>


<!--===============================================================================================-->
<script src='<c:url value="/resources/auth/vendor/jquery/jquery-3.2.1.min.js"/>'></script>
<!--===============================================================================================-->
<script src='<c:url value="/resources/auth/vendor/animsition/js/animsition.min.js"/>'></script>
<!--===============================================================================================-->
<script src='<c:url value="/resources/auth/vendor/bootstrap/js/popper.js"/>'></script>
<script src='<c:url value="/resources/auth/vendor/bootstrap/js/bootstrap.min.js"/>'></script>
<!--===============================================================================================-->
<script src='<c:url value="/resources/auth/vendor/select2/select2.min.js"/>'></script>
<!--===============================================================================================-->
<script src='<c:url value="/resources/auth/vendor/daterangepicker/moment.min.js"/>'></script>
<script src='<c:url value="/resources/auth/vendor/daterangepicker/daterangepicker.js"/>'></script>
<!--===============================================================================================-->
<script src='<c:url value="/resources/auth/vendor/countdowntime/countdowntime.js"/>'></script>
<!--===============================================================================================-->
<script src='<c:url value="/resources/auth/js/main.js"/>'></script>

</body>
</html>