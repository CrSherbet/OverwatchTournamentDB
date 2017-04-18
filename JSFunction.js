var tierState = 0;
var price = 0;
var TIER = {
    PREMIER : 1,
    MAJOR : 2,
    MINOR : 4
}
function getTourPage(){ window.open ('Tournament.html','_self',false)}
function getTeamPage(){ window.open ('Team.html','_self',false)}
function getHeroPage(){ window.open ('Hero.html','_self',false)}
function getMapPage(){ window.open ('Map.html','_self',false)}
function getPlayerPage(){ window.open ('Player.html','_self',false)}
function backToMain(){ window.open ('index.html','_self',false)}

function getSomeList(nameOfList){
     var values =  {
       'key'    : "getCounytryList",
       'name'   : nameOfList
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

function setStateOfTier(){
    if(document.getElementById("tierPremier").checked)
        tierState += 1;
    if(document.getElementById("tierMajor").checked)
        tierState += 2;
    if(document.getElementById("tierMinor").checked)
        tierState += 4;
}

function setPrice(){
     price = document.getElementById("price").options[0].value;
}

function searchOpTour(){
    setStateOfTier();
    setPrice();
     var values =  {
       'key'    : "searchOpTour",
       'tierState'    : tierState,
       'price'    : price
    }
    var result = $.ajax({
        url: "PHPFunction.php",
        type: "post",
        data: values,
        success: function(data,status,xhr){
            //data is json file
         //   var mydata = JSON.parse(data);
    
            console.log(JSON.stringify(data));
            console.log(status);
            console.log(xhr);
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
    tourState = 0;
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