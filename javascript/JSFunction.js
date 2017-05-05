var tierState = 0;
var price = 0;
var role;
var position;
var phpURL;
var TIER = {
    PREMIER: 1,
    MAJOR: 2,
    MINOR: 4
}

function setStateOfTier() {
    if (document.getElementById("tierPremier").checked)
        tierState += TIER.PREMIER;
    if (document.getElementById("tierMajor").checked)
        tierState += TIER.MAJOR;
    if (document.getElementById("tierMinor").checked)
        tierState += TIER.MINOR;
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
}

function searchOpPlayer() {
    setPosition();
    setCountry();
    var values = {
        'key': "searchOpPlayer",
        'position': position,
        'country': country
    }
    phpURL = "playerPHPFn.php";
    sendRequest(values);
    document.getElementById("playerNameText").value = "";
}

function removePlayer(id){
    var values = {
        'key': "remove",
        'id': id,
    }
    phpURL = "editPHPFn.php";
    sendRequest(values);
}

function searchOpEdit() {
    setPosition();
    setCountry();
    var values = {
        'key': "searchOpPlayer",
        'position': position,
        'country': country
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

function showMap(type) {
    var values = {
        'key': type
    }
    phpURL = "mapPHPFn.php";
    sendRequest(values);
}

function showHero(role) {
    var values = {
        'key': role
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