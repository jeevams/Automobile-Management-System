<%@page contentType="text/html" pageEncoding="UTF-8" session="false" autoFlush="true" %> 
<!DOCTYPE html>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Expires" content="-1"> 
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate"> 
<title>Logout</title> 
<script language="javascript"> 
window.history.forward(1); 
browser.cache.offline.enable = false; 
function noBack()
 { window.history.forward(1); 

} 
//***Get what is above onto one line*** 

self.close() 
function disableBackButton() 
{ 
window.history.forward(1); 
} 
setTimeout("disableBackButton()", 0); 
</script> 

</head> 
<body onload="noBack()" > 
<h1> 

<% 

request.getSession(false).invalidate(); 

//response.setHeader("Cache-Control","no-store"); //HTTP 1.1 
//response.setHeader("Cache-Control","no-cache"); 
//response.setHeader("Pragma","no-cache"); //HTTP 1.0 
//response.setDateHeader ("Expires", 0); //prevents caching at the proxy server 

response.sendRedirect("pageloader.html"); 


%> 
</h1> 
</body> 
</html> 