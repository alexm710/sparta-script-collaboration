$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Username = "emailHere"
$Password = "passwordHere"

$to = "someonesemail@gmail.com"
$cc = ""
$subject = "Spooky email send from Powershell"
$body = "Hello I am going to hack you."
$attachment = "C:\Users\Suzanne\github\sparta-script-collaboration\test.txt"

$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.body = $body
$message.to.add($to)
$message.cc.add($cc)
$message.from = $username
$message.attachments.add($attachment)

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)
write-host "Mail Sent"