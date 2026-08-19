
function userExists(user) {
  return user !== null;
}

function userIsActive(user) {
  return user.isActive === true;
}

function userHasAccessRole(user) {
  return user.role === "admin" || user.role === "manager";
}

function userHasSufficientBalance(user) {
  return user.accountBalance > 0;
}


function processUserAccess(user) {
    if (!userExists(user)) {
        console.log("User does not exist");
        return;
    }

    if (!userIsActive(user)) {
        console.log("User does not have access because their account is inactive");
        return;
        }

    if (!userHasAccessRole(user)) {
        console.log("User does not have access because of their role");
        return;
        }
    
    if (!userHasSufficientBalance(user)) {
        console.log("User does not have access because their balance is too low");
        return;
    }
    
    console.log("User has access");
}