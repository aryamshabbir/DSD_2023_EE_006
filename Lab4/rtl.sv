module lab4(
    input logic [1:0] a,
    input logic [1:0] b,
    output logic r,
    output logic g,
    output logic B
    );
     logic r1,r2,r3,r4,r5;
     logic g1,g2,g3,g4,g5;
     logic b1,b2,b3,b4;
     assign r1=(~b[0])&(~b[1]);
     assign r2=(a[0])&(a[1]);
     assign r3=(a[1])&(~b[0]);
     assign r4=(a[0])&(~b[0]);
     assign r5=(a[0])&(~b[1]);
     assign r= r1 | r2 | r3 | r4 | r5;
     assign g1=(~a[0])&(~a[1]);
     assign g2=(b[0])&(b[1]);
     assign g3=(~a[0])&(b[0]);
     assign g4=(~a[0])&(b[1]);
     assign g5=(~a[1])&(b[0]);
     assign g= g1 | g2 | g3 | g4 |g5;
     assign b1=(~a[1])&(b[1]);
     assign b2=(~a[0])&(b[0]);
     assign b3=(a[1])&(~b[1]);
     assign b4=(a[0])&(~b[0]);
     assign B= b1 | b2 | b3 | b4;
     
endmodule