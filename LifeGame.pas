var A : array [,] of boolean;

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

end.