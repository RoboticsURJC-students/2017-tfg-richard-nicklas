//////////////////////////////////////////////////////////////////////////////////
// 12MHz clock with 115200 baud
// Este codigo vale para pegarlo directamente dentro de un modulo de ICESTUDIO, 
//TODO: adaptarlo a un modulo verilog de verdad.
// 12MHz clock with 115200 baud

	 reg start = 0;         	// Registro que mantiene la señal de start para el módulo SPI.

	 reg ack;                  // Señal para terminar ejecucion
     wire busy_spi;             // Módulo SPI ocupado con una transferencia de datos.
     
     reg[7:0] leds;
     reg SSBar;
	 reg[7:0] data_spi;         // Registro con los datos que se quieren transmitir por el módulo SPI.


	reg [5:0] counter = 0;

	always @(posedge clk) begin


		// La señal start activa solo dura un ciclo de reloj.
		if (start) start = 1'b0;

		// La señal ack activa solo dura un ciclo de reloj.
		if (ack) ack = 1'b0;

		//si dimos una vuelta, paramos
     	if (counter<5'b01001) begin

	     	// Tengo que ejecutar estos pasos entiendo que uno por ciclo  
			if (counter == "0") begin
				SSBar <= 1'b0;  			// Activar el protocolo SPI en el esclavo (Bot).
		        leds[0] <= 1'b1;
			end

			/* tenemos que enviar todo esto para setear leds
			spi_array_out[0] = Address;   //8
			spi_array_out[1] = GPGSPI_MESSAGE_SET_LED; //6 (enum)
			spi_array_out[2] = led; // 0x02
			spi_array_out[3] = red; //1
			spi_array_out[4] = green; //1
			spi_array_out[5] = blue; //1
			*/

		    else if (counter == "1") begin
				data_spi <= 8'h08;          
		        if (!busy_spi) 
		            start <= 1'b1;
		        leds[5] <= 1'b1;
			end
		    else if (counter == "2") begin
				data_spi <= 8'h06;          
		        if (!busy_spi) 
		            start <= 1'b1;
		        leds[5] <= 1'b1;
			end
		    else if (counter == "3") begin
				data_spi <= 8'h02;          
		        if (!busy_spi) 
		            start <= 1'b1;
		        leds[5] <= 1'b1;
			end
		    else if (counter == "4") begin
				data_spi <= 8'h01;          
		        if (!busy_spi) 
		            start <= 1'b1;
		        leds[5] <= 1'b1;
			end
		    else if (counter == "5") begin
				data_spi <= 8'h01;          
		        if (!busy_spi) 
		            start <= 1'b1;
		        leds[5] <= 1'b1;
			end
		    else if (counter == "6") begin
				data_spi <= 8'h01;          
		        if (!busy_spi) 
		            start <= 1'b1;
		        leds[5] <= 1'b1;
			end			

			else if (counter == "7") begin
				SSBar <= 1'b1;	            // Desactivamos el esclavo una vez despierto (según sketch de S.E.Tropea para Lattuino).
		        leds[2] <= 1'b1;
			end

		    else if (counter == "8") begin 
		        leds <= 8'h00;              // No se hace nada, solo borra los leds.
	            ack <= 1'b1;         		// terminamos
		    end
		end
    end

