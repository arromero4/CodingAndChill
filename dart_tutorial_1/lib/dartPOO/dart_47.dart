enum Clients {
  client1(name: 'Harvey', career: 'Lawyer', gender: 'male'),
  client2(name: 'Michael', career: 'Lawyer', gender: 'male'),
  client3(name: 'Rachel', career: 'Lawyer', gender: 'female');

  //Miembros
  final String name;
  final String career;
  final String gender;

  //Constructor
  const Clients(
      {required this.name, required this.career, required this.gender});

  //Metodo
  String lawyers() {
    return 'Name: $name  \nCareer: $career  \nGender: $gender';
  }
}

void main() {
  Clients client = Clients.client1;
  print(client.lawyers());
}
