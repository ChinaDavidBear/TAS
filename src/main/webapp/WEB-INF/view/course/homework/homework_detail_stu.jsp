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
                            <c:if test="${uploadHomework.get_score == -1}">
                                <p>当前分数：未打分</p>
                            </c:if>
                            <c:if test="${uploadHomework.get_score != -1}">
                                <p>当前分数：${uploadHomework.get_score}</p>
                            </c:if>
                            作业要求:<br/>
                            <a href="/course/homework/download?file_id=${homework.attachments}">
                                <img style="height: 300px;"  src="/course/homework/download?file_id=${homework.attachments}"> </img>
                            </a>
                            <c:if test="${not empty homework.result}">
                            <br/>
                            作业答案:<br/>
                            <a href="/course/homework/download?file_id=${homework.result}">
                                <img style="height: 300px;"  src="/course/homework/download?file_id=${homework.result}"> </img>
                            </a>
                            </c:if>
                            </div>
                            <br/>
                        </div>
                        <div class="card-action">
                            <c:if test="${not empty uploadHomework.upload_homework_file}">
                                作业提交:<br/>
                                <a href="/course/homework/download?file_id=${uploadHomework.upload_homework_file}">
                                    <img style="height: 300px;" src="/course/homework/download?file_id=${uploadHomework.upload_homework_file}"> </img>
                                </a>
                            </c:if>
                            <c:if test="${uploadHomework.result != 0}">
                                <br/>
                                作业修改:<br/>
                                <a href="/course/homework/download?file_id=${uploadHomework.result}">
                                    <img style="height: 300px;"  src="/course/homework/download?file_id=${uploadHomework.result}"> </img>
                                </a>
                            </c:if>
                            <c:if test="${empty uploadHomework.upload_homework_file}">
                                <div class="row">
                                    <form id="uploadForm" class="col s12" action="/course/${homework.course_id}/homework/${homework.id}/upload"
                                          method="post" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col s0">
                                                <div class="file-field input-field">
                                                    <div class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                                                        <span>选择文件...</span>
                                                        <input type="file" name="file">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col s6">
                                                <button class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow"
                                                        name="submit" type="submit" >
                                                    提交作业
                                                    <i class="material-icons right">file_upload</i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </c:if>
                            <c:if test="${ uploadHomework.result == 0}">
                                <div class="row">
                                    <form id="uploadForm" class="col s12" action="/course/${homework.course_id}/homework/${homework.id}/uploadresult"
                                          method="post" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col s0">
                                                <div class="file-field input-field">
                                                    <div class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                                                        <span>选择文件...</span>
                                                        <input type="file" name="file">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col s6">
                                                <input type="hidden" name="id" value="${uploadHomework.id}">
                                                <button class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow"
                                                        name="submit" type="submit" >
                                                    修改作业
                                                    <i class="material-icons right">file_upload</i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </c:if>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s0 m1 l1"></div>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/student_course_tmpl.jsp"/>