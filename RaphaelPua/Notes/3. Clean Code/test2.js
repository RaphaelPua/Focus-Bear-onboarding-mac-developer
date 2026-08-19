const user_id = 24;
const role = "admin";

function isAdminUser(user_id, role) {
  return user_id > 0 && role === "admin";
}

function checkUser(user_id, role) {
  if (isAdminUser(user_id, role)) {
    console.log("allowed");
  } else {
    console.log("denied");
  }
}

checkUser(user_id, role);
