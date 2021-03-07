

//////////////////////////////////////////////////////////////////////////////////
// 12MHz clock with 115200 baud
// Este codigo vale para pegarlo directamente dentro de un modulo de ICESTUDIO, 
//TODO: adaptarlo a un modulo verilog de verdad.
// 12MHz clock with 115200 baud

// control module to send to SPI to turn on leds
module spi_ledctrl
(
  input            rst,
  input            clk,
  //input            MISO,
  //input      [7:0] data_flash,
  input            busy_spi,
  output reg [7:0] leds,
  //output           SCLK, // not used
  //output           MOSI, // not used
  output reg       SSBar,
  output reg       start,
  output reg       ack,
  output           ena_2clk, // ena spi, twice the frequency
  output reg [7:0] data_spi
);

   //reg start = 0;           // Registro que mantiene la señal de start para el módulo SPI.
   //reg ack;                  // Señal para terminar ejecucion
   //reg[7:0] leds;
   //reg SSBar;
   //reg[7:0] data_spi;         // Registro con los datos que se quieren transmitir por el módulo SPI.

  reg [5:0] counter;

  reg [2:0] ena_2clk_cnt;  // count to 6 for the spi clock divider
  // clk divider. Alhambra clock is 12 MHz, and having a 1MHz SCK, then 2MHz ena_2clk
  // count to 6
  always @(posedge rst, posedge clk)
  begin
    if (rst)
      ena_2clk_cnt <= 3'b0;
    else begin
      if (ena_2clk)
        ena_2clk_cnt <= 3'b0;
      else
        ena_2clk_cnt <= ena_2clk_cnt + 1;
    end
  end

  // end of the count 0 to 5: 2 MHz signal
  assign ena_2clk = (ena_2clk_cnt == 5) ? 1'b1 : 1'b0;

  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      start    <= 1'b0;
      ack      <= 1'b0;
      SSBar    <= 1'b1;  // SPI disabled  : FMS No seria el mosi_en_o del propio SPI?
      data_spi <= 7'b00000000;
      counter  <= 0;
    end
    else begin
      // La señal start activa solo dura un ciclo de reloj.
      if (start) start <= 1'b0;
      // La señal ack activa solo dura un ciclo de reloj.
      if (ack) ack <= 1'b0; //FMS: No entiendo para que se usa el ack
      //si dimos una vuelta, paramos

         // Tengo que ejecutar estos pasos entiendo que uno por ciclo  -> hay que esperar a que el SPI haya enviado
      /* tenemos que enviar todo esto para setear leds
      spi_array_out[0] = Address;   //8
      spi_array_out[1] = GPGSPI_MESSAGE_SET_LED; //6 (enum)
      spi_array_out[2] = led; // 0x02
      spi_array_out[3] = red; //1
      spi_array_out[4] = green; //1
      spi_array_out[5] = blue; //1
      */
      case (counter)
        6'd0: begin  // start sending
          SSBar <= 1'b0;        // Activar el protocolo SPI en el esclavo (Bot).
          leds[0] <= 1'b1;
          counter <= counter + 1;
        end
        6'd1: begin
          data_spi <= 8'h08;          
          if (!busy_spi) begin
            start <= 1'b1;
            leds[1] <= 1'b1;
            counter <= counter + 1;
          end
        end
        6'd2: begin
          data_spi <= 8'h06;          
          if (!busy_spi) begin
            start <= 1'b1;
            leds[2] <= 1'b1;
            counter <= counter + 1;
          end
        end
        6'd3: begin
          data_spi <= 8'h02;          
          if (!busy_spi) begin
            start <= 1'b1;
            leds[3] <= 1'b1;
            counter <= counter + 1;
          end
        end
        6'd4: begin
          data_spi <= 8'h01;          
          if (!busy_spi) begin
            start <= 1'b1;
            leds[4] <= 1'b1;
            counter <= counter + 1;
          end
        end
        6'd5: begin
          data_spi <= 8'h01;          
          if (!busy_spi) begin
            start <= 1'b1;
            leds[5] <= 1'b1;
            counter <= counter + 1;
          end
        end
        6'd6: begin
          data_spi <= 8'h01;          
          if (!busy_spi) begin
            start <= 1'b1;
            leds[6] <= 1'b1;
            counter <= counter + 1;
          end
        end
        6'd7: begin
          SSBar <= 1'b1;              // Desactivamos el esclavo una vez despierto (según sketch de S.E.Tropea para Lattuino).
          leds[0] <= 1'b0;            // FMS: igual que antes, SSBar no es el mosi_en_o que hace el modulo?
          counter <= counter + 1;
        end
        default: begin
          leds <= 8'h00;              // No se hace nada, solo borra los leds.
          ack <= 1'b1;             // terminamos
          SSBar <= 1'b1;        // Desactivar el protocolo SPI en el esclavo (Bot).
        end
      endcase
    end
  end
endmodule


