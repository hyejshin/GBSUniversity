<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container">
    <div class="works" id="portfolio">
        <div class=" port-top">
            <ul id="filters" style="float: left;">

                <li class="active"><span class="filter" ><a
                            href="index.html" style="text-decoration: none;">강좌목록</a></span></li>
                <li><span class="filter" ><a
                            href="history.jsp" style="text-decoration: none;">수강내역 </a></span></li>

            </ul>
            <br>
            <br>
            <br>
            <!-- Search box Start -->


            <form class="input-group col-md-6">
                <div class="input-group-btn">
                    <select class="selectpicker"
                            >
                        <optgroup label="am">
                            <option>9:00 - 10:00</option>
                            <option>9:00 - 10:00</option>
                            <option>9:00 - 10:00</option>
                            <option>9:00 - 10:00</option>
                        </optgroup>
                        <optgroup label="pm">
                            <option>13:00 - 14:00</option>
                            <option>13:00 - 14:00</option>
                            <option>13:00 - 14:00</option>
                            <option>13:00 - 14:00</option>
                        </optgroup>
                    </select>
                </div>

                <div class="input-group-btn">
                    <button ng-click="search()" type="submit" class="btn btn-info">
                        <span>SEARCH</span>
                    </button>
                </div>
            </form>
            <!-- end of search 시간으로 검색 -->

            <h3 class="port">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

            <ul id="filters" style="float: right">

                <li class="active"><span class="filter" >Room A</span></li>
                <li><span class="filter" > Room B </span></li>
                <li><span class="filter" > Room C</span></li>
                <li><span class="filter" > Room D</span></li>
                <li><span class="filter" > Room E</span></li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div id="portfoliolist">
            <div class="container">
                <div class="blog">
                    <div class="top-blog">
                        <div class="col-md-6 blog-top">
                            <a href="single.jsp"><img class="img-responsive" src="<c:url value="/images/b1.jpg" />" alt=" "></a>
                            <p>Praesent interdum blandit quam. Asunt in anim uis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore. Praesent interdum blandit quam. Asunt in anim uis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore.</p>
                            <a href="single.jsp" class="read">READ</a>
                        </div>
                        <div class="col-md-6 blog-top">
                            <a href="single.jsp"><img class="img-responsive" src="<c:url value="/images/b2.jpg" />" alt=""></a>
                            <p>Praesent interdum blandit quam. Asunt in anim uis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore. Praesent interdum blandit quam. Asunt in anim uis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore.</p>
                            <a href="single.jsp" class="read">READ</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="top-blog">
                        <div class="col-md-6 blog-top">
                            <a href="single.jsp"><img class="img-responsive"	 src="<c:url value="/images/b2.jpg" />" alt=" "></a>
                            <p>Praesent interdum blandit quam. Asunt in anim uis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore. Praesent interdum blandit quam. Asunt in anim uis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore.</p>
                            <a href="single.jsp" class="read">READ</a>
                        </div>
                        <div class="col-md-6 blog-top">
                            <a href="single.jsp"><img class="img-responsive"	 src="<c:url value="/images/b3.jpg" />" alt=" "></a>
                            <p>Praesent interdum blandit quam. Asunt in anim uis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore. Praesent interdum blandit quam. Asunt in anim uis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore.</p>
                            <a href="single.jsp" class="read">READ</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</div>
