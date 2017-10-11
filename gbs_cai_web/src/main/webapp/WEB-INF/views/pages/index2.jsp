<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style type="text/css">
.container1 ul {
  margin: 0;
  margin-top: 35px;
  list-style: none;
  position: relative;
  padding: 1px 68px;
  color: #000;
  font-size: 13px;
}
.container1 ul:before {
  content: "";
  width: 1px;
  height: 100%;
  position: absolute;
  border-left: 2px dashed #000;
}
.container1 ul li {
    position: relative;
    margin-left: 30px;
    background-color: rgba(255, 255, 255, 0.2);
    padding: 9px;
    border-radius: 6px;
    width: 100%;
    box-shadow: 0 0 4px rgb(9, 74, 108), 0 2px 2px rgba(0, 0, 0, 0);
    border: 1px;

}
.container1 ul li:not(:first-child) {
  margin-top: 60px;
}
.container1 ul li > span {
  width: 2px;
  height: 100%;
  background: #000;
  left: -30px;
  top: 0;
  position: absolute;
}
.container1 ul li > span:before, .container1 ul li > span:after {
  content: "";
  width: 12px;
  height: 12px;
  border-radius: 50%;
  border: 2px solid #000;
  position: absolute;
  background: #86b7e7;
  left: -5px;
  top: 0;
}
.container1 ul li span:after {
  top: 100%;
}
.container1 ul li > div {
  margin-left: 10px;
}
.container1 div .title, .container1 div .type {
  font-weight: 600;
  font-size: 12px;
}
.container1 div .info {
  font-weight: 300;
}
.container1 div > div {
  margin-top: 5px;
}
.container1 span.number {
  height: 100%;
}
.container1 span.number span {
  position: absolute;
  font-size: 13px;
  left: -58px;
  font-weight: bold;
}
.container1 span.number span:first-child {
  top: 0;
}
.container1 span.number span:last-child {
  top: 100%;
}
</style>
<div class="container">
<br><br>
<h4 style="margin:2px;"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;
GBS University Agenda</h4>

</div>
    <div class="container1">
      <ul>
        <li><span></span>
          <div>
            <div class="title">Trave to Sokcho</div>
            <div class="info">Seoul → Sokcho</div>
          </div> <span class="number"><span>07:00</span><span>11:00</span></span>
        </li>
        <li><span></span>
          <div>
            <div class="title">Lunch & Registration</div>
            <div class="info">Restaurants in Lotte Resort</div>
            <div class="info">Registration Desk</div>
          </div> <span class="number"><span>11:00</span><span>13:00</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">Welcome & Kick Off</div>
            <div class="info">Welcome Speech (By KheeHong Song)</div>
            <div class="info">Message from Mark Foster(Video)</div>
            <div class="type">Presentation</div>
          </div> <span class="number"><span>13:00</span> <span>13:20</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">Greeting For GBS University </div>
            <div class="info">Greeting By Committee Chair(JinMin Choi)</div>
            <div class="type">Presentation</div>
          </div> <span class="number"><span>13:20</span> <span>13:25</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">Keynote Speech</div>
            <div class="info">Keynote Speech By "Neil Mccormack"</div>
            <div class="type">Presentation</div>
          </div> <span class="number"><span>13:25</span> <span>13:45</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">The IBM  Way</div>
            <div class="info">The IBM  Way and 5+1 offerings</div>
            <div class="type">By KheeHong Song</div>
          </div> <span class="number"><span>13:45</span> <span>14:30</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">GBS Korea Strategy</div>
            <div class="info">14:45 - 14:50&nbsp;Session Opening</div>
            <div class="info">14:50 - 18:00&nbsp;GBS Korea Strategy by Growth Platform and Sector</div>
            <div class="type">Review</div>
          </div> <span class="number"><span>14:45</span> <span>18:00</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">Check in</div>
            <div class="info">Check in Sokcho Hotel</div>
          </div> <span class="number"><span>18:00</span> <span>18:30</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">Cocktail Reception</div>
            <div class="info">In Grand Ballroom</div>
          </div> <span class="number"><span>18:30</span> <span>19:30</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">Dinner</div>
			<div class="info">In Grand Ballroom</div>
          </div> <span class="number"><span>19:30</span> <span>20:30</span></span>
        </li>
        <li>
          <div><span></span>
            <div class="title">Celebration & Recognition</div>
            <div class="info">In Grand Ballroom</div>
            <div class="type">Review</div>
          </div> <span class="number"><span>20:30</span> <span>22:00</span></span>
        </li>
      </ul>

    </div>

