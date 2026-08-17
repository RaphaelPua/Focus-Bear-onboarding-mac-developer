
def is_admin_user(user_id, role):
    return user_id > 0 and role == "admin"

def check_access(user_id, role, account_type):
    if is_admin_user(user_id, role, account_type):
        print("allowed")
    else:
        print("denied")
