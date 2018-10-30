<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("newLine", "\n"); %>
<!DOCTYPE html>
<html>

<%--head.jsp--%>
<%@ include file="../include/head.jsp" %>
<%--Handlebars.js 추가--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>

<body class="hold-transition skin-blue sidebar-mini layout-boxed">
<div class="wrapper">

    <%--main_header.jsp--%>
    <%-- Main Header --%>
    <%@ include file="../include/main_header.jsp" %>

    <%--left_column.jsp--%>
    <%-- Left side column. contains the logo and sidebar --%>
    <%@ include file="../include/left_column.jsp" %>
    
    <%-- Content Wrapper. Contains page content --%>
    <div class="content-wrapper">
        <%-- Content Header (Page header) --%>
        <section class="content-header">
            <h1>
                조회페이지
                <small>스프링연습예제</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> board</a></li>
                <li class="active">read</li>
            </ol>
        </section>

        <%-- Main content --%>
        <section class="content container-fluid">
            <div class="col-lg-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">글제목 : ${article.title}</h3>
                    </div>
                    <div class="box-body" style="height: 700px">
                        ${article.context}
                    </div>
                    <div class="box-footer">
                        <div class="user-block">
                            <img class="img-circle img-bordered-sm" src="/dist/img/user1-128x128.jpg" alt="user image">
                            <span class="username">
                    <a href="#">${article.user_id}</a>
                </span>
                            <span class="description"><fmt:formatDate pattern="yyyy-MM-dd a HH:mm" value="${article.write_date}"/></span>
                        </div>
                    </div>
                    <div class="box-footer">
                        <form role="form" method="post">
                            <input type="hidden" name="articleNo" value="${article.id}">
                        </form>
                        <button type="submit" class="btn btn-primary listBtn"><i class="fa fa-list"></i> 목록</button>
                        <div class="pull-right">
                            <button type="submit" class="btn btn-warning modBtn"><i class="fa fa-edit"></i> 수정</button>
                            <button type="submit" class="btn btn-danger delBtn"><i class="fa fa-trash"></i> 삭제</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%-- /.content --%>
    </div>
    <%-- /.content-wrapper --%>

    <%--main_footer.jsp--%>
    <%-- Main Footer --%>
    <%@ include file="../include/main_footer.jsp" %>

</div>
<%-- ./wrapper --%>

<%--plugin_js.jsp--%>
<%@ include file="../include/plugin_js.jsp" %>
<script>
    $(document).ready(function () {

        var formObj = $("form[role='form']");
        console.log(formObj);

        $(".modBtn").on("click", function () {
            formObj.attr("action", "/article/modify");
            formObj.attr("method", "get");
            formObj.submit();
        });

        $(".delBtn").on("click", function () {
            formObj.attr("action", "/article/remove");
            formObj.submit();
        });

        $(".listBtn").on("click", function () {
            self.location = "/article/list"
        });

    });
</script>

</body>
</html>