function check()
{
	var msg = "please provide ";
	var name = loginform.name.value;
	var pass = loginform.password.value;
	if (name != "" && pass != "")
	{
		var hash = CryptoJS.MD5(pass);
		loginform.password.value=hash;
		return true;
	}
	else {
		
		if(pass=="")
		{
			msg += "a password";
		}
		if (name == "")
		{
			msg += " and a username";
			var hash = pass != "" ? CryptoJS.MD5(pass) : "";
			loginform.password.value=hash;
		}
		document.getElementById('err').innerHTML=msg;
		return false;
	}
}