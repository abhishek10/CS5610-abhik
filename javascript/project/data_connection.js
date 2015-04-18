function register_user() {
    var firstName = document.getElementById('firstName').value;
    var lastName = document.getElementById('lastName').value;
    var userName = document.getElementById('newUsername').value;
    var password = document.getElementById('newPassword').value;
    var confirmPassword = document.getElementById('newConfirmPassword').value;

    if (firstName.trim().length === 0 || userName.trim().length === 0 || password.trim().length === 0) {
        document.getElementById('success').innerHTML = null;
        document.getElementById('error').innerHTML = "Please enter all mandatory(*) fields";
        return false;
    }
    else if (password != confirmPassword) {
        document.getElementById('success').innerHTML = null;
        document.getElementById('error').innerHTML = "Password and Confirm Password field does not match";
        return false;
    }
    else {
        $.ajax({
            type: "POST",
            url: "NewReg.aspx/Register",
            data : '{fname: "' + firstName + '", lname: "' + lastName + '" , uname : "' + userName + '", pwd : "' +password + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                document.getElementById('success').innerHTML = null;
                document.getElementById('error').innerHTML = "Error Occured. Please Try Again.";
            }
        });
    }
}
function OnSuccess(response) {
    if (response.d == "Failure") {
        document.getElementById('error').innerHTML = "User already exist with this username";
        document.getElementById('success').innerHTML = null;
    }
    else
    {
        document.getElementById('error').innerHTML = null;
        document.getElementById('firstName').value = "";
        document.getElementById('lastName').value = "";
        document.getElementById('newUsername').value = "";
        document.getElementById('newPassword').value = "";
        document.getElementById('newConfirmPassword').value = "";
        document.getElementById('success').innerHTML = "User Registered Successfully !!!";
    }

}


function toggle(input) {
    if (document.getElementById(input.id).innerHTML == "Like")
        document.getElementById(input.id).innerHTML = "Unlike";
    else
        document.getElementById(input.id).innerHTML = "Like";
}


function returnresult(response, element) {
    if (response.d == "Liked") {
        document.getElementById(element).innerHTML = "Unlike";
    }
    else {
        document.getElementById(element).innerHTML = "Like";
    }
}

function like_event(input_data) {

    var method = "GetLikes";
    var username = document.getElementById('currUsername').value;
    var currentvalue = document.getElementById(input_data.id).innerHTML;
    if (currentvalue == "Unlike")
        method = "UnLike"

    //var username = "test";
        $.ajax({
            type: "POST",
            url: "Search_Event.aspx/"+method,
            data: '{input: "' + username + ";" + input_data.value + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                toggle(input_data);
            },
            failure: function (response) {
                alert(response.d);
            }
        });
}

function is_already_liked(isliked,element) {

    var username = document.getElementById('currUsername').value;

    $.ajax({
        type: "POST",
        url: "Search_Event.aspx/CheckLike",
        data: '{input: "' + username + ";" + isliked + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            returnresult(response, element)
        },
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