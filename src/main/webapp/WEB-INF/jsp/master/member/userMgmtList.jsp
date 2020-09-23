<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container-fluid">
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">사용자 관리</h1>
	<p class="mb-4"></p>

	<div class="card border-left-primary shadow h-100 py-2">
		<div class="card-body">
			<div class="row no-gutters align-items-center">
				<div class="mr-2 col-12">
					<div class="col-12 text-xs font-weight-bold text-primary text-uppercase mb-1 ">검색조건</div>
					<div class="col-9">
						<div class="col-3 float-left">
							<label for="datetype" class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">조회기간</label>
							<select id="datetype" name="datetype" class="col-9 custom-select custom-select-sm form-control form-control-sm">
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
						<div class="col-3 float-left">
							<label for="authState" class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">회원구분</label>
							<select id="authState" name="authState" class="col-9 custom-select custom-select-sm form-control form-control-sm">
								<option value="">전체</option>
								<option value="ELE">초등</option>
								<option value="GNR">일반</option>
								<option value="MID">중등</option>
								<option value="TCH">교사</option>
							</select>							
						</div>
						<div class="col-3 float-left">
							<label for="sbscrbSttus" class="text-gray-800 font-weight-bold text-primary text-uppercase mb-1">계정상태</label>
							<select id="sbscrbSttus" name="sbscrbSttus" class="col-9 custom-select custom-select-sm form-control form-control-sm">
							<option value="">전체</option>
							<option value="D">탈퇴</option><option value="M">휴면</option><option value="P">정상</option><option value="S">정지</option>
						</select>							
						</div>
					</div>
				</div>
				<div class="py-2 col-12">
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
							<input id="searchValue" name="searchValue" type="text" value="" maxlength="255" class="form-control  form-control-sm "/>
							<div class="input-group-append">
								<button class="btn-sm btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</div>
				</div>				
			</div>
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
								<a href="#" class="btn btn-secondary btn-icon-split btn-sm">
									<span class="icon text-white-50"><i class="fas fa-arrow-right"></i></span>
									<span class="text">변경</span>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<!-- /.container-fluid -->

