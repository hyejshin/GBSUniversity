<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<section id="logo" class="logo">
    <a href="#"><img src="/webapp/resources/assets/images/Picture1.png" alt=""/></a>
</section>

<section class="container">
    <form method="post" action="" >
        <div>
            <input type="text" name="username" placeholder="Enter your username" required class="form-control" />
            <span class="glyphicon glyphicon-user"></span>
        </div>

        <div>
            <input type="password" name="password" placeholder="Enter password" required class="form-control" />
            <span class="glyphicon glyphicon-lock"></span>
        </div>

        <button type="submit" name="go" class="btn btn-block btn-primary">Login Now</button>

        <div class="form-group less-space">
            <input type="checkbox" name="remember" value="1" /> Remember me on this device
        </div>
    </form>

</section>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="/webapp/resources/assets/bootstrap/js/bootstrap.min.js"></script>
