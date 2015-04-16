function register_user() {
    var firstName = document.getElementById('firstName').value;
    var lastName = document.getElementById('lastName').value;
    var userName = document.getElementById('newUsername').value;
    var password = document.getElementById('newPassword').value;
    var confirmPassword = document.getElementById('newConfirmPassword').value;

    if (password != confirmPassword) {
        alert("Password and Confirm Password field does not match")
    }
    else {
        $.ajax({
            type: "POST",
            url: "NewReg.aspx/Register",
            data : '{fname: "' + firstName + '", lname: "' +lastName + '" , uname : "' + userName + '", pwd : "' +password + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert(response.d);
            }
        });
    }
}
function OnSuccess(response) {
    alert(response.d);
}


function like_event(input_data) {

    alert("Like Pressed")
    var username = document.getElementById('currUsername').value;
    //var username = "test";
        $.ajax({
            type: "POST",
            url: "Search_Event.aspx/GetLikes",
            data: '{input: "' + username + ";" + input_data.value + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert(response.d);
            }
        });
}


function get_users(input_data) {

    var username = document.getElementById('currUsername').value;
    $.ajax({
        type: "POST",
        url: "EventSpecificUsers.aspx/GetUsers",
        data: '{input: "' + input_data.value + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: printUsersTable,
        failure: function (response) {
            alert(response.d);
        }
    });
}
function printUsersTable(response) {
    document.getElementById('eventUsers').innerHTML = response.d;
}