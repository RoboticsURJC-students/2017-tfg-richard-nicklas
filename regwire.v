 module reg_combo_example( a, b, y);
  2 input a, b;
  3 output y;
  4 
  5 reg   y;
  6 wire a, b;
  7 
  8 always @ ( a or b)
  9 begin	
 10   y = a & b;
 11 end
 12 
 13 endmodule
