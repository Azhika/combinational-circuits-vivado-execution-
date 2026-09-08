
module full_adder_half(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
    wire sum1;
    wire carry1;
    wire carry2;
    half_adder HA1(
    .a(a),
    .b(b),
    .sum(sum1),
    .carry(carry1)
    );
    half_adder HA2(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry2)
    );
    assign carry=carry1|carry2;                      
    
endmodule
