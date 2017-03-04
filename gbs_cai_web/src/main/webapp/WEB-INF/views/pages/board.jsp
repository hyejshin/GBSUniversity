<!--
 * board jsp
 * Editor: Misu Choi
 * Modify : Joosang Kim
 * date: 2017-02-18  
 * Note : add board page dynamic action
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<tiles:importAttribute name="innerLayout" />
<tiles:importAttribute name="boardJSList" />
<tiles:importAttribute name="boardcss" />

<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/javascript"  href="<c:url value="${innerLayout}"/>" />
</c:forEach>
<c:forEach var="boardJSList" items="${boardJSList}">
    <script src="<c:url value="${boardJSList}"/>" ></script>
</c:forEach>	
<c:forEach var="boardcss" items="${boardcss}">
    <link type="text/javascript"  href="<c:url value="${boardcss}"/>" />
</c:forEach>

<c:url value="/echo"/>

<div class="container" style="list-style: none;">
    <div id="classListDiv">
        <h3>Lecture Data</h3>
        <br />
        <br />
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <td>NO</td>
                    <td>class_id</td>
                    <td>booth_name</td>
                    <td>start_time</td>
                    <td>end_time</td>

                </tr>
            </thead>
            <tbody>

                <c:forEach var="list" items="${enrollmentList}">
                    <tr>
                        <td>${list.idx}</td>
                        <td class='classId'>${list.class_id}</td>
                        <td>${list.booth_name}</td>
                        <td>${list.start}</td>
                        <td>${list.end}</td>
                    </tr>
                </c:forEach>

            </tbody>


        </table>
    </div>

    <div id="chatDiv">
        <div class="row">
            <div class="col-md-5">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-comment"></span> Q&A board Chat
                        <div class="btn-group pull-right">
                            <button id = "goBack" class="btn btn-default btn-xs glyphicon glyphicon-arrow-left" type="button" data-toggle="dropdown">
                                <span class=""></span>
                            </button>
                        </div>
                    </div>
                    <div class="panel-body">
                        <ul class="chat">
                            <li class="left clearfix"><span class="chat-img pull-left">
                                    <img class="img-circle" alt="User Avatar" src="http://placehold.it/50/55C1E7/fff&amp;text=U">
                                </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                            <span class="glyphicon glyphicon-time"></span>12 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                        dolor, quis ullamcorper ligula sodales.
                                    </p>
                                </div>
                            </li>
                            <li class="right clearfix"><span class="chat-img pull-right">
                                    <img class="img-circle" alt="User Avatar" src="http://placehold.it/50/FA6F57/fff&amp;text=ME">
                                </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small>
                                        <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                        dolor, quis ullamcorper ligula sodales.
                                    </p>
                                </div>
                            </li>
                            <li class="left clearfix"><span class="chat-img pull-left">
                                    <img class="img-circle" alt="User Avatar" src="http://placehold.it/50/55C1E7/fff&amp;text=U">
                                </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                            <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                        dolor, quis ullamcorper ligula sodales.
                                    </p>
                                </div>
                            </li>
                            <li class="right clearfix"><span class="chat-img pull-right">
                                    <img class="img-circle" alt="User Avatar" src="http://placehold.it/50/FA6F57/fff&amp;text=ME">
                                </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
                                        <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                        dolor, quis ullamcorper ligula sodales.
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="panel-footer" style="height:150px;">
                    <div class="input">
                        <textarea rows="3" class="form-control input-sm" id="btn-input" type="text" placeholder="Write!"></textarea>
                        <span class="input" style="float:right; padding-top:10px;">
                            <button class="btn btn-warning btn-sm" id="btn-chat">
                                Register</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
