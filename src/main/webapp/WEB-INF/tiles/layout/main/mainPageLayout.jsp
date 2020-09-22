<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/CommonTags.jsp"%>
<%-- <!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 	<title><tiles:insertAttribute name="title" /></title>    
	<tiles:insertAttribute name="assetHeader" />
  </head>
  <body>
    <tiles:insertAttribute name="body" />
    <tiles:insertAttribute name="assetFooter" />
  </body>
</html> --%>
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
  <!-- Page Wrapper -->
  <div id="wrapper">
  
	<!-- Sidebar -->
	<tiles:insertAttribute name="sidebar" />
	<!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
 		<tiles:insertAttribute name="tobbar" />
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <tiles:insertAttribute name="content" />
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->
  </div>
  <!-- End of Page Wrapper -->

	<tiles:insertAttribute name="footer" />
	<tiles:insertAttribute name="assetFooter" />
</body>
</html>