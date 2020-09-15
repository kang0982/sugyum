<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/CommonTags.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=1024, initial-scale=0.3">     
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>   
    <title><tiles:insertAttribute name="title" /></title>    
	<tiles:insertAttribute name="asset" />
</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
</body>
</html>