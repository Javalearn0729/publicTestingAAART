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
	<div class=title>
		<h3 align="center" style="margin-top: 20px; font-weight: bold;">上架藝文商店</h3>
	</div>

	<div class=content>
		<form method="post"
			action="<c:url value = "/03/cms/shop/createShop.ctrl"/>">
			<div class="back" align="right">
				<div class="submitButton">
					<input type="submit" class='btn btn-info' name="submit"
						style="font-size: larger" value="建立藝文商店資料">
				</div>
			</div>
			<br>
			<div style="font-size: 25px;">
				<table>
					<thead>
						<tr class="head">
							<th scope="col" width="200px"></th>
							<th scope="col" width="700px"></th>
						</tr>
					</thead>
					<tfoot></tfoot>
					<tbody>
						<tr style="color: black;">
							<td>商店名稱*</td>
							<td><input type="text" placeholder="請輸入商店名稱 "
								name="shopName" class="form-control"></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr style="padding-bottom: 10px;">
							<td>代表圖示*</td>
							<td><input type="text" placeholder="請輸入圖片網址" name="image"
								class="form-control"></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr style="padding-bottom: 10px;">
							<td>商店簡介*</td>
							<td><textarea placeholder="請輸入簡介內容" name="intro" rows="5"
									class="form-control"></textarea></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr style="padding-bottom: 10px;">
							<td>商店地址*</td>
							<td><input type="text" placeholder="請輸入地址" name="address"
								class="form-control"></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr style="padding-bottom: 10px;">
							<td>營業時間*</td>
							<td><textarea placeholder="請輸入營業時間" name="openTime" rows="3"
									class="form-control"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<!-- ====================================================== -->
						<tr style="padding-bottom: 10px;">
							<td>連絡電話*</td>
							<td><input type="text" placeholder="請輸入連絡電話" name="phone"
								class="form-control"></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr style="padding-bottom: 10px;">
							<td>電子郵件</td>
							<td><input type="text" placeholder="請輸入電子郵件" name="email"
								class="form-control"></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr style="padding-bottom: 10px;">
							<td>傳真號碼</td>
							<td><input type="text" placeholder="請輸入傳真號碼" name="fax"
								class="form-control"></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr style="padding-bottom: 10px;">
							<td>Facebook網址</td>
							<td><input type="text" placeholder="請輸入facebook 網址"
								class="form-control" name="facebook"></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr style="padding-bottom: 10px;">
							<td>商店網站網址</td>
							<td><input type="text" placeholder="請輸入網址" name="website"
								class="form-control"></td>
						</tr>

						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<!-- ====================================================== -->
						<tr style="padding-bottom: 10px;">
							<td>熱門度</td>
							<td><input type="text" name="clicks" value="0"
								class="form-control"></td>
						</tr>
						<!-- 不使用 ====================================================== -->
						<tr style="display: none">
							<td>會員帳號</td>
							<td><input type="hidden" name="memberId" value="1"></td>
						</tr>
						<tr style="display: none;">
							<td>縣市名*</td>
							<td><input type="text" placeholder="請輸入縣市名" name="cityName"
								value="台北市" class="form-control"></td>
						</tr>
						<tr style="display: none;">
							<td>reservation不使用</td>
							<td><input type="text" value="0" name="reservation"
								class="form-control"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<div class="back" align="center">
				<div class="submitButton">
					<input type="submit" class='btn btn-info' name="submit"
						style="font-size: larger" value="建立藝文商店資料">
				</div>
			</div>
			<br>
		</form>
	</div>
</div>
<!-- ====================================================== -->
<script>
	$(document).ready(function() {
		$('#03').DataTable({});
	});
</script>