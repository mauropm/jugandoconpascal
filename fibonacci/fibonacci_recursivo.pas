(*
 * Sucesion de fibonacci.
 * Un problema comun a resolver en matematicas con programacion es calcular el "n-avo" elemento de una sucesion.
 * Ej. Obtenga 20-avo numero de la sucesion de fibonacci, representdo por f.
 * f(0)=0
 * f(1)=1
 * f(2)=f(1)+f(0)
 * f(3)=f(2)+f(1)
 * ...
 * f(n)=f(n-1)+f(n-2)
 * C¢mo podriamos resolver este problema? Pues hay muchas formas. Es decir, en algunos casos, se resuelve con
 * recursion, que es una definicion de funciones que llaman a la misma funcion, como hemos definido aca. Y
 * en terminos de solucion matematica es elegante, pero en terminos computacionales, caro.
 *)

program fibonacci_recursivo;

var
 navo: longint;

 function fibonacci(i:longint): longint;
 begin
  case (i) of
   0:  fibonacci:=0;
   1: fibonacci:=1;
  else
   fibonacci:=fibonacci(i-1)+fibonacci(i-2);
  end;
 end;

begin
 navo:=0;
 writeln('Teclea un numero n entero positivo: ');
 readln(navo);
 writeln('f(n)=');
 navo:=fibonacci(navo);
 writeln(navo);
end.
