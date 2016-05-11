jQuery(function($){
	var re_id = /^[a-z0-9_-]{6,16}$/; // 아이디 검사식
	var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
	var re_email = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
	/*var re_phone = /^[0-9]{8,11}$/; // 전화번호 검사식*/	
	var form = $('.frm');
	var userId = $('.userId');
	var userPwd = $('.userPwd');
	var userPwd1 = $('.userPwd1');
	var userName = $('.userName');
	var userGender = $("input:radio[name='userGender']:radio[value='남자']").attr("checked",true);
	var userAddr1 = $('.userAddr1');
	var userAddr2 = $('.userAddr2');
	var userPhone = $('.userPhone');
	var userEmail = $('.userEmail');
	
	$('.searchAddr').click(function(){
		window.open('addrPopup', '_blank', 'width=650, height=750, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	form.submit(function(){
		
		if(re_id.test(userId.val()) != true) {
			alert('아이디를 입력하지 않았거나,\n유효하지 않은 ID를 입력 하였습니다.');
			userId.focus();
			return false;
		} else if(re_pw.test(userPwd.val()) != true) {
			alert('패스워드를 입력하지 않았거나,\n유효하지 않은 패스워드를 입력 하였습니다.');
			userPwd.focus();
			return false;
		} else if(jQuery(userPwd1).val() != jQuery(userPwd).val()) {
			alert('패스워드가 같지 않습니다. 다시 확인해 주세요.');
			userPwd1.focus();
			return false;
		} else if(jQuery(userName).val() == null || jQuery(userName).val() == '') {
			alert('이름을 입력해 주세요.');
			userName.focus();
			return false;
		} else if(jQuery(userAddr1).val() == null || jQuery(userAddr1).val() == '') {
			alert('주소를 입력해 주세요.');
			userAddr1.focus();
			return false;
		} else if(jQuery(userAddr2).val() == null || jQuery(userAddr2).val() == '') {
			alert('나머지 주소를 입력해 주세요.');
			userAddr2.focus();
			return false;
		} else if(jQuery(userPhone).val() == null || jQuery(userPhone).val() == '') {
			alert('전화번호를 입력하지 않았거나,\n유효하지 않은 번호를 입력 하였습니다.');
			userPhone.focus();
			return false;
		} else if(re_email.test(userEmail.val()) != true) {
			alert('이메일을 입력하지 않았거나,\n유효한 않은 이메일주소를 입력 하였습니다.');
			userEmail.focus();
			return false;
		}
	});
});