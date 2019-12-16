var
  A: array [,] of boolean;

function HowMuch(x, y: integer): integer;
begin
  result := 0;
  for var i := -1 to 1 do
    for var j := -1 to 1 do
      if (i <> j) and (A[x + i, y + j]) then
        result+=1;
    
end;
   
      
  

begin
  
  
  
end.