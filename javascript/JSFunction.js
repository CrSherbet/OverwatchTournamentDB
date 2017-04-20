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

function setStateOfTier(){
    if(document.getElementById("tierPremier").checked)
        tierState += TIER.PREMIER;
    if(document.getElementById("tierMajor").checked)
        tierState += TIER.MAJOR;
    if(document.getElementById("tierMinor").checked)
        tierState += TIER.MINOR;
}

function setPrice(){
    var priceItem = document.getElementById("price");
    price = priceItem.options[priceItem.selectedIndex].value;
}

function searchOpTour(){
    setStateOfTier();
    setPrice();
    alert(tierState+" "+price);
     var values =  {
       'key'    : "searchOpTour",
       'tierState'    : tierState,
       'price'    : price
    }
    sendRequest(values);
    tierState = 0;

}

function searchTourName(){
    var val = document.getElementById("tourNameText").value;
    var values =  {
       'key'    : "searchTourName",
       'name'   : val
    }
    sendRequest(values);
}

function sendRequest(values){
    var result = $.ajax({
        url: "PHPFunction.php",
        type: "post",
        data: values,
        success: function(data,status,xhr){
           $("#content").html(JSON.stringify(data));
           console.log(JSON.stringify(data));
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}