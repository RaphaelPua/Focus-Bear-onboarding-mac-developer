function validateUser(user) {
  // Validate user
  if (!user.email || !user.name) {
    throw new Error("Invalid user");
  }
}

function formatName(name) {
  return name.trim().toLowerCase();
}

function discountCalculator(isPremium) {
  return isPremium ? 0.2 : 0;
}

function createUser(user) {
  return {
    name: formatName(user.name),
    email: user.email.toLowerCase(),
    discount: discountCalculator(user.isPremium),
  };
}

function saveUser(user) {
  database.save(user);
}

function sendWelcomeEmail(user) {
  emailService.send(user.email, `Welcome ${user.name}!`);
}

function processUser(user) {
  validateUser(user);
  const newUser = createUser(user);
  saveUser(newUser);
  sendWelcomeEmail(newUser);
  return newUser;
}
