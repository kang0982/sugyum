<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/CommonTags.jsp"%>
<div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Login</h1>
                  </div>
                  <form id="loginFrm" class="user" method="post" action="/login">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="username" name="username"  placeholder="Enter Id..." required>
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Login</label>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-user btn-block">
                      Login
                    </button>
                   </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>    
<c:if test="${error eq 'true'}">
<!-- <div id="login_alert" class="alert alert-danger" role="alert">
   <strong>로그인 실패</strong> 아이디 혹은 비번이 다릅니다.
</div>
<script>
$(document).ready(function(){
	$('#login_alert').slideUp( 2000 ).delay( 800000 ).fadeOut(1000000);
});
</script> -->
<div class="row justify-content-center">
	<div class="col-10">
		<div class="alert-danger" data-example-id="dismissible-alert-js">
		  <div class="alert alert-danger alert-dismissible " role="alert">
		    <button id="btnAlertClose" type="button" class="close" data-dismiss="alert" aria-label="Close">
		    	<span aria-hidden="true">×</span>
		    </button>
		    <h4 id="oh-snap!-you-got-an-error!">로그인 실패
		    	<a class="anchorjs-link" href="#oh-snap!-you-got-an-error!"><span class="anchorjs-icon"></span></a>
		    </h4>
		    <p>아이디 혹은 비번이 다릅니다.</p>
		  </div>
		</div>
	</div>
</div>

</c:if>  

<script>
$('#loginFrm').submit(function(){
	var loginSaved = $('#customCheck').is(':checked');
	if(loginSaved){
		localStorage.setItem('username', $('#username').val());
		localStorage.setItem('loginSaved', 'Y'); 
	}else{
		localStorage.removeItem('username');
	}
});// end submit()

$(document).ready(function(){
	var loginSaved = localStorage.getItem('loginSaved');
	if(loginSaved == 'Y'){
		var username = localStorage.getItem('username');
		$('#username').val(username);
		$('#customCheck').attr('checked',true);
	}else{
		$('#customCheck').attr('checked',false);
	} 
});
</script>

    