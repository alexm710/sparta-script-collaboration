$Alarm = "08:00"

if((Get-Date -Format "HH:mm") -eq $Alarm) {
    msg * "Wake Up!!"
}
else {
    msg * "Not time to wake up yet!"
}