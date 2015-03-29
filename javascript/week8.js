
function get_location() {
    var oArgs = {
        app_key: "MkPtkR7vPVRNxjVh",
        q: "music",
        where: "San Diego",
        "date": "2013061000-2015062000",
        page_size: 5,
        sort_order: "popularity",
    };
    EVDB.API.call("/events/search", oArgs, function (oData) {
    alert(oData.events.event[0].venue_address + " - " + oData.events.event[0].city_name);
    });
}

function get_Time() {
    var oArgs = {
        app_key: "MkPtkR7vPVRNxjVh",
        q: "music",
        where: "San Diego",
        "date": "2013061000-2015062000",
        page_size: 5,
        sort_order: "popularity",
    };
    EVDB.API.call("/events/search", oArgs, function (oData) {
        alert(oData.events.event[0].start_time);
    });
}

function get_venue_location() {
    var oArgs = {
        app_key: "MkPtkR7vPVRNxjVh",
        q: "music",
        where: "San Diego",
        "date": "2013061000-2015062000",
        page_size: 5,
        sort_order: "popularity",
    };
    EVDB.API.call("/events/search", oArgs, function (oData) {
    alert(oData.events.event[0].venue_name);
    });
}

function get_creator() {
    var oArgs = {
        app_key: "MkPtkR7vPVRNxjVh",
        q: "music",
        where: "San Diego",
        "date": "2013061000-2015062000",
        page_size: 5,
        sort_order: "popularity",
    };
    EVDB.API.call("/events/search", oArgs, function (oData) {
    alert(oData.events.event[0].performers.performer.creator);
    });
}

function get_state() {
    var oArgs = {
        app_key: "MkPtkR7vPVRNxjVh",
        q: "music",
        where: "San Diego",
        "date": "2013061000-2015062000",
        page_size: 5,
        sort_order: "popularity",
    };
    EVDB.API.call("/events/search", oArgs, function (oData) {
        alert(oData.events.event[0].region_name);
    });
}