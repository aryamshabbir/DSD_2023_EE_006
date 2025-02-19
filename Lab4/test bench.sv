module lab4_tb;
logic [1:0] a1;
logic [1:0] b1;
logic r1;
logic g1;
logic p;
localparam period=10;
lab4 UUT(
    .a(a1),
    .b(b1),
    .r(r1),
    .g(g1),
    .B(p)

);
initial 
begin
    a1[0] = 0; a1[1] = 0; b1[0] = 0; b1[1] = 0;
    #period;
    a1[0] = 0; a1[1] = 0; b1[0] = 0; b1[1] = 1;
    #period;
    a1[0] = 0; a1[1] = 0; b1[0] = 1; b1[1] = 0;
    #period;
    a1[0] = 0; a1[1] = 0; b1[0] = 1; b1[1] = 1;
    #period;
    a1[0] = 0; a1[1] = 1; b1[0] = 0; b1[1] = 0;
    #period;
    a1[0] = 0; a1[1] = 1; b1[0] = 0; b1[1] = 1;
    #period;
    a1[0] = 0; a1[1] = 1; b1[0] = 1; b1[1] = 0;
    #period;
    a1[0] = 0; a1[1] = 1; b1[0] = 1; b1[1] = 1;
    #period;
    a1[0] = 1; a1[1] = 0; b1[0] = 0; b1[1] = 0;
    #period;
    a1[0] = 1; a1[1] = 0; b1[0] = 0; b1[1] = 1;
    #period;
    a1[0] = 1; a1[1] = 0; b1[0] = 1; b1[1] = 0;
    #period;
    a1[0] = 1; a1[1] = 0; b1[0] = 1; b1[1] = 1;
    #period;
    a1[0] = 1; a1[1] = 1; b1[0] = 0; b1[1] = 0;
    #period;
    a1[0] = 1; a1[1] = 1; b1[0] = 0; b1[1] = 1;
    #period;
    a1[0] = 1; a1[1] = 1; b1[0] = 1; b1[1] = 0;
    #period;
    a1[0] = 1; a1[1] = 1; b1[0] = 1; b1[1] = 1;
    #period;
    $stop;
  end
  initial
  begin
    $monitor("r=%b, g=%b,B=%b, a[1]=%b, a[0]=%b, b[1]=%b, b[0]=%b", r1,g1,p,a1[1],a1[0],b1[1],b1[0]);
  end
endmodule