<div class="boardDiv">
<h3>Question Board</h3>
    <div class="info">
        <table class="table table-striped" bgcolor="D8D8D8">
            <thead>
                <tr>
                    <th style="text-align: center;">NO</th>
                    <th style="text-align: center;">TITLE</th>
                    <th style="text-align: center;">WRITER</th>
                    <th style="text-align: center;">DATE</th>
                    <th style="text-align: center;">HIT</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td align="center">3</td>
                    <td><a href="Board_View.jsp">?? ???? 3</a></td>
                    <td align="center">???</td>
                    <td align="center">2015/11/23</td>
                    <td align="center">1234</td>
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