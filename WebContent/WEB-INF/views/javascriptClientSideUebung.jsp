<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h4 onclick="counterFunc()">click mich!</h4>
		<span>anzahl clicks:</span>
		<span id=counterSpan></span>
	</div>
	<h1 id="alertHeader" onclick="alertHeader()" style="border:dotted;width:50%">click me to trigger an alert</h1>
	<button onclick="toggleExtraHeader()">toggle extra header</button>
	<h2 id="extraheader" style="visibility:visible">extra header</h2>	
	
	
	<script type="text/javascript">
		
	var counterFunc = (function(){
		var count = 0;
		return function(){
			document.getElementById("counterSpan").textContent=++count;
		}
		
	})();
	
	var alertHeader = function(){
		alert("header clicked");
	}
	
	var toggleExtraHeader = function(){
			var header = document.getElementById('extraheader');
			if(header.style.visibility==="visible")
				header.style.visibility="hidden";
			else
				header.style.visibility="visible"
		}
		
	</script>
	
</body>
</html>