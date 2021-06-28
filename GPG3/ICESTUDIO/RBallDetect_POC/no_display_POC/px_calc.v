//------------------------------------------------------------------------------
//   Richard A. Nicklas
//
//   px_calc.v
//   light leds depending on pixel position on frame
//   
//

module px_calc
  # (parameter

      c_img_cols    = 80, // 7 bits
      c_img_rows    = 60, //  6 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls =  13,  //80*60=4800 -> 2^13

    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)
    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)
    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)
    // word width of the memory (buffer)
    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue,
    // position of the most significant bits of each color
    c_msb_blue  = c_nb_buf_blue-1,
    c_msb_red   = c_nb_buf-1,
    c_msb_green = c_msb_blue + c_nb_buf_green
  )
  (
    input          rst,       //reset, active high
    input          clk,       //fpga clock
    input  [2:0]   rgbfilter, // color filter to be applied


    input [c_nb_img_pxls-1:0] proc_addr, // address of processed pixel
    input [c_nb_buf-1:0]  orig_pxl, // processed pixel to be written

    output [7:0] leds
  );

  reg [7:0] r_leds;

  wire end_pxl_cnt;
  wire end_ln;
  wire tmpw;


  reg [5:0] histograma [79:0];


  integer col;
  integer prev_high;
  integer i; 
  integer px_pos;

  integer tmp;

  assign end_pxl_cnt = (proc_addr == c_img_pxls-1) ? 1'b1 : 1'b0;

  //wire para contar hasta 80
  assign end_ln = (px_pos == c_img_cols-1)? 1'b1 : 1'b0;
  //aqui intento hacer la comprobacion para asignar un nuevo maximo a prev_high


//Contador hasta 80 (ancho de imagen)
always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin   
      px_pos <=0;
    end 
    else if (end_ln) begin
      px_pos <= 0;
    end
    else begin
      px_pos <= px_pos +1;
    end 
end

//según col enviamos la salida por r_leds
always @ (posedge clk, posedge rst) 
begin
  if (rst) begin   
    r_leds <= 8'b00000000; 
  end
  else begin
    if (col < 9) begin
      r_leds <= 8'b10000000;
    end
    else if (col <19) begin
      r_leds <= 8'b01000000;
    end      
    else if (col <29) begin
      r_leds <= 8'b00100000;
    end
    else if (col <39) begin
      r_leds <= 8'b00010000;
    end      
    else if (col <49) begin
      r_leds <= 8'b00001000;
    end      
    else if (col <59) begin   
      r_leds <= 8'b00000100;
    end    
    else if (col <69) begin
      r_leds <= 8'b00000010;
    end      
    else begin
      r_leds <= 8'b00000001;     
    end     
  end
end

//reg [5:0] histograma [79:0];
//histograma almacena los pixeles rojos en cada columna, se resetea cada frame
always @ (posedge clk, posedge rst) 
begin
  if (rst) begin  
    for(i=0;i<=79;i=i+1) begin
      histograma[i] <= 0;      
    end
  end 
  else if (end_pxl_cnt) begin
    for(i=0;i<=79;i=i+1) begin
      histograma[i] <= 0;      
    end
  end
  else begin
   case (rgbfilter)
      3'b000: // no filter, output same as input
        histograma[px_pos] <= histograma[px_pos] + 1;

      3'b100: begin // red filter
        if (orig_pxl[c_msb_red])
          histograma[px_pos] <= histograma[px_pos] + 1;
      end
      3'b010: begin // green filter
        if (orig_pxl[c_msb_green])
          histograma[px_pos] <= histograma[px_pos] + 1;
      end
      3'b001: begin // filter blue
        if (orig_pxl[c_msb_blue])
          histograma[px_pos] <= histograma[px_pos] + 1;
      end
      3'b110: begin // filter red and green
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green])
          histograma[px_pos] <= histograma[px_pos] + 1;
      end
      3'b101: begin // filter red and blue
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_blue])
          histograma[px_pos] <= histograma[px_pos] + 1;
      end
      3'b011: begin // filter green and blue
        if (orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          histograma[px_pos] <= histograma[px_pos] + 1;
      end
      3'b111: begin // red, green and blue filter
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          histograma[px_pos] <= histograma[px_pos] + 1;
      end
    endcase
  end
end

  assign tmpw = (prev_high < histograma[px_pos])? 1'b1 : 1'b0;

//Si prev_high < el valor actual del histograma (tmpw) asignamos el nuevo maximo
// y guardamos la columna en col

  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin   
      prev_high <=0;
      col <=0;
    end      
    else if(tmpw) begin
        prev_high <= histograma[px_pos];
        col <= px_pos;
     end 
  end


  assign leds = r_leds;

endmodule
