import 'dart:io';

void main(){
  stdout.write("Hola! Cómo te llamas? ");
  var name=stdin.readLineSync();
  print("Hola $name!");
}

int? variable1;
try{
  int variable2=variable1!; 
  print(variable2);         
} catch (e){
    print(e.runtimeType); // -> NullError
    print(e);             // -> NoSuchMethodError: t1 is null
}