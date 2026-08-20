

const TAX_RATE = 0.1;
const ADMIN_ROLE = "admin";

function validateUser(user) {
    return user && user.active;
}
    
function isUserAdmin(user) {
    return user.role === ADMIN_ROLE;
}

function sendEmail(user) {
    console.log("Sending email to", user.email);
}

function saveUser(user) {
    console.log("Saving user", user.name);
}

function createReport(user) {
    console.log("Creating report for", user.name);
}

function processUser(user) {
    if (!validateUser(user)){
        return "Enter a valid user";
    }

    if (!roleIsAdmin(user)) {
        return "User is not an admin";
    }

    console.log("Admin user")
    sendEmail(user);
    saveUser(user);
    createReport(user);
}


function calculateTax(amount) {
    return amount * TAX_RATE;
}

function calculateEmployeeTax(salary) {
  return calculateTax(salary);
}

function calculateContractorTax(payment) {
  return calculateTax(payment);
}

class UserManager {
  createUser() {}
  deleteUser() {}
}

class EmailService {
  sendEmail() {}
}

class SalaryCalculator {
  calculateSalary() {}
}

class ReportGenerator {
  generateRepor() {}
}