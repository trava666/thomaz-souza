program Project1;

{$APPTYPE CONSOLE}
{on.click.}
uses
  SysUtils;

Var
  p1, ma1, mb1, p2, ma2, mb2, a1, a2, mf, situacao: real;
  qaulas, faltas: integer;

begin
  writeln('Digite a nota p1');
  readln (p1);
  writeln('Digite a nota ma1');
  readln (ma1);
  writeln('Digite a nota mb2');
  readln (mb1);
  writeln('Digite a nota p2');
  readln (p2);
  writeln('Digite a nota ma2');
  readln (ma2);
  writeln('Digite a nota mb2');
  readln (mb2);
  writeln('Digite a quantidade de aulas');
  readln (qaulas);
  writeln('Digite a quantidade de faltas');
  readln (faltas);

  situacao:= ((faltas/qaulas)*100);

  if ((p1 >= 0) and (ma1 >= 0) and (mb1 >= 0) and (p2 >= 0) and (ma2 >= 0) and (mb2 >= 0) and
      (p1 <= 10) and (ma1 <= 10) and (mb1 <= 10) and (p2 <= 10) and (ma2 <= 10) and (mb2 <= 10)) then
    begin
      a1 := ((p1 * 0.7) + (ma1 * 0.2) + (mb1 * 0.1));
      a2 := ((p2 * 0.7) + (ma2 * 0.2) + (mb2 * 0.1));
      mf := (a1 + (a2 * 2)) / 3;

      if ((mf >= 5) and (situacao >= 75))then
        begin
         writeln('APROVADO')
        end
      else
        begin
          if ((mf < 5) and (mf >= 3) and (situacao >= 75)) then
            begin
              writeln('RECUPERAÇÃO');
            end
          else
            begin
              if ((mf < 3) and (situacao >= 75))  then
                begin
                  writeln('REPROVADO POR NOTA');
                end
              else
                begin
                  writeln ('REPROVADO POR FALTA');
                end
            end
        end;

    end
  else
    begin
      writeln ('NOTA INVALIDA!');
    end;





end.

