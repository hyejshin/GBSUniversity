<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container">
	각 세션을 클릭시 상세 및 Q&A를 확인 할 수 있습니다.<br>
	Click on the each session, detail and Q&A are available.

    <table class="table table-bordered" style="table-layout: fixed; word-break:break-all">
        <thead>
            <tr bgcolor="FFF888">
                <th rowspan="2">Time</th>
                <th >13:15</th>
                <th>14:45</th>
                <th>16:15</th>
            </tr>
        </thead>
        <tr bgcolor="FFF888">
            <td>Room ↓</td>
            <td>14:30</td>
            <td>16:00</td>
            <td>17:30</td>
        </tr>
        <tr>
            <td bgcolor="FFF888">7F,<br>On-<br>demand<br></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C001">Bluemix</a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C007">Block<br>Chain</a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C013">Accelerated<br>App. Dev<br></b></a></td>
        </tr>
        <tr>
            <td bgcolor="FFF888">6F,<br>Demo<br>Zone</td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C002">WATSON<br>IOT<br></a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C008">Bluemix<br></a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C014">Block<br>Chain<br></a></td>
        </tr>
        <tr>
            <td bgcolor="FFF888">6F,<br>Conference room</td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C003">Cloud<br>Application<br></a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C009">CIO<br>Advisory<br></a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C015">Cognitive<br>Solution<br></a></td>
        </tr>
        <tr>
            <td bgcolor="FFF888">7F,<br>7M05</td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C004">Lotte<br>Watson</a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C010">LEAN/<br>Kanban</a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C016">Industry 4.0</a></td>
        </tr>
        <tr>
            <td bgcolor="FFF888">6F, IBM<br>Studio<br>6M06</td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C005">Mine the<br>Base, CIF</a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C011">CAI<br>Offering</a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C017">Continuous Improvement</a></td>
        </tr>
        <tr>
            <td bgcolor="FFF888">6F,<br>6M02</td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C006">Mobile<br> @Scale</a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C012">Mobile<br> @Scale</a></td>
            <td style="vertical-align:middle;"><a href="/class/detail?class_id=C018">Digital<br>Foundation</a></td>
        </tr>
    </table>
</div>