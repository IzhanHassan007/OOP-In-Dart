// Assignment 2 - Enum with Class Behavior
// Question:
// Create an enum UserRole with values (Admin, Editor, Viewer). Create a class User that has a role of type UserRole. Write a method that prints what actions the user is allowed to perform based on their role.

void main() {
  User user = User();
  user.performAction();
}

class User {
  UserRole role = UserRole.Viewer;

  void performAction() {
    switch (role) {
      case UserRole.Admin:
        print('Admin can perform all actions');
        break;
      case UserRole.Editor:
        print('Editor can edit content');
        break;
      case UserRole.Viewer:
        print('Viewer can view content');
        break;
    }
  }
}

enum UserRole { Admin, Editor, Viewer }
