
void f1(int obligatorio, [int opcional = 0]) {
  print("${obligatorio}, ${opcional}");
}

void f2(int obligatorio, {int opcionalConNombre = 0}) {
  print("${obligatorio}, ${opcionalConNombre}");
}

void main() {
  f1(1);    // Muestra: 1, 0
  //f1();   // Si llamamos f1() sin argumentos, obtendremos
            // el error: Context: Found this candidate,
            // but the arguments don't match.

  f1(1, 2); // Muestra:  1, 2

  f2(1);    // Muestra: 1, 0

  // f2(1, 2); // Si proporcionamos dos argumentos a f2, pero
              // sin indicar el nombre, tendremos un error.

  f2(1, opcionalConNombre: 3); // Muestra 1, 3
}