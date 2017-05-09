var tierState = 0;
var price = 0;
var role;
var team;
var position;
var phpURL;
var TIER = {
    PREMIER: 1,
    MAJOR: 2,
    MINOR: 4
}

var teamP;
var posP;
var mainP;
var countryP;


function setStateOfTier() {
    if (document.getElementById("tierPremier").checked)
        tierState += TIER.PREMIER;
    if (document.getElementById("tierMajor").checked)
        tierState += TIER.MAJOR;
    if (document.getElementById("tierMinor").checked)
        tierState += TIER.MINOR;
}

function setTeam() {
    var teamItem = document.getElementById("teamSelected");
    team = teamItem.options[teamItem.selectedIndex].value;
}
function setPosition() {
    var posItem = document.getElementById("posSelected");
    position = posItem.options[posItem.selectedIndex].value;
}

function setCountry() {
    var countryItem = document.getElementById("countrySelected");
    country = countryItem.options[countryItem.selectedIndex].value;
}

function setPrice() {
    var priceItem = document.getElementById("price");
    price = priceItem.options[priceItem.selectedIndex].value;
}


function resetTourForm() {
    document.getElementById("tierPremier").checked = false;
    document.getElementById("tierMajor").checked = false;
    document.getElementById("tierMinor").checked = false;
    document.getElementById("price").selectedIndex = 0;
}

function resetPlayerForm() {
    document.getElementById("posSelected").selectedIndex = 0;
    document.getElementById("countrySelected").selectedIndex = 0;
    document.getElementById("teamSelected").selectedIndex = 0;
}

function setPlayerInfo(){
    var teamPlayer = document.getElementById("team");
     teamP = teamPlayer.options[teamPlayer.selectedIndex].value;

     var posPlayer = document.getElementById("position");
     posP = posPlayer.options[posPlayer.selectedIndex].value;

     var mainPlayer = document.getElementById("hero");
     mainP = mainPlayer.options[mainPlayer.selectedIndex].value;

     var countryPlayer = document.getElementById("country");
     countryP = countryPlayer.options[countryPlayer.selectedIndex].value;
}

function addNewPlayer(){
    setPlayerInfo();
     var values = {
        'key': "add",
        'battleTag':  document.getElementById("battle-id").value  ,
        'firstn':  document.getElementById("firstn").value  ,
        'lastn':  document.getElementById("lastn").value  ,
        'team': teamP ,
        'position':  posP ,
        'main': mainP ,
        'country':  countryP
    }
    phpURL = "editPHPFn.php";
    sendRequest(values);
}

function removePlayer(id){
    var values = {
        'key': "remove",
        'id': id,
    }
    phpURL = "editPHPFn.php";
    sendRequest(values);
    resetPlayerForm();
}

function searchOpPlayer() {
    setPosition();
    setCountry();
    setTeam();
    var values = {
        'key': "searchOpPlayer",
        'position': position,
        'country': country,
        'team': team
    }
    phpURL = "playerPHPFn.php";
    sendRequest(values);
    document.getElementById("playerNameText").value = "";
}

function searchOpEdit() {
    setPosition();
    setCountry();
    setTeam();
    var values = {
        'key': "searchOpPlayer",
        'position': position,
        'country': country,
        'team': team
    }
    phpURL = "editPHPFn.php";
    sendRequest(values);
    document.getElementById("playerNameText").value = "";
}

function searchOpTeam() {
    setCountry();
    var values = {
        'key': "searchOpTeam",
        'country': country,
    }
    phpURL = "teamPHPFn.php";
    sendRequest(values);
    document.getElementById("teamNameText").value = "";
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
    document.getElementById("tourNameText").value = "";

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

function showMap(type) {
    var values = {
        'key': type
    }
    phpURL = "mapPHPFn.php";
    sendRequest(values);
}

function showHero(role) {
    var values = {
        'key': "showHero",
        'role': role
    }
    phpURL = "heroPHPFn.php";
    sendRequest(values);
}

function searchTeamName() {
    var val = document.getElementById("teamNameText").value;
    var values = {
        'key': "searchTeamName",
        'name': val
    }
    phpURL = "teamPHPFn.php";
    sendRequest(values);
}

function searchPlayerName() {
    var val = document.getElementById("playerNameText").value;
    var values = {
        'key': "searchPlayerName",
        'name': val
    }
    phpURL = "playerPHPFn.php";
    sendRequest(values);
    resetPlayerForm();
}

function searchInEdit() {
    var val = document.getElementById("playerNameText").value;
    var values = {
        'key': "searchPlayerName",
        'name': val
    }
    phpURL = "editPHPFn.php";
    sendRequest(values);
    resetPlayerForm();
}

function showTourResult(idTeam){
    var values = {
        'key': "showResult",
        'id': idTeam
    }
    phpURL = "matchPHPFn.php";
    sendRequest(values)
}


function sendRequest(values) {
    var result = $.ajax({
        url: phpURL,
        type: "post",
        data: values,
        success: function (data, status, xhr) {
            $("#content").html(data);
            console.log(JSON.stringify(data));
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}

// show head of tournament page
function showTourInfo(id){
    var result = $.ajax({
        url: "matchPHPFn.php",
        type: "post",
        data: {'key': "showInfo",
                'id': id},
        success: function (data, status, xhr) {
            $("#headPage").html(data);
            console.log(JSON.stringify(data));
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}

// About show pop up
function setUp(type,id){
    if(type == "team")
        phpURL = "teamPHPFn.php";
    else if(type == "hero")
        phpURL = "heroPHPFn.php";
    else
        phpURL = "matchPHPFn.php";
    var values = {
        'key': "showPopUp",
        'id': id
    }
 
    showPopUp(values);
}

function showPopUp(values) {
    var result = $.ajax({
        url: phpURL,
        type: "post",
        data: values,
        success: function (data, status, xhr) {
            $("#popup1").html(data);
            console.log(JSON.stringify(data));
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}

// Get list for selection
function getList(type){
     var result = $.ajax({
        url: "editPHPFn.php",
        type: "post",
        data: {
            'key' : "getList",
            'type': type
        },
        success: function (data, status, xhr) {
            $("#"+type).html(data);
            console.log(JSON.stringify(data));
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}

function getTeamList(type){
     if(type == "player")
        phpURL = "playerPHPFn.php";
    else
     phpURL = "editPHPFn.php";
     var result = $.ajax({
        url: phpURL,
        type: "post",
        data: {
            'key' : "getTeamList",
            'type': type
        },
        success: function (data, status, xhr) {
            $("#teamSelected").html(data);
            console.log(JSON.stringify(data));
        },
        error: function (request, status, error) {
            console.log(error);
        }
    });
}