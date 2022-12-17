function Target-Comes {
Add-Type -AssemblyName System.Windows.Forms
$originalPOS = [System.Windows.Forms.Cursor]::Position.X
$o=New-Object -ComObject WScript.Shell

    while (1) {
        $pauseTime = 3
        if ([Windows.Forms.Cursor]::Position.X -ne $originalPOS){
            break
        }
        else {
            $o.SendKeys("{CAPSLOCK}");Start-Sleep -Seconds $pauseTime
        }
    }
start-process "C:\Program Files\Google\Chrome\Application\chrome.exe" https://www.youtube.com/watch?v=BBJa32lCaaY
}
Target-Comes

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

Remove-Item (Get-PSreadlineOption).HistorySavePath
