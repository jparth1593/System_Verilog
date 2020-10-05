module fulladder(sum,carry,a,b,cin);

input  a,b;
input cin;
output reg  sum;
output reg carry;

always @(a or b) begin
#1;
sum = a  ^ b ^ cin;
carry = (a & b) | (b & cin) | (a & cin);


$display (" -----------from Design------------");
 $display (" a = %0b",a);
	$display (" b = %0b",b);
	$display (" cin = %0b",cin);
	$display (" sum = %0b",sum);
	$display (" c_out = %0b",carry);
	$display (" ----------------------------------\n");
end
endmodule