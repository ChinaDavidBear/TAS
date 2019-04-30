<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">
    <div class="container">
        <div class="row">
            <div class="col s0 m1 l1"></div>
            <div class="col s12 m12 l11">
                <div class="section"></div>
                <div class="row">
                    <div class="col s12">
                        <ul class="collection with-header">
                            <li class="collection-header">
                                <h4>提交列表</h4>
                                <h5>Submit List</h5>
                            </li>
                            <c:forEach var="uploadHomework" items="${uploadHomeworkList}">
                                <li class="collection-item">
                                    <div class="section">
                                        <div class="row">
                                            <div class="col s2">
                                                    ${uploadHomework.studentId},${uploadHomework.studentName}
                                            </div>
                                            <c:if test="${uploadHomework.uploadFileId != -1}">
                                                <div class="col s2" style="width: 30%">
                                                    作业提交：<br/>
                                                    <a href="/course/homework/download?file_id=${uploadHomework.uploadFileId}" class="secondary-content">
                                                        <img style="height: 200px;"  src="/course/homework/download?file_id=${uploadHomework.uploadFileId}"> </img>
                                                    </a>
                                                </div>
                                            </c:if>
                                            <c:if test="${uploadHomework.result != -1}">
                                                <div class="col s2" style="width: 30%">
                                                    作业修改：<br/>
                                                    <a href="/course/homework/download?file_id=${uploadHomework.result}" class="secondary-content">
                                                        <img style="height: 200px;"  src="/course/homework/download?file_id=${uploadHomework.result}"> </img>
                                                    </a>
                                                </div>
                                            </c:if>
                                            <c:if test="${uploadHomework.uploadFileId == -1}">
                                                <div class="secondary-content" style="width: 30%">
                                                    <span class="red-text text-read">还未提交</span>
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col s0 m1 l1"></div>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>