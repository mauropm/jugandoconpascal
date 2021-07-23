(*
 * Ascii-big-text
 * En los 90s no habia interfaces graficas, por lo que teniamos trucos tontos para generar textos
 * grandecitos, como a continuacion se ve.
 *)

program bigtext;

 var
  letra: char;

 procedure print_h;
 begin
  writeln('o   o');
  writeln('o   o');
  writeln('ooooo');
  writeln('o   o');
  writeln('o   o');
 end;

 procedure print_o;
 begin
  writeln(' ooo ');
  writeln('o   o');
  writeln('o   o');
  writeln('o   o');
  writeln(' ooo ');
 end;

 procedure print_l;
 begin
  writeln('  o  ');
  writeln('  o  ');
  writeln('  o  ');
  writeln('  o  ');
  writeln('  o  ');
 end;

 procedure print_a;
 begin
  writeln('  o  ');
  writeln(' o o ');
  writeln(' ooo ');
  writeln('o   o');
  writeln('o   o');
 end;

 function get_letter: char;
 var
  output: Char;
 begin
  write('Dame una letra: ');
  readln(output);
  get_letter:= output;
 end;

 begin
  letra:=get_letter;
  case letra of
   'a', 'A': print_a;
   'h', 'H': print_h;
   'l', 'L': print_l;
   'o', 'O': print_o;
  end;
 end.