<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="script">
    <script>
        function validateHomework()
        {
            var file  = document.forms["homeworkform"]["file"].value;
            if( null ==file || "" == file ){
                Materialize.toast('请主传答案', 4000)
                return false;
            }
            else
            {
                return true;
            }

        }
    </script>
</tmpl:overwrite>
<tmpl:overwrite name="content">
    <div class="container">
        <div class="row">
            <div class="col s0 m1 l1"></div>
            <div class="col s12 m10 l8">
                <div class="section"></div>
                <h4>作业答案</h4>
                <h5>Modify Homework</h5>
                <div class="divider"></div>
                <div class="section"></div>
                <form id="homeworkForm" class="col s12" name="homeworkform"
                      action="/course/${course_id}/homework/${homework.id}/update"
                      method="post" enctype="multipart/form-data" onsubmit="return validateHomework()" >
                    <div class="row" style="display: none;">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">subtitles</i>
                            <input id="hw_title" name="title" type="text"  readonly value=${homework.title}
                                    class="validate" data-length="30">
                            <label for="hw_title">作业名称</label>
                        </div>
                    </div>
                    <div class="row" style="display: none;">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">date_range</i>
                            <input id="hw_ddl" name="ddl" type="text" readonly value=${homework.ddl_date}
                                    class="datepicker">
                            <label for="hw_ddl">截止日期</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">grade</i>
                            <input id="hw_score" name="score" type="number" readonly value=${homework.score}
                                    class="validate">
                            <label for="hw_score" data-error="请输入阿拉伯数字" data-success="输入格式正确">
                                作业分数
                            </label>
                        </div>
                    </div>
                    <div class="row" style="display: none;">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">content_copy</i>
                            <textarea id="hw_content" name="content" readonly class="materialize-textarea" data-length="140">
                                ${homework.content}
                            </textarea>
                            <label for="hw_content">作业内容</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="file-field input-field col s12">
                            <div class="btn">
                                <span>答案上传</span>
                                <input type="file" name="file">
                            </div>
                            <div class="file-path-wrapper">
                                <input class="file-path validate" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12" align="center">
                            <button class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow" type="submit">
                                <i class="material-icons right">send</i>
                                确定
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col s0 m1 l1"></div>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>