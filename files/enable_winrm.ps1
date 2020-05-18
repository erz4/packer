<powershell>
# Change Password
# $admin = [adsi]("WinNT://./administrator, user")
# $admin.PSBase.Invoke("SetPassword", "{{ ansible_password }}")
# Configure machine for ansible remoting
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
powershell.exe -ExecutionPolicy ByPass -File $file -EnableCredSSP
</powershell>