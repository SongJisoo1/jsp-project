/**
 isValid LoginForm
 */
 

function check() {
	if(document.login.id.value === "") {
		alert("아이디를 입력하세요");
		document.login.id.focus();
		return false;
	} else if(document.login.age.value === "") {
		alert("나이를 입력하세요");
		document.login.age.focus();
		return false;
	} else if(isNaN(document.login.age.value)) {
		alert("숫자를 입력헤주세요");
		document.login.age.focus();
		return false;
	}
	
	return true;
}
