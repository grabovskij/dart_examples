import 'dart:convert';

void main() {
  // final dog1 = Dog('Sharik');
  final dog1 = Dog(
    name: 'Sharik',
    poroda: 'haski',
  );

  final dog2 = Dog.empty();

  final serverResponse =
      '{"id":"0","title":"dr","firstName":"Nikita","picture":"http://..."}';

  final user = UserPreview.fromJson(jsonDecode(serverResponse));

  print(user);
}

class UserPreview {
  final String id;
  final String title;
  final String firstName;
  final String lastName;
  final String picture;

  UserPreview({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
  });

  factory UserPreview.fromJson(Map<String, dynamic> json) {
    return UserPreview(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      picture: json['picture'] ?? '',
    );
  }

  @override
  String toString() {
    return '[UserPreview]: id:$id, title:$title, '
        'firstName:$firstName, lastName:$lastName, picture:$picture';
  }
}

class Dog {
  final String name;
  final String poroda;

  // Dog(this.name, this.poroda);
  // Dog(
  //   this.name, [
  //   this.poroda = 'haski',
  // ]);
  Dog({
    required this.name,
    this.poroda = 'haski',
  });

  factory Dog.empty() => Dog(name: '', poroda: '');

  @override
  String toString() {
    return '[Dog]: name:$name, poroda:$poroda';
  }
}
