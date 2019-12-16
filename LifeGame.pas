var A : array [,] of boolean;

procedure PrintField();
begin
  for var i := 0 to A.RowCount-1 do
  begin
    for var j := 0 to A.ColCount-1 do
      if a[i,j] then Print('█֯֯')
      else Print('░');
    writeln();
  end;
end;

begin
  
end.