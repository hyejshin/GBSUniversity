<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="container">


   <table class="table table-condensed table-striped" style="table-layout: fixed; word-break:break-all">
<thead>
  <tr >
    <th style="width:15%; text-align:center;">Start</th>
    <th style="width:15%; text-align:center;" >End</th>
    <th colspan="2" style="text-align:center;">Session</th>
  </tr>
  </thead>
  <tbody>
  <tr style="text-align:center;">
    <td>8:30</td>
    <td>9:00</td>
    <td colspan="2">Registeration & Teatime
    </td>
  </tr>
  <tr style="text-align:center;">
    <td>9:00</td>
    <td >9:30</td>
    <td colspan="2">Opening <br>SU / KheeHong
    </td>
  </tr>
  <tr style="text-align:center;">
    <td>9:30</td>
    <td >9:45</td>
    <td colspan="2">Move to Breakout rooms</td>
  </tr>
  <tr style="text-align:center;">
    <td>9:45</td>
    <td >10:45</td>
    <td >Cloud Application Service</td>
    <td>Watson Case</td>
  </tr>
  <tr style="text-align:center;">
    <td>10:45</td>
    <td >11:00</td>
    <td colspan="2">Break</td>
  </tr>
  <tr style="text-align:center;">
    <td>11:00</td>
    <td>12:00</td>
    <td >Watson Case</td>
    <td >Cloud Application Service</td>
  </tr>
  <tr style="text-align:center;">
    <td >12:00</td>
    <td>13:15</td>
    <td colspan="2"><a href="#" class="btn btn-sm btn-default" data-toggle="modal" 
   data-target="#basicModal" >Enjoy Lunch > click Here :)Lunch</a></td>
  </tr>
  </tbody>
</table>
<br><br>
<div class="tg-wrap">
<table class="table table-bordered table-condensed" style="table-layout: fixed; word-break:break-all">
  <tr>
    <th colspan="8" style="text-align:center;">Break-Out Session</th>
    
  </tr>
  <tr>
    <td  colspan="2" style="text-align:center;" >Room</td>
    <td>7F, On-demand</td>
    <td>6F, Demo Zone</td>
    <td>6F, Conference room</td>
    <td>7F, 7M05</td>
    <td>6F, IBM Studio 6M06</td>
    <td>6F, 6M02</td>
  </tr>
  <tr>
    <td>13:15</td>
    <td >14:30</td>
    <td colspan="6" rowspan="3" style="text-align:center; vertical-align:middle;" >
    <a href="/detail_session">Break-Out Session Click here <br>(-&gt; detail)</a></td>
  </tr>
  <tr>
    <td>14:45</td>
    <td>16:00</td>
  </tr>
  
  <tr>
    <td>16:15</td>
    <td>17:30</td>
  </tr>
  <tr>
    
  </tr>
  <tr>
    <td>17:30</td>
    <td>18:00</td>
    <td colspan="6" style="text-align:center;" >Move to Plenary Session</td>
  </tr>
  
</table>
</div>
<br><br>
<div class="tg-wrap">
<table class="table table-bordered table-condensed" style="table-layout: fixed; word-break:break-all">
  <tr>
    <th colspan="6" style="text-align:center;" >Plenary Seesion @ Conrad Hotel</th>
  </tr>
  <tr>
    <td style="width:15%; text-align:center;">Start</td>
    <td style="width:15%; text-align:center;">End</td>
    <td colspan="4" >Topic</td>
  </tr>
  <tr>
    <td>18:00</td>
    <td>18:10</td>
    <td colspan="4">Opening</td>

  </tr>
  <tr>
    <td>18:10</td>
    <td>18:30</td>
    <td colspan="4">Keynote Speach -CAI University</td>

  </tr>
  <tr>
    <td>18:30</td>
    <td>20:00</td>
    <td colspan="4">Dinner &amp; Networking</td>

  </tr>
  <tr>
    <td>20:00</td>
    <td>21:15</td>
    <td colspan="4">Have Fun &amp; Lucky Draw</td>

  </tr>
  <tr>
    <td>21:15</td>
    <td>21:30</td>
    <td colspan="4">Closing</td>

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
