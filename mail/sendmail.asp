<%
'Edit these setting for your SMTP server/account

'smtp.gmail.com
smtpServer = "smtp.gmail.com" 
'465
smtpPort = 465
'myemail@gmail.com
smtpAccount = "ryanjonessmtp@gmail.com"
smtpPasswd = "gmail8675309"
'redirect back to contact form or home page
redirectPage = "../contact.php?msgsent=thankyou#contactForm"
'if an error occurs
errorPage = "../contact.php?msgsent=error#contactForm"


'sendmail
'check for empty fields
if (Request.ServerVariables("REQUEST_METHOD")= "POST" AND request.form("sendToEmail")>"" AND instr(request.form("email"),"@")>0 AND request.form("name")>"" AND request.form("phone")>"" AND request.form("message")>"") then
	Set objMail=CreateObject("CDO.Message")
		objMail.Subject="Contact Form - "&request.form("name") &""
		objMail.From="noreply@"&Request.ServerVariables("SERVER_NAME")&""
		objMail.ReplyTo="noreply@"&Request.ServerVariables("SERVER_NAME")&""
		objMail.To=""&request.form("sendToEmail") &""
		objMail.TextBody="From - "&request.form("name") &"" &vbCrLf &vbCrLf &_
			"Referer: "&Request.ServerVariables ("HTTP_REFERER")&"" &vbCrLf &vbCrLf &_
			"Name: "&request.form("name") &"" &vbCrLf &vbCrLf &_
			"Email: "&request.form("email") &"" &vbCrLf &vbCrLf &_
			"Phone: "&request.form("phone") &"" &vbCrLf &vbCrLf &_
			"Message: "&request.form("message") &"" &vbCrLf &vbCrLf &_
			"Sent from IP Address: "&Request.ServerVariables("remote_addr")&"" &vbCrLf &vbCrLf &_
			"Server Time: "&now()
		objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
		objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = smtpServer
		objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
		objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = 1
		objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = smtpPort
		objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = smtpAccount
		objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = smtpPasswd
		objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
		objMail.Configuration.Fields.Update
		objMail.Send
	set objMail=nothing
else
	response.redirect(errorPage)
end if
response.redirect(redirectPage)
%>