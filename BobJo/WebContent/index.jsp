<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


        
    <!-- 탭 아이콘 -->

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="views/common/bootstrap.jsp" %>
<%@ include file="views/common/menubar.jsp" %>

<button onclick="testing()">보드 테스트</button>
<%@ include file="views/common/footer.jsp" %>


  

</body>
<script>
	function testing()
	{
		location.href="<%= request.getContextPath() %>/board.list";
	}
	
</script>
</html>