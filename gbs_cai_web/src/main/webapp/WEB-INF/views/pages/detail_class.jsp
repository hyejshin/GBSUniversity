<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="showDetailAttributes" />
<tiles:importAttribute name="showDetailJsAttributes" />
<c:forEach var="showDetailAttributes" items="${showDetailAttributes}">
    <link type="text/css" rel="stylesheet" href='<c:url value="${showDetailAttributes}"/>' media="all"/>
</c:forEach>
<c:forEach var="showDetailJsAttributes" items="${showDetailJsAttributes}">
    <script src='<c:url value="${showDetailJsAttributes}"/>'></script>
</c:forEach>

<div class="container">		 

    <%HttpSession sess = request.getSession();%>

    <input type="hidden" id="user_id" value=<%= sess.getAttribute("user_id")%> />
    <!-- <input type="hidden" id="start" value=${list.start} />-->
    <input type="hidden" id="class_id" value=${vo.class_id} />
    <div id="detail">
        <div class="work">
            <div class="details">		 
                <div class="col-md-7 posts">
                    <h3 style="font-weight:600; font-style: italic;">${vo.title}</h3>
                    <p><h5>Speaker: ${vo.speaker}</h5></p>
                    <p><h7>Date : Saturday, 11 March 2017</h7></p>
                    <p><h7>Time : ${vo.session}<span>Room: ${vo.room}</span></h7></p><br>
                </div>	
                <div class="col-md-3 date" style="padding:0px;">
                    <p style="padding: 8px 0px;">WHAT</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="details">			 
                <div class="col-md-7 posts">
                    <h4>ABOUT THIS SESSION</h4>
                    <p>${vo.detail}</p>
                </div>	
                <div class="col-md-3 date" style="padding:0px;">
                    <p style="padding: 8px 0px;">WHO</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="details">
                <div class="col-md-7 posts">
                    <h4>ABOUT THE SPEACKER</h4>
                    <div class="img-responsive" style="float:left;"><img src="" alt="img"/>${vo.speaker_img}</div>
                    <p>${vo.speaker}</p></div>	
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<div id="boardDiv">
    <h3>Question Board</h3>
    <div class="info">
        <table class="table table-striped" bgcolor="D8D8D8">
            <thead>
                <tr>
                    <th style="text-align: center;">NO</th>
                    <th style="text-align: center;">TITLE</th>
                    <th style="text-align: center;">WRITER</th>
                    <th style="text-align: center;">DATE</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td align="center">3</td>
                    <td><a href="Board_View.jsp">?? ???? 3</a></td>
                    <td align="center">???</td>
                    <td align="center">2015/11/23</td>
                </tr>
                <tr>
                    <td align="center">2</td>
                    <td><a href="Board_View.jsp">?? ???? 2</a></td>
                    <td align="center">???</td>
                    <td align="center">2015/11/23</td>
                    <td align="center">123</td>
                </tr>
                <tr>
                    <td align="center">1</td>
                    <td><a href="Board_View.jsp">?? ???? 1</a></td>
                    <td align="center">???</td>
                    <td align="center">2015/11/23</td>
                    <td align="center">12</td>
                </tr>
            </tbody>
            <!-- ??? ?? ???? ??? ?? ?? ?? -->
            <tfoot>
                <tr>
                    <td align="center" colspan="5">1</td>
                </tr>
            </tfoot>
        </table>
        <input type="button" class="btn btn-primary" value="list" /> <input
            type="button" class="btn btn-warining" value="write" />

        <div class="clearfix"></div>

        <!-- ?? ?? ? ?? ??? ?? ?? ??? ????: Ajax ???? ? ???? ????  -->
        <!-- ?? ?? ?? -->
        <div id="detail" type="hidden">
            <form name="BoardViewForm" method="post">
                <table class="table-striped table" summary="?? ??? ??">
                    <tr>
                        <td><div align="center">
                                <h3>
                                    <b>Questions</b>
                                </h3>
                            </div></td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table" summary="?? ??? ??">
                                <tr>
                                    <td align=center bgcolor=#dddddd>WRITER</td>
                                    <td bgcolor=#ffffe8>???</td>
                                    <td align=center bgcolor=#dddddd>DATE</td>
                                    <td bgcolor=#ffffe8>2017/03/11</td>
                                </tr>
                                <tr>
                                    <td align=center bgcolor=#dddddd>TITLE</td>
                                    <td bgcolor=#ffffe8 colspan=3>??? ????</td>
                                </tr>
                                <tr>
                                    <td><br>???????<br></td>
                                </tr>
                            </table>
                            <div class="container">		 


                                <input type="hidden" id="user_id" value=<%= sess.getAttribute("user_id")%> />
                                <input type="hidden" id="start" value=${list.start} />
                                <input type="hidden" id="class_id" value=${list.class_id} />



                                <h3>Question Board</h3>
                                <div class="info">


                                    <table class="table table-striped" bgcolor="D8D8D8">


                                        <div class="clearfix"></div>
                                        </td>
                                        </tr>
                                        <section class="box">
                                            <tr>
                                                <td bgcolor=#dcdcdc height=25 align=center>REPLY</td>
                                            </tr>
                                            <br>
                                            <form name="BoardReplyForm" class="form-control" method="post">
                                                <tr>
                                                    <td>
                                                        <table class="table" align=center>
                                                            <tr>
                                                                <td align="center">WRITER</td>
                                                                <td><input type=text name=name size=30></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">TITLE</td>
                                                                <td><input type=text size=30 name=title value="RE : ??? ????."></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">CONTENT</td>
                                                                <td>
                                                                    <textarea name=content cols="30" rows="8"> ???????
                                                                    </textarea>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan=2><hr size=1></td>
                                                            </tr>
                                                            <tr>
                                                                <td align=center colspan=2>
                                                                    <hr size=1>
                                                                    <div align="center">
                                                                        <input type="submit" value="register" class="btn btn-info"
                                                                               style="float: right:"> &nbsp; <input type="button"
                                                                               style="float: left:" class="btn btn-danger" value="cancel">
                                                                        </td>
                                                                    </div>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                        </section>
                                        </form>
                                    </table>
                                    </form>
                                </div>
                                <div class="clearfix"></div>
                                <!-- div id ? writenew ? ??? ?? ???? ???: list ??-> write ?? ?? -> ? ?? ajax ? ????? -->

                                </form> 
                                </section>
                </table>

        </div>
    </div>
</div>
<input type="button" id="showQnA" class="btnbtn-info" value="Show Q&A" />
<input type="button" id="showList" class="btnbtn-info" value="Show List" />