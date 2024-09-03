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

<script type="text/javascript">

function moveAction(where){
	switch (where) {
		case 1:
			if(confirm("글을 삭제하시겠습니까?")){
				document.delForm.action="/emp/${result.empno}";
				document.delForm.submit();
			}
			break;
	
		case 2:
			if(confirm("글을 수정하시겠습니까?")){
				document.modForm.action="/emp/${result.empno}";
				document.modForm.submit();
			}
			break;
			
		case 3:
			location.href = "/emp/";
			break;
	}
}

</script>

</head>
<body>

	<form:form name="delForm" method="DELETE">
	</form:form>

	<div class="wrapper">	
		<table width="100%" border="1" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
			<tr>
				<th>EMPNO</th>
				<th>ENAME</th>
				<th>JOB</th>
				<th>MGR</th>
				<th>HIREDATE</th>
				<th>SAL</th>
				<th>COMM</th>
				<th>DEPTNO</th>
			</tr>
			<form:form name="modForm" method="PUT">
			<tr>
				<td><c:out value="${result.empno}" /></td>
				<td><c:out value="${result.ename}" /></td>
				<td><input type="text" name="job" value="<c:out value="${result.job}" />"></td>
				<td><input type="text" name="mgr" value="<c:out value="${result.mgr}" />"></td>
				<td><c:out value="${fn:substring(result.hiredate, 0, 10)}" /></td>
				<td><input type="text" name="sal" value="<c:out value="${result.sal}" />"></td>
				<td><c:out value="${result.comm}" /></td>
				<td><c:out value="${result.deptno}" /></td>
			</tr>
			</form:form>
		</table>
		<br />
		<input type="button" value="삭제" class="writeBt" onclick="moveAction(1)" />
		<input type="button" value="수정" class="writeBt" onclick="moveAction(2)" />
		<input type="button" value="목록" class="writeBt" onclick="moveAction(3)" />
	</div>
</body>
</html>