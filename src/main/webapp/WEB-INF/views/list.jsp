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

</head>
<body>

	<table width="100%" border="1" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
		<caption style="visibility:hidden">EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO</caption>
		<colgroup>
			<col width="10%"/>
			<col width="15%"/>
			<col width=""/>
			<col width="10%"/>
			<col width="15%"/>
			<col width="10%"/>
			<col width="10%"/>
			<col width="10%"/>
		</colgroup>
		<tr>
			<th align="center">EMPNO</th>
			<th align="center">ENAME</th>
			<th align="center">JOB</th>
			<th align="center">MGR</th>
			<th align="center">HIREDATE</th>
			<th align="center">SAL</th>
			<th align="center">COMM</th>
			<th align="center">DEPTNO</th>
		</tr>
		<c:forEach var="result" items="${resultList}" varStatus="status">
		<tr>
			<td align="center"><a href="/emp/<c:out value="${result.empno}" />"><c:out value="${result.empno}" /></a></td>
			<td align="center"><c:out value="${result.ename}" />
			<td align="center"><c:out value="${result.job}"/></td>
			<td align="center"><c:out value="${result.mgr}"/></td>
			<td align="center"><c:out value="${fn:substring(result.hiredate, 0, 10)}"/></td>
			<td align="center"><c:out value="${result.sal}"/></td>
			<td align="center"><c:out value="${result.comm}"/></td>
			<td align="center"><c:out value="${result.deptno}"/></td>
		</tr>
		</c:forEach>
	</table>
	<table>
		<tr>
			<td colspan="8"><a href="/emp/add"><input type="button" value="추가"></a></td>
		</tr>
	</table>
	
</body>
</html>