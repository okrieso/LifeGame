var A : array [,] of boolean;

function HowMuch(x, y: integer): integer;
begin
  result := 0;
  for var i := -1 to 1 do
    for var j := -1 to 1 do
      if (i <> j) and (A[x + i, y + j]) then
        result+=1;
end;

procedure OneIteration();
  begin
    for var i:=1 to A.rowCount-2 do
      for var j:=1 to A.ColCount-2 do
        if A[i,j]=true then
          if (HowMuch(i,j) < 2) or (HowMuch(i,j) > 3) then
            A[i,j]:=false
        else
          if (HowMuch(i,j) = 3) then
            A[i,j]:=true;   
  end;
 
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