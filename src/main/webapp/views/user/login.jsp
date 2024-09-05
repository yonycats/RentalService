<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<main class="container"
   style="display: flex;flex-direction: column;align-content: stretch;align-items: center;justify-content: center;">
   <h2 class="stit">LOGIN</h2>
   <div class="btn-group" role="group" aria-label="Login Type">
      <button type="button" class="login-btn btn-primary" id="memberLoginBtn"
         style="border: none;">회원 로그인</button>
      <button type="button" class="login-btn btn-secondary" id="companyLoginBtn"
         style="border: none">기업 로그인</button>
   </div>
   <form name="form-signin" method="post"
      action="<%=request.getContextPath()%>/user/login.do" id="loginForm">
      <input type="hidden" name="url" value="%2F"> <input
         type="hidden" name="loginType" id="loginType" value="user">
      <div class="login_wrap" id="login_fld">
         <dl class="log_inner">
            <dd>
               <label for="login_id" class="sr-only">회원아이디</label> <input
                  type="text" name="userId" id="userId" class="form-control"
                  maxlength="20" placeholder="UserId" required autofocus>
            </dd>
            <dd>
               <label for="password" class="sr-only">비밀번호</label> <input
                  type="password" name="userPass" id="userPass" class="form-control"
                  maxlength="20" placeholder="Password" required>
            </dd>
            <dd class="log_op">
            </dd>
            <dd>
               <button type="button" class="btn btn-lg btn-primary btn-block" style="background-color: #3279B7;"
                  id="login-submit-button">로그인</button>
            </dd>
            <p class="center-text">
               <label for="findId"><a
                  href="<%=request.getContextPath()%>/user/findId.do">아이디 찾기</a>/</label> <label
                  for="findPw"><a
                  href="<%=request.getContextPath()%>/user/findPass.do">비밀번호 찾기</a>/</label>
               <label for="signUp"><a
                  href="<%=request.getContextPath()%>/user/signUp.do">회원가입</a></label> 
            </p>
         </dl>
      </div>
   </form>
	<script>
    document.getElementById('memberLoginBtn').addEventListener('click', function() {
        document.getElementById('loginForm').action = '<%=request.getContextPath()%>/user/login.do';
        document.getElementById('loginType').value = 'user';
        this.classList.add('btn-primary');
        this.classList.remove('btn-secondary');
        document.getElementById('companyLoginBtn').classList.add('btn-secondary');
        document.getElementById('companyLoginBtn').classList.remove('btn-primary');
    });

    document.getElementById('companyLoginBtn').addEventListener('click', function() {
        document.getElementById('loginForm').action = '<%=request.getContextPath()%>/company/login.do';
        document.getElementById('loginType').value = 'company';
        this.classList.add('btn-primary');
        this.classList.remove('btn-secondary');
        document.getElementById('memberLoginBtn').classList.add('btn-secondary');
        document.getElementById('memberLoginBtn').classList.remove('btn-primary');
    });
	</script>
</main>
