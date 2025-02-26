
module lab5b_tb;

    logic [3:0] n;
    logic [2:0] s;
    logic [6:0] seg;
    logic [7:0] an;

    localparam period = 10;

    lab5b UUT (
        .num(n),
        .sel(s),
        .segment(seg),  // Corrected Port Name
        .anode(an)
    );

    initial begin
        n = 4'b0000; s = 3'b000; 
        #period;
        n = 4'b0001; s = 3'b001; 
        #period;
        n = 4'b0010; s = 3'b010; 
        #period;
        n = 4'b0011; s = 3'b011; 
        #period;
        n = 4'b0100; s = 3'b100; 
        #period;
        n = 4'b0101; s = 3'b101; 
        #period;
        n = 4'b0110; s = 3'b110; 
        #period;
        n = 4'b0111; s = 3'b111; 
        #period;
        n = 4'b1000; s = 3'b000; 
        #period;
        n = 4'b1001; s = 3'b001; 
        #period;
        n = 4'b1010; s = 3'b010; 
        #period;
        n = 4'b1011; s = 3'b011; 
        #period;
        n = 4'b1100; s = 3'b100; 
        #period;
        n = 4'b1101; s = 3'b101; 
        #period;
        n = 4'b1110; s = 3'b110; 
        #period;
        n = 4'b1111; s = 3'b111; 
        #period;
        $stop;
    end 

    initial begin
        $monitor("num=%b, sel=%b, segment=%b, anode=%b", n, s, seg, an);
    end

endmodule