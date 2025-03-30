
void f1(int obligatorio, [int opcional = 0]) {
  print("${obligatorio}, ${opcional}");
}

void f2(int obligatorio, {int opcionalConNombre = 0}) {
  print("${obligatorio}, ${opcionalConNombre}");
}

void main() {

Set laborables =
      Set.from(['lunes', 'martes', 'miércoles', 'jueves', 'viernes']);

for (String dia in laborables) {
  print(dia);
}

laborables.forEach((dia) => print(dia));


Map<String, int> notas = {"PMDM": 8, "AD": 9, "PSP": 9, "DI": 7};

for (String modulo in notas.keys) {
  print("Módulo: $modulo, nota: ${notas[modulo]}");
}

notas.forEach((key, value) => print("Módulo: $key, nota: $value"));
}

