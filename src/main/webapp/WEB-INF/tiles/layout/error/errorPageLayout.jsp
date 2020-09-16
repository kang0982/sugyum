<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/CommonTags.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="data:;base64,iVBORw0KGgo=">
	<title><tiles:insertAttribute name="title" /></title>    
	<tiles:insertAttribute name="assetHeader" />
</head>
<body id="page-top">
	<div id="layoutError">
            <div id="layoutError_content">
            	<tiles:insertAttribute name="content" />
            </div>
        </div>

	<tiles:insertAttribute name="assetFooter" />
</body>
</html>