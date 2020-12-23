<%-- 
    Document   : test
    Created on : Dec 15, 2020, 2:28:08 AM
    Author     : Napster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html>
<head></head>
<body>
<form action="UploadDownloadFileServlet" method="post" enctype="multipart/form-data">
Select File to Upload:<input type="file" name="fileName">
<br>
<input type="submit" value="Upload">
</form>
</body>
</html>
