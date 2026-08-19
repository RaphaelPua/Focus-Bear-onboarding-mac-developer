const userName = "Raphael";
const userAge = 24;

function checkUser(userName, userAge) {
  if (userAge >= 18) {
    console.log(userName + "is an adult");
  } else {
    console.log(userName + "is a minor");
  }
}

checkUser(userName, userAge);


