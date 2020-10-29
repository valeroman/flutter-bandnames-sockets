
class Band {
  String id;
  String name;
  int votes;

  //Definimos el constructor
  Band({
    this.id,
    this.name,
    this.votes
  });

  // El backend va a responder un mapa por que se va a trabajar con sockets
  // Se crea un factory constructor, que recibe algunos argumentos y
  // retorna una instancia de mi Band o mi clase
  factory Band.fromMap( Map<String, dynamic> obj ) 
  => Band(
    id: obj['id'],
    name: obj['name'],
    votes: obj['votes']
  );

}