
function getTourPage(){
    window.open ('Tournament.html','_self',false)
}

function getTeamPage(){
    window.open ('Team.html','_self',false)
}

function getHeroPage(){
    window.open ('Hero.html','_self',false)
}

function getMapPage(){
    window.open ('Map.html','_self',false)
}

function backToMain(){
    window.open ('index.html','_self',false)
}

function searchMinor(){
     var values =  {
       'key'    : "searchMinor",
       'val'    : 3
    }
    var result = $.ajax({
        url: "PHPFunction.php",
        type: "post",
        data: values,
        success: function(data,status,xhr){
            //data is json file
            var i = JSON.parse(data);
            console.log(JSON.stringify(data));
            console.log(status);
            console.log(xhr);
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}

function searchTourName(){
    var val = document.getElementById("tourNameText").value;
    var values =  {
       'key'    : "searchTourName",
       'name'   : val
    }
    var result = $.ajax({
        url: "PHPFunction.php",
        type: "post",
        data: values,
        success: function(data,status,xhr){
            //data is json file
            console.log("OK");
            var i = JSON.parse(data);
            console.log(JSON.stringify(data));
            console.log(status);
            console.log(xhr);
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}