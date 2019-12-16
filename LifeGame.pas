var A : array [,] of boolean;

begin
  A:=matrRandom(5,5);
  for var i:=0 to a.GetLength(0) - 1 do
  begin
    a(i,0):= false;
    a(i,a.GetLength(1)-1):= false;
  end;
  for var i:=0 to a.GetLength(1) - 1 do
  begin
    a(0,i):= false;
    a(a.GetLength(0)-1, i):= false;
  end;
  printfield;
  while A.any(x -> x) then
  begin
    OneIteration;
    printfield;
    sleep(100);
  end;
end.