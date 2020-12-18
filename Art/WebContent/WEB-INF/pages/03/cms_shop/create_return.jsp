<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<br>
	<div class=title>
		<h1 align="center" style="margin-top: 20px;">藝文商店 管理系統</h1>
	</div>
	<div class="back" align="right">
		<form action="<c:url value='/03/cms/shop/index.ctrl'/> " method="get">
			<div class="submitButton">
				<input type="submit" class='btn btn-outline-info' name="submit"
					value="返回 藝文商店管理首頁">
			</div>
		</form>
	</div>
	<br>
	<c:if test="${acShopsCreateMsg != null}">
		<div class=content>
			<div align="center">
				<h4>藝文商店資料建立成功</h4>
			</div>
		</div>
	</c:if>
	<br>
	<br>
</div>
