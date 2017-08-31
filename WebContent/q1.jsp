<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getScheme() + "://" + request.getServerName()
          + ":" + request.getServerPort() + request.getContextPath()
          + "/";
  session.setAttribute("path", path);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script type="text/javascript" src="${path}js/jquery-1.7.2.min.js"></script>
</head>
<body >

<a href="javascript:close();">关闭</a>
<input type="button" onclick="javacript:close();" value="关"/>
<script type="text/javascript">


function close(){
// 	window.opener=null;    
	//window.opener=top;    
// 	window.open("","_self");  
    window.onunload();
	window.close();
}
function close2(){
	setTimeout("close()", 3000);
}
</script>
</body>
</html>