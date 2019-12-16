var A : array [,] of boolean;

procedure PrintField();
begin
  for var i := 1 to A.RowCount-2 do
  begin
    for var j := 1 to A.ColCount-2 do
      if a[i,j] then Print('█֯֯')
      else Print('░');
    writeln();
  end;
end;

begin
  
end.