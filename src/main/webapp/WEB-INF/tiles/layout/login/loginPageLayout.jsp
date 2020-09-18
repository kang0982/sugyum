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
	<script src="${ASSET_ROOT}/vendor/jquery/jquery.min.js"></script>
</head>
<body class="page-top">
	<div class="container">
	 	<!-- Outer Row -->
		<tiles:insertAttribute name="content" />
	</div>

  <!-- Bootstrap core JavaScript-->
  <script src="${ASSET_ROOT}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${ASSET_ROOT}/vendor/jquery-easing/jquery.easing.min.js"></script>
  <!-- Custom scripts for all pages-->
  <script src="${ASSET_ROOT}/js/sb-admin-2.min.js"></script>
</body>
</html>