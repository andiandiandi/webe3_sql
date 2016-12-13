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
		<label style="color:red;">COUNTER HOCHZÄHLEN</label>
		<h4 onclick="counterFunc()">click mich!</h4>
		<span>anzahl clicks:</span>
		<span id=counterSpan></span>
	</div>
	<hr>
	<div>
		<label style="color:red;">ALERT AUSLÖSEN</label>
		<h1 id="alertHeader" onclick="alertHeader()" style="border:dotted;width:50%">click me to trigger an alert</h1>
	</div>
	<hr>
	<div>
		<label style="color:red;">EXTRA HEADER AUSLÖSEN</label>
		<button onclick="toggleExtraHeader()">toggle extra header</button>
		<h2 id="extraheader" style="visibility:visible">extra header</h2>	
	</div>
	<hr>
	<div style="margin-top:20px;">
		<label style="color:red;">PROPERTIES EINES OBJEKTES ANZEIGEN</label>
		<h2 style="border:dotted;width:30%" onclick=objectProperties.showProperties()>click to show object properties</h2>
		<div id=objectProperties></div>
	</div>
	<hr>
	
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
	};
	
	var objectProperties = {
			properties:{
				attribut1:"attribute1",
				attribut2:"attribute2",
				attribut3:"attribute3",
				attribut4:"attribute4"
			},
			
			showProperties: function(){
				
				var div_ = document.getElementById("objectProperties");
				div_.innerHTML = "";
				
				for(var i in this.properties){
					var element = document.createElement("p");
					element.innerHTML = this.properties[i];
					div_.appendChild(element);
				}
			}
	};
	
	</script>
	
</body>
</html>