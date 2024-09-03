<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.0.min.js"></script>

<script type="text/javascript">

function add(){
	if($("#ename").val() == '')
	{
		alert("ename 을 입력해주세요.");
		$("#ename").focus();
		return;
	}
	if($("#job").val() == '')
	{
		alert("job 을 입력해주세요.");
		$("#job").focus();
		return;
	}
	if($("#mgr").val() == '')
	{
		alert("mgr 을 입력해주세요.");
		$("#mgr").focus();
		return;
	}
	if($("#sal").val() == '')
	{
		alert("sal 을 입력해주세요.");
		$("#sal").focus();
		return;
	}
	if($("#comm").val() == '')
	{
		alert("comm 을 입력해주세요.");
		$("#comm").focus();
		return;
	}
	if($("#deptno").val() == '')
	{
		alert("deptno 을 입력해주세요.");
		$("#deptno").focus();
		return;
	}
	document.addForm.submit();
}

</script>

</head>
<body>
	<div class="wrapper">	
		<table width="100%" border="1" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
			<tr>
				<th>ENAME</th>
				<th>JOB</th>
				<th>MGR</th>
				<th>SAL</th>
				<th>COMM</th>
				<th>DEPTNO</th>
			</tr>
			<form:form name="addForm" method="POST" action="/emp/">
			<tr>
				<td><input type="text" id="ename" name="ename" value=""></td>
				<td><input type="text" id="job" name="job" value=""></td>
				<td><input type="text" id="mgr" name="mgr" value=""></td>
				<td><input type="text" id="sal" name="sal" value=""></td>
				<td><input type="text" id="comm" name="comm" value=""></td>
				<td><input type="text" id="deptno" name="deptno" value=""></td>
			</tr>
			</form:form>
		</table>
		<table>
		<tr>
			<td colspan="8"><a href="#none" onclick="add(); return false;">[등록]</a></td>
		</tr>
	</table>
	</div>
</body>
</html>