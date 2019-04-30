<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">
    <div class="container">
        <div class="row">
            <div class="col s0 m1 l1"></div>
            <div class="col s12 m10 l8">
                <div class="section"></div>
                <h4>作业详情</h4>
                <h5>Homework Detail</h5>
                <div class="divider"></div>
                <br>
                <div class="card section">
                    <div class="card-content black-text">
                        <span class="card-title">作业名称：${homework.title}</span>
                        <div><p>作业内容：${homework.content}</p>
                            <p>截止日期：${homework.ddl_date}</p>
                            <p>满分：${homework.score}</p>
                            <div>
                                作业要求:<br/>
                                <a href="/course/homework/download?file_id=${attachment.file_id}">
                                    <img style="height: 300px;"  src="/course/homework/download?file_id=${attachment.file_id}"> </img>
                                </a>
                                <c:if test="${not empty homework.result}">
                                    <br/>
                                    作业答案:<br/>
                                    <a href="/course/homework/download?file_id=${homework.result}">
                                        <img style="height: 300px;"  src="/course/homework/download?file_id=${homework.result}"> </img>
                                    </a>
                                </c:if>
                            </div>
                            <br>
                        </div>
                        <div class="card-action">
                            <a href="/course/${homework.course_id}/homework/${homework.id}/upload_list/" class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                                <i class="material-icons right">
                                    format_list_numbered
                                </i>
                                提交列表
                            </a>
                            <c:if test="${ empty homework.result}">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="/course/${homework.course_id}/homework/${homework.id}/to-update/" class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                                <i class="material-icons right">
                                    edit
                                </i>
                                发布答案
                            </a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s0 m1 l1"></div>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>