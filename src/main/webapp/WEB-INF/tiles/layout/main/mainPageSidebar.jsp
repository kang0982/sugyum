<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Administrator</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMember" aria-expanded="true" aria-controls="collapseMember">
          <i class="fas fa-fw fa-folder"></i>
          <span>회원 관리</span></a>
		<div id="collapseMember" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="/master/member/userMgmtList">사용자 관리</a>
            <a class="collapse-item" href="cards.html">CP 관리</a>
            <a class="collapse-item" href="cards.html">관리자 관리</a>
            <a class="collapse-item" href="cards.html">교사인증 관리</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
<!--       <div class="sidebar-heading">
        Interface
      </div> -->

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGoods" aria-expanded="true" aria-controls="collapseGoods">
          <i class="fas fa-fw fa-folder"></i>
          <span>상품관리</span>
        </a>
        <div id="collapseGoods" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
			<a class="collapse-item" href="#">통합검색		 </a>
			<a class="collapse-item" href="#">단일상품 관리		 </a>
			<a class="collapse-item" href="#">패키지상품 관리	 </a>
			<a class="collapse-item" href="#">콘텐츠 관리		 </a>
			<a class="collapse-item" href="#">유튜브Q 구조 관리	 </a>
			<a class="collapse-item" href="#">유튜브Q 컨텐츠 관리	 </a>
			<a class="collapse-item" href="#">유튜브Q 공유컨텐츠 관리</a>
			<a class="collapse-item" href="#">키워드 관리		 </a>
			<a class="collapse-item" href="#">TOP 교사 유튜버 관리	 </a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-folder"></i>
          <span>화면관리</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">테마관리</h6>
			<a class="collapse-item" href="utilities-color.html">사용안함		</a>
			<a class="collapse-item" href="utilities-color.html">9월 idea		</a>
			<a class="collapse-item" href="utilities-color.html">추천 인기 콘텐츠	</a>
			<a class="collapse-item" href="utilities-color.html">맨 아래 왼쪽	</a>
			<a class="collapse-item" href="utilities-color.html">맨 아래 오른쪽	</a>
			<a class="collapse-item" href="utilities-color.html">유튜브A		</a>
			<a class="collapse-item" href="utilities-color.html">유튜브B		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너1		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너2		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너3		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너4		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너5		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너6		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너7		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너8		</a>
			<a class="collapse-item" href="utilities-color.html">메인배너9		</a>
			
            <h6 class="collapse-header">서브테마관리</h6>
            <a class="collapse-item" href="utilities-color.html">자율연수</a>
            <a class="collapse-item" href="utilities-color.html">수업활동</a>
            <a class="collapse-item" href="utilities-color.html">쌤튜버</a>
			            
			<h6 class="collapse-header">홈 화면 관리</h6>
			<a class="collapse-item" href="utilities-color.html">홈 화면 관리   </a>
			<h6 class="collapse-header">배너 관리</h6>
			<a class="collapse-item" href="utilities-color.html">배너 관리	    </a>
			<h6 class="collapse-header">키워드추천관리</h6>
			<a class="collapse-item" href="utilities-color.html">키워드추천관리 </a>            >
          </div>
        </div>
      </li>


      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    