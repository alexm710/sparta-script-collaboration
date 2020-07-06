##**$films = [System.Collections.ArrayList] @("Batman", "Spawn")**
$films = Get-Content C:\Users\xiajt\Desktop\FilmList.txt
function global:addfilm($filmname){
    foreach($film in $films){
        if($films.Contains($filmname)){
            Write-Warning("film Already exists")
            break
        }else{
            Add-Content C:\Users\xiajt\Desktop\FilmList.txt $filmname
            break
        }
    }
    
}
addfilm $filmname

function global:getfilms{
    foreach($film in $films){
        $film
    }
}
getfilms



function global:deletefilm($filmname){
    
}
deletefilm $filmname

