class Persona {
  // Declaració de propietats
  String? nombre;
  String? apellidos;
  int? anyoNacimiento;
  String? especie;

   int get edat{
    // Obtenim la data actual, instanciant un objecte DateTime
    DateTime currentTime = DateTime.now();  

    // L'any es troba a la propetat year de l'objecte currentTime
    return currentTime.year-(anyoNacimiento ?? 0);
  }

  set edat (int edat){
    // Establim l'any de naixement a partir de l'edat
    this.anyoNacimiento=DateTime.now().year-edat;
  }


  // Constructor principal
  Persona(
      {required this.nombre,
      required this.apellidos,
      this.anyoNacimiento,
      this.especie = "Humana"});

  // Constructor con nombre. Creamos objeto a partir de un JSON
  Persona.fromJSON(Map<String, dynamic> objetoJSON) {
    nombre = objetoJSON['nombre'];
    apellidos = objetoJSON['apellidos'];
    anyoNacimiento = objetoJSON['anyoNacimiento'];
    especie = objetoJSON['especie'] ?? "Humana";
  }

  @override
  String toString() {
    return '''\nNom: $nombre
Apellidos: $apellidos
Año de nacimiento: $anyoNacimiento
Especie: $especie''';
  }
}

void main() {
  // Creación de un objeto Persona a partir de dos atributos
  Persona p1 = Persona(nombre: "Luke", apellidos: "Skywalker");
  print(p1.toString());

  // Creación de un objeto Persona a partir de cuatro atributos.
  Persona p2 = Persona(
      nombre: "Ashoka",
      apellidos: "Tano",
      anyoNacimiento: "36ABY",
      especie: "Togruta");

  print(p2.toString());

// Definición de un JSON
  Map<String, dynamic> myJSON = {"nombre": "Han", "apellidos": "Solo"};

  // Creación de un objeto Persona a partir del JSON
  Persona p3 = Persona.fromJSON(myJSON);
  print(p3.toString());
}

class SuperClase{
  String propiedad1;

  // Constructor por defecto con lista de inicialización.
  SuperClase():propiedad1="Valor per defecte en la superclasse";

  // Constructor con nombre (no se hereda)
  SuperClase.fromString(String s): this.propiedad1=s;
}

class SubClasse extends SuperClase {
  // Los constructores no se heredan
}

// Instància de la subclasse
SubClasse sc1=SubClasse();
print("Propiedad 1 de la subclase: ${sc1.propietat1}");


abstract class Figura{
  int posx;
  int posy;

  void calculaArea(){
    print('Calcul per defecte');
  }
}

class Rectangulo extends Figura {
  int base;
  int altura;

  @override // Opcional
  void calculaArea() {
    print (this.base*this.altura);
  }
}


