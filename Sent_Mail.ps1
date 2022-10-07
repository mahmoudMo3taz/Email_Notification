$path="D:\$((Get-Date).ToString("dd-MM-yyyy"))_userlist.csv"
$users =Import-CSV -Path $path  

$userName = 'email@example.com'
$password = 'email password or app password'
[SecureString] $securepassword = $password | ConvertTo-SecureString -AsPlainText -Force 
$credential = New-Object System.Management.Automation.PSCredential -ArgumentList $username, $securepassword
$users
foreach ($user in $users ){ 
$mail = $user.EmailAddress
$userName =$user.Name
$userPasswordExpiry=$user.PasswordExpiry
$userName
Send-MailMessage -SmtpServer "smtp.gmail.com" -Port 587  -usessl -From 'email@example.com' -To $mail -Subject 'Your password will expire within week !!'-Credential $credential -Body "Dear $userName

Your password will expired in $userPasswordExpiry
The steps to change password:
Connect to VPN or local network in the office.
Press Alt+ Ctrl + Delete.
Choose change password.

Below is the summary on the password complexity :
Complexity enabled = True //the password must conatain at least 8 digits small and capital and special character 
Maximum password age = 90 // password will expired after 
Minimum password age = 0 // 
Minimum password length = 12 
Remembered password history = 3 // last AD save password for 3 times to avoid redundent password  

If you facing any issue connecting VPN please send a direct mail to:
email@example.com

Thanks,
IT-Team.
"
}
