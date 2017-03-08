<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
<!--
 table {
  border-collapse: separate;
  border-spacing: 0 2.5px;
}
tr td:first-child,
tr th:first-child {
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
}

tr td:last-child,
tr th:last-child {
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
}
thead {
  border:1px solid;
}

tbody{
 border:1px solid;
  background-color: #EEEEEE;
}

-->
</style>
<div class="container">

<h4>CAI University Agenda</h4><br>
   <table class="table table-condensed" style="table-layout: fixed; word-break:break-all">
<thead>
  <tr bgcolor="#04B486">
    <th style="width:15%; text-align:center;">Start</th>
    <th style="width:15%; text-align:center;">End</th>
    <th colspan="2" style="text-align:center;">Session</th>
  </tr>
  </thead>
  <tbody>
  <tr style="text-align:center; background:#99ccff;">
    <td style="vertical-align:middle;">8:30</td>
    <td style="vertical-align:middle; border-right: 1px solid #E7EFEF;">9:00</td>
    <td colspan="2"><b>Registeration & Tea Time</b><br>7F, On-demand
    </td>
  </tr>
  <tr style="text-align:center;" bgcolor="#CCFFCC">
    <td style="vertical-align:middle;">9:00</td>
    <td style="vertical-align:middle; border-right: 1px solid #E7EFEF;">9:30</td>
    <td colspan="2"><b>Opening</b><br>7F, On-demand
    </td>
  </tr>
  <tr style="text-align:center;">
    <td rowspan="2" style="vertical-align:middle;">9:30</td>
    <td rowspan="2" style="vertical-align:middle; border-right: 1px solid #E7EFEF;">9:45</td>
    <td colspan="2">Move to Breakout rooms</td>
  </tr>
  <tr style="text-align:center;">
    <td>7F, On-demand</td>
    <td>6F, Demo Zone</td>
  </tr>
  <tr style="text-align:center;">
    <td style="vertical-align:middle;">9:45</td>
    <td style="vertical-align:middle; border-right: 1px solid #E7EFEF;">10:45</td>
    <td style="border-right: 1px solid #B9BEBD; border-right: 1px solid #B9BEBD; background:#33cccc;"><b>Cloud<br>Application<br>Service</b></td>
    <td style="vertical-align:middle; background:#ffcc99;"><b>Watson Case</b></td>
  </tr>
  <tr style="text-align:center;">
    <td style="vertical-align:middle;">10:45</td>
    <td style="vertical-align:middle;">11:00</td>
    <td colspan="2">Break</td>
  </tr>
  <tr style="text-align:center;">
    <td style="vertical-align:middle;">11:00</td>
    <td style="vertical-align:middle; border-right: 1px solid #E7EFEF;">12:00</td>
    <td style="vertical-align:middle; border-right: 1px solid #B9BEBD; background:#ffcc99;"><b>Watson Case</b></td>
    <td style="background:#33cccc;"><b>Cloud<br>Application<br>Service</b></td>
  </tr>
  <tr style="text-align:center;">
    <td style="vertical-align:middle;">12:00</td>
    <td style="vertical-align:middle;">13:15</td>
    <td colspan="2">Lunch</td>
  </tr>
  </tbody>
</table>

<div class="tg-wrap">
<table class="table table-condensed" style="table-layout: fixed; word-break:break-all; ">
  <tr bgcolor="#FFF888">
	  <td style="width:15%; text-align:center; vertical-align:middle; border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;">13:15</td>
	  <td style="width:15%; text-align:center; vertical-align:middle; border-right: 1px solid #E7EFEF;">17:30</td>
    <td colspan="2" height="100" style="text-align:center; vertical-align:middle;" >
    	<a href="/detail_session"><b>Break-Out Session</b><br>(Click here for detail)</a></td>
  </tr>
  <tr>
  	<td style="vertical-align:middle; vertical-align:middle;">17:30</td>
    <td style="vertical-align:middle; vertical-align:middle;">18:00</td>
    <td colspan="2" style="text-align:center;">Move to Plenary Session</td>
  </tr>
</table>
</div>

<div class="tg-wrap">
<table class="table table-condensed" style="table-layout: fixed; word-break:break-all">
  <tr bgcolor="#BCE99D">
  	<td style="width:15%; text-align:center; vertical-align:middle;">18:00</td>
    <td style="width:15%; text-align:center; vertical-align:middle; border-right: 1px solid #E7EFEF;">21:30</td>
    <td colspan="2" height="100" style="text-align:center; vertical-align:middle;" >
    	<a href="/detail_plenary"><b>Plenary Session & Dinner<br>
    	(CAI Practitioners only)</b><br>Grand Ballroom(3F), Conrad Hotel<br>(Click here for detail)</a></td>
  </tr>
</table></div>



<!-- 점심 메뉴 언어 선택 모달 -->
<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">Where can I have a delicious lunch?</h4>
            </div>
            <div class="modal-body">
                <p style="text-align:justify;">There are several places in the Yeouido IFC Mall where you can have lunch.
Choose language below button! You can see a map that shows the places where you can have lunch.
 </p><br/>
 <h4 style="text-align:center;"><b>Choose Language. Enjoy lunch:)</b></h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-info">
                    <a href="https://www.ifcmallseoul.com/eng/jsp/store/floorInfo.do?lang=e&floor=L3" style="text-decoration:none;">
                        English</a></button>
                <button type="button" class="btn btn-warning">
                <a href="https://www.ifcmallseoul.com/jsp/store/floorInfo.do?lang=k&floor=L3" style="text-decoration:none;">
                        Korean</a></button>
       
        </div>
    </div>
  </div>
</div>
    
</div>
