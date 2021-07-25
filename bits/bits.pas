(*
 * Podriamos seguir creando letras utilizando una mascara de bits, en lugar de escribir las funciones ascii
 * de forma literal, podriamos hacer una funcion que calcule y genere las cadenas necesarias.
 * Como preambulo, manipularemos bits aqui, de tal forma que podamos guardar las letras gr ficas como
 * cadenas de bits.
 *)

Program bits;
var
 value: word; (* 2 bytes == 16 bits *)

 function set_bit(iposition: word; ivalue: boolean): word;
  var
   tmp: word;
  begin
   if (ivalue) then
    begin
     (* if the value is 1 or true *)
     tmp:=1; (* 0000000000000001 *)
     tmp:=tmp<<iposition;
     set_bit:=tmp;
    end;
 end;

 procedure print_binary(num: word);
  var
   snum: array [0..15] of char;
   i: integer;
  begin
   for i:= 15 downto 0 do
    begin
     snum[i]:='0';
     if (num and set_bit(i, true) > 0) then
      snum[i]:='1';
    end;
   write('Result: ');
   writeln(snum);
 end;

begin
 print_binary(1);
 print_binary(2);
 print_binary(4);
 print_binary(8);
 print_binary(3);
end.