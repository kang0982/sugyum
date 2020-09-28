<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/CommonTags.jsp"%>
<div class="container-fluid">
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">사용자 등록</h1>
	<p class="mb-4"></p>

	
	<div class="card shadow mb-4 mt-3">
		<div class="card-body">
			<div class="card-subtitle">
				<table class="table">
				    <tbody>
				        <tr>
				            <td><span class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">이름</span></td>
				            <td><input type="text" class="form-control form-control-sm" /></td>
				        </tr>
				        <tr>
				            <td><span class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">비밀번호</span></td>
				            <td><input type="password" class="form-control form-control-sm" placeholder="영문, 숫자, 특수문자 조합 8글자 이상 입력하세요" maxlength="20" /></td>
				        </tr>
				        <tr>
				            <td><span class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">비밀번호</span></td>
				            <td><input type="password" class="form-control form-control-sm" placeholder="비밀번호를 다시 입력하세요" maxlength="20"/></td>
				        </tr>
				        <tr>
				            <td><span class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">회원권한</span></td>
				            <td><input type="radio" class="form-control form-control-sm" placeholder="비밀번호를 다시 입력하세요" maxlength="20"/></td>
				        </tr>
				    </tbody>
				</table>
			</div>
		</div>	
		<div class="card-footer">
			<div class="float-right">
			    <a href="<c:url value="/master/member/userMgmtList"/>" class="btn btn-secondary btn-icon-split btn-sm ">
			        <span class="text">취소</span>
			    </a>
			    <a href="/master/member/userMgmtRegist" class="btn btn-success btn-icon-split btn-sm ">
			        <span class="text">등록</span>
			    </a>
		    </div>
		</div>			
	</div>
</div>	
