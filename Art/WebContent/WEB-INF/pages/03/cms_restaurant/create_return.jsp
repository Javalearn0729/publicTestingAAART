<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<br>
	<div class=title>
		<h1 align="center" style="margin-top: 20px; ">得藝食堂 管理系統</h1>
	</div>
	<div class="back" align="right">
		<form
			action="<c:url value='/03/cms/restaurant/restaurantManagement'/> "
			method="get">
			<div class="submitButton">
				<input type="submit" class='btn btn-outline-info' name="submit"
					value="返回 營業時間管理首頁">
			</div>
		</form>
	</div>
	<br>
	<c:if test="${restaurantCreateMsg != null}">
	<div class=content>
		<div align="center"><h4>${restaurantCreateMsg}</h4></div>
	</div>
	</c:if>
	<br><br>
</div>
<!-- ====================================================== -->
