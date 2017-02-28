<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="Basic" />
<c:forEach var="Basic" items="${Basic}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${Basic}"/>" />
</c:forEach>	
<script type="text/javascript">

window.onload = function() {
	
	$.ajax({
		type : 'post',
		url : '/class/findFirstView',
		data : { booth : $('#booth').val(), time : $('#start_time').val() },
		success : function(result) {
			$("#tbList").empty();
			
			 for(var i=0;i<result.length;i++) {
				$("#tbList").append("<p ><a href='detail.do?idx="+result[i].idx+"'>"+ "<input type='hidden'/>"+result[i].idx+"</a>"+
						"<h2>"+result[i].title+"</h2>"+
				result[i].booth+"<br>"+"<h4>시간:" + result[i].start+"~"+
				result[i].end+"<br>"+"INFO:"+ result[i].detail+"</h4></p>");
				$("div #tbList").append("<a href='/class/viewDetail?idx="+result[i].idx+"' class='read'>"+ "Read</a>");
			}
		}
	});
}

function logout()
{
	$.ajax({
		type : 'post',
		url : '/logout',
		data : {},
		success : function(result) {
			alert("Logout!");
		}
	});
}



/* 
	추가목적 : 부스 선택시 (시간/부스)값을 가져와서 현재 페이지에 Reload없이 출력
	추가이력 : 2017/02/20 정연우
*/
function pick_booth(obj) 
{	   
	   $.ajax({
		type : 'post',
		url : '/class/findByBoothTime',
		data : { booth : obj.value, time : $('#start_time').val()  }, 
		success : function(result) {
			$("#tbList").empty();
			
			 for(var i=0;i<result.length;i++) {
				$("#tbList").append("<p ><a href='detail.do?idx="+result[i].idx+"'>"+ "<input type='hidden'/>"+result[i].idx+"</a>"+
						"<h2>"+result[i].title+"</h2>"+
				result[i].booth+"<br>"+"<h4>시간:" + result[i].start+"~"+
				result[i].end+"<br>"+"INFO:"+ result[i].detail+"</h4></p>");
				$("div #tbList").append("<a href='/class/viewDetail?idx="+result[i].idx+"' class='read'>"+ "Read</a>");
			} 
		} 
	});  
}

/* 
	추가목적 : 시간 선택시 (시간/부스)값을 가져와서 현재 페이지에 Reload없이 출력
	추가이력 : 2017/02/20 정연우
*/
	
function pick_time(obj)
{
	var value_radio = $("input[type=radio][name=booth]:checked").val()
		
 	$.ajax({
		type : 'post',
		url : '/class/findByBoothTime',
		data : { booth : value_radio, time : obj.value  }, 
		success : function(result) {
			$("#tbList").empty();
			
			 for(var i=0;i<result.length;i++) {
				$("#tbList").append("<p ><a href='detail.do?idx="+result[i].idx+"'>"+ "<input type='hidden'/>"+result[i].idx+"</a>"+
						"<h2>"+result[i].title+"</h2>"+
				result[i].booth+"<br>"+"<h4>시간:" + result[i].start+"~"+
				result[i].end+"<br>"+"INFO:"+ result[i].detail+"</h4></p>");
				$("div #tbList").append("<a href='/class/viewDetail?idx="+result[i].idx+"' class='read'>"+ "Read</a>");
			}
		}
	});  
}
</script>
<%
	HttpSession session = request.getSession();
%>

<div class="container">
    <div class="works" id="portfolio">
        <div class=" port-top">
            <ul id="filters" style="float: left;">

                <li class="active"><span class="filters" ><a
                            href="index.html" style="text-decoration: none; font-size:13px;">강좌목록</a></span></li>
                <li><span class="filters" ><a
                            href="history.jsp" style="text-decoration: none; font-size:13px;">수강내역 </a></span></li>

            </ul>
            <br><br>
            <!-- Search box Start -->


            <form class="input-group col-md-6">
                <div class="input-group-btn">
                    <select class="selectpicker" id="start_time" name="start_time"
                            onChange=pick_time(this);>
                        
                        <optgroup label="time">
                            <option value="13:40">13:40 - 15:10</option>
                            <option value="15:10">15:10 - 16:40</option>
                            <option value="16:40">16:40 - 18:10</option>
                            <option value="18:10">18:10 - 19:40</option>
                        </optgroup>
                    </select>
                </div>
                
            </form>
            <!-- end of search 시간으로 검색 -->

            <h3 class="port">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
			<div class="a">
            <!-- <ul id="filters" style="float: right" onchange=change(this);>
                <li id='Track1' class="active"><span class="filter">Track1</span></li>
                <li id='Track2'><span class="filter" > Track2 </span></li>
                <li id='Track3'><span class="filter" > Track3</span></li>
                <li id='Track4'><span class="filter" > Track4</span></li>
                
            </ul> -->
            <ui id="filters" style="float: right">
            	 <input type="radio" id="booth" name="booth" value="Track1" checked="true" onchange="pick_booth(this);">Track1</input> 
           		 <input type="radio" id="booth" name="booth" value="Track2" onchange="pick_booth(this);">Track2</input>
         	  	 <input type="radio" id="booth" name="booth" value="Track3" onchange="pick_booth(this);">Track3</input>
          	 	 <input type="radio" id="booth" name="booth" value="Track4" onchange="pick_booth(this);">Track4</input>
           	 </ui>
            </div>
            <div class="clearfix"></div>
        </div>
        <div id="portfoliolist">
        	<div id="container">
        	
            <div class="container">
                <div class="blog">
                    <div class="top-blog">
                        <div class="col-md-6 blog-top">
                            <a href="single.jsp"><img class="img-responsive" src="<c:url value="/images/b1.jpg" />" alt=" "></a>
                            <p id="tbList" style="text-align:left;">
        		
							</p>
                            
                        </div>
                    </div>
                	<div class="clearfix"></div>
                    <input type="button" value="Logout" id="logout" onclick="logout()">
                                                           
            	</div>
        	</div>
   	 </div>
</div>
