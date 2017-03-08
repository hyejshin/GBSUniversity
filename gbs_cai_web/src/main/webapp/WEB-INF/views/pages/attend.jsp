<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<div class="container">
	<h4>Attendance</h4><br>
	<p>Enter the Class Code and Attend Code provided by Room Manager at the end of each Break-Out Sseeion to check your attendance.
각 Break-Out Session 종료 시 Room Manager가 제공하는 Class Code와 Attend Code를 입력하여 출석체크를 해주세요.</p>
	<br><br>

		<center>${message}</center><br>
		
		<form role="form" class="form-horizontal" method="post" action="/attend/check">
			<div style="margin-top: 5px; margin-left: 5px;margin-right: 5px;"class="form-group">
				<label class="col-sm-2 control-label" for="classcode">Class Code</label>
				<div class="input-group">
					<span class="input-group-addon">*</span> 
					<input type="text" class="form-control" id="classcode" name="classcode"
						placeholder="Enter the Class Code" required="required">
				</div>
				<label class="error label label-danger" for="classcode"></label>
			</div>
			<br>
			
			<div style="margin-top: 5px; margin-left: 5px;margin-right: 5px;" class="form-group">
				<label class="col-sm-2 control-label" for="attendcode">Attend Code</label>
				<div class="input-group">
					<span class="input-group-addon">*</span>
					<input type="text" class="form-control" id="attendcode" name="attendcode"
						placeholder="Enter the Attend Code" required="required">
				</div>
				<label class="error label label-danger" for="attendcode"></label>
			</div>

		<div style="float:right;">
			<button type="submit" class="btn btn-success">Submit</button>
			<button type="reset" class="btn btn-danger">Cancel</button>
			</div>
		</form>
<br><br><br><br>
</div>
