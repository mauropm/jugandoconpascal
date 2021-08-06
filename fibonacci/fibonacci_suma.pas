(*
 * Como podemos ver en la imagen fibonacci_recursivo_falla_por_acabarse_stack.png, vemos que
 * si bien el codigo es super elegante, preciso y breve, similar a como seria la version en
 * papel de un matematico, para la computadora no es practica.
 * Se requiere repensar el problema, para que podamos calcular la sucesion en numeros mas alla
 * de 23.
 * Por cierto, lo que sucedio ahi es lo que conoce uno como "stack overflow", que es lo que inspira
 * a los creadores de stackoverflow.com a utilizar ese nombre.
 * Definicion formal  de un stack overflow lo puedne buscar en la wikipedia.
 *)

program fibonacci_suma;

var
 navo: longint;

 procedure fib(n: longint);
 var
  i:longint;
  acc1: longint;
  acc2: longint;
  tmp: longint;
 begin
  acc1:=0;
  acc2:=1;
  for i:=2 to n do
  begin
   tmp:=acc2+acc1;
   acc1:=acc2;
   acc2:=tmp;
  end;
  writeln(acc2);
 end;

begin
 navo:=0;
 writeln('Teclea un numero n entero positivo: ');
 readln(navo);
 writeln('f(n)=');
 fib(navo);
end.
