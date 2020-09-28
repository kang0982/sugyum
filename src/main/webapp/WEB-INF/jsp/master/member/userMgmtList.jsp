<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/CommonTags.jsp"%>
<div class="container-fluid">
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">사용자 관리</h1>
	<p class="mb-4"></p>
	<div class="card shadow mb-4">
	    <!-- Card Header - Accordion -->
	    <a href="#searchBox" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="searchBox">
	        <h6 class="m-0 font-weight-bold text-primary">검색 조건</h6>
	    </a>
	    <!-- Card Content - Collapse -->
	    <div class="collapse show" id="searchBox" style="">
			<form method="get" action="/search" class="">
				<div class="card-body pl-1">
					<div class="row no-gutters align-items-center">
						<div class="mr-2 col-12">
							<div class="col-9">
								<div class="col-3 float-left">
									<label for="datetype" class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">조회기간</label>
									<select id="datetype" name="datetype" class="col-8 custom-select custom-select-sm form-control form-control-sm">
										<option value="SBSCRB_DE">회원가입일</option>
										<option value="LAST_LOGIN_DATE">최종로그인</option>
									</select>
								</div>
								<div class="cols-3 float-left">
									<a href="#" class="btn btn-info btn-icon-split btn-sm"><span class="text">전체</span></a>
									<a href="#" class="btn btn-info btn-icon-split btn-sm"><span class="text">1개월</span></a>
									<a href="#" class="btn btn-info btn-icon-split btn-sm"><span class="text">3개월</span></a>
									<a href="#" class="btn btn-info btn-icon-split btn-sm"><span class="text">6개월</span></a>
								</div>
								<div class="col-3 float-left"><input type="date" id="startDate" class="float-left form-control form-control-sm " placeholder=""></div>
								<div class="col-3 float-left"><input type="date" id="endDate" class="float-left form-control form-control-sm" placeholder="" ></div>
							</div>
						</div>
						<div class="py-2 col-12">
							<div class="col-9">
								<div class="col-4 float-left">
									<label for="authState" class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">회원구분</label>
									<select id="authState" name="authState" class="col-9 custom-select custom-select-sm form-control form-control-sm">
										<option value="">전체</option>
										<option value="ELE">초등</option>
										<option value="GNR">일반</option>
										<option value="MID">중등</option>
										<option value="TCH">교사</option>
									</select>							
								</div>
								<div class="col-4 float-left">
									<label for="sbscrbSttus" class="pr-3 text-gray-800 font-weight-bold text-primary text-uppercase mb-1">계정상태</label>
									<select id="sbscrbSttus" name="sbscrbSttus" class="col-9 custom-select custom-select-sm form-control form-control-sm">
										<option value="">전체</option>
										<option value="D">탈퇴</option><option value="M">휴면</option><option value="P">정상</option><option value="S">정지</option>
									</select>							
								</div>
								<div class="col-4 float-left">
								</div>
							</div>
						</div>
						<div class="py-1 col-12">
							<div class="col-9">
								<div class="col-3 float-left">
									<label for="searchType" class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1 pr-3">검색어 </label>
									<select id="searchType" name="searchType" class="col-9 custom-select custom-select-sm form-control form-control-sm">
										<option value="T" selected="selected">전체</option>
										<option value="ID">아이디</option>
										<option value="NAME">이름</option>
										<option value="N_NAME">닉네임</option>
										<option value="ESTL_ID">회원번호</option>
									</select>		
								</div>
								<div class="col-9 float-left input-group">
									<input id="searchValue" name="searchValue" type="text" value="" placeholder="검색어" maxlength="255" class="form-control  form-control-sm bg-light border-0"/>
									<div class="input-group-append">
										<button class="btn-sm btn-primary " type="button">
											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>
							</div>
						</div>				
					</div>
				</div>
			</form>
	    </div>
	</div>


	<div class="card shadow mb-4 mt-3">
		<div class="card-body">
			<div class="row py-2">
				<div class="col-sm-2" >
					<select name="dataTable_length" class="custom-select custom-select-sm form-control form-control-sm">
						<option value="10">10</option>
						<option value="25">25</option>
						<option value="50">50</option>
						<option value="100">100</option>
					</select>
				</div>
				<div class="col-sm-10">
					<a href="<c:url value="/master/member/userMgmtRegist" />" class="btn btn-success btn-icon-split btn-sm float-right">
                    <span class="text">등록</span>
                  </a>
				</div>
			</div>
		
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th><input id="allChk" type="checkbox" /></th>
							<th>번호</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>이름</th>
							<th>회원구분</th>
							<th>회원가입일</th>
							<th>최종로그인</th>
							<th>계정상태</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="input-group">
									<span class="input-group-addon">
										<input type="checkbox" aria-label="...">
									</span>
								</div>
							</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>
								<button name="btnChange" class="btn btn-secondary btn-icon-split btn-sm" data-toggle="modal" data-target="#modal">
									<span class="text">변경</span>
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row">
			    <div class="col-sm-12 col-md-5">
			        <div class="dataTables_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
			    </div>
			    <div class="col-sm-12 col-md-7">
			        <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
			            <ul class="pagination">
			                <li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
			                <li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
			                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
			                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
			                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
			                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
			                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
			                <li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
			            </ul>
			        </div>
			    </div>
			</div>
		</div>
		
	</div>
</div>
<!-- /.container-fluid -->
<script>
$('button[name="btnChange"]').click(function(){
	$('#modalTitle').html('제목 바꿨지롱');
	$('#modalBody').html('우하하하하하 ');
	$('#btnModal').one('click',function(){
		alert('zzz');})
});
</script>
