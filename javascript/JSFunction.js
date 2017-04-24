var tierState = 0;
var price = 0;
var phpURL;
var TIER = {
    PREMIER: 1,
    MAJOR: 2,
    MINOR: 4
}

function getTourPage() {
    window.open('tournament.html', '_self', false)
}

function getTeamPage() {
    window.open('team.html', '_self', false)
}

function getHeroPage() {
    window.open('hero.html', '_self', false)
}

function getMapPage() {
    window.open('map.html', '_self', false)
}

function getPlayerPage() {
    window.open('player.html', '_self', false)
}

function backToMain() {
    window.open('index.html', '_self', false)
}

function setStateOfTier() {
    if (document.getElementById("tierPremier").checked)
        tierState += TIER.PREMIER;
    if (document.getElementById("tierMajor").checked)
        tierState += TIER.MAJOR;
    if (document.getElementById("tierMinor").checked)
        tierState += TIER.MINOR;
}

function setPrice() {
    var priceItem = document.getElementById("price");
    price = priceItem.options[priceItem.selectedIndex].value;
}

function resetTourForm(){
    document.getElementById("tierPremier").checked = false;
    document.getElementById("tierMajor").checked = false;
    document.getElementById("tierMinor").checked = false;
    document.getElementById("price").selectedIndex = 0;
}

function searchOpTour() {
    setStateOfTier();
    setPrice();
    var values = {
        'key': "searchOpTour",
        'tierState': tierState,
        'price': price
    }
    phpURL = "tourPHPFn.php";
    sendRequest(values);
    tierState = 0;
}

function searchTourName() {
    var val = document.getElementById("tourNameText").value;
    var values = {
        'key': "searchTourName",
        'name': val
    }
    phpURL = "tourPHPFn.php";
    sendRequest(values);
    resetTourForm();
}

function showMap(type){
    var values = {
        'key': type
    }
    phpURL = "mapPHPFn.php";
    sendRequest(values);
}

function showHero(role){
    var values = {
        'key': role
    }
    phpURL = "heroPHPFn.php";
    sendRequest(values);
}

function searchTeamName(){
    var val = document.getElementById("teamNameText").value;
    var values = {
        'key': "searchTeamName",
        'name': val
    }
    phpURL = "teamPHPFn.php";
    sendRequest(values);
    resetForm();
}

function searchPlayerName(){
    var val = document.getElementById("playerNameText").value;
    var values = {
        'key': "searchPlayerName",
        'name': val
    }
    phpURL = "playerPHPFn.php";
    sendRequest(values);
}

function dropdown(val) {
    var y = document.getElementsByClassName('btn btn-default dropdown-toggle');
    var aNode = y[0].innerHTML = val +' <span class="caret"></span>';
}

function sendRequest(values) {
    var result = $.ajax({
        url: phpURL,
        type: "post",
        data: values,
        success: function (data, status, xhr) {
            $("#content").html(JSON.stringify(data));
            console.log(JSON.stringify(data));
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}