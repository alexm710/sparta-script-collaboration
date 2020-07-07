[System.Collections.ArrayList]$films = Get-Content C:\Users\xiajt\Desktop\FilmList.txt
function global:addfilm($filmname){
    foreach($film in $films){
        if($films.Contains($filmname)){
            Write-Warning("Film is already in the list")
            break
        }else{
            Add-Content C:\Users\xiajt\Desktop\FilmList.txt $filmname
            Write-Warning("Film added with success")
            break
        }
    }
    
}
addfilm $filmname

function global:getfilms{
Write-Warning("Your film list")
    foreach($film in $films){
        $film
    }
}
getfilms

function global:deletefilm($filmname){
    $data = foreach($film in $films){
        if($film -like $filmname){
            Write-Warning("Film deleted with success")
        }else{
            $film
        }
    }
    $data | Set-Content C:\Users\xiajt\Desktop\FilmList.txt -Force
}
deletefilm $filmname

