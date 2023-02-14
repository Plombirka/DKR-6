uses crt;
const
  MAX_SIZE = 100;

type
  Stackk = array[1..MAX_SIZE] of integer;

var
  stack: Stackk;
  top: integer;

procedure push(value: integer);
begin
  if top = MAX_SIZE then
    writeln('Массив полон')
  else
  begin
    inc(top);
    stack[top] := value;
  end;
end;

procedure pop;
begin
  if top = 0 then
    writeln('Массив пуст')
  else
  begin
    stack[top] := 0;
    dec(top);
  end;
end;

procedure printStack;
var
  i: integer;
begin
  writeln('Stack:');
  for i := 1 to top do
    write(stack[i], ' ');
  writeln;
end;

var
  choice, value: integer;

begin
  top := 0;
  repeat
    writeln('1. Добавить');
    writeln('2. Удалить');
    writeln('3. Вывести');
    writeln('4. Exit');
    write('Что выберете вы: ');
    readln(choice);
    case choice of
      1:
        begin
          readln(value);
          push(value);
        end;
      2: pop;
      3: printStack;
      4: break;
    else
      writeln('Invalid choice');
    end;
  until false;
end.
