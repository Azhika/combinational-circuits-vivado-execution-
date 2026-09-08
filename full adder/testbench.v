module full_aadder_tb(

    );
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;
    full_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
    );
    initial begin 
    $monitor("$time=%0t|a=%b b=%b cin=%b |sum=%b|cout=%b",$time,a,b,cin,sum,cout);
    
    cin=0;
    a=0;b=0;#10;
    a=1;b=0;#10;
    a=0;b=1;#10;
    a=1;b=1;#10;
    cin=1;
    a=0;b=0;#10;
    a=1;b=0;#10;
    a=0;b=1;#10;
    a=1;b=1;#10;
    $finish;
    end 
    endmodule
    
    
