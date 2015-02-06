
var timeStr, dateStr;

function clock() {
    var now = new Date();

    // time
    var hours = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds();
        
    timeStr = hours;
    timeStr += ((minutes < 10) ? ":0" : ":") + minutes;
    timeStr += ((seconds < 10) ? ":0" : ":") + seconds;
        
    document.clock.time.value = timeStr;

    // date
    date = now.getDate();
    month = now.getMonth()+ 1;
    year = now.getYear();
        
    dateStr = "" + month;
    dateStr += ((date < 10) ? "/0" : "/") + date;
    dateStr += "/" + year;

    document.clock.date.value = dateStr;
        
    setTimeout("clock()", 1000);
}

