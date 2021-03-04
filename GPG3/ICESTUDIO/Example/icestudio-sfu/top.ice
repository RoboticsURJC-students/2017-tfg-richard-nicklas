{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "0fe638b0-cd6e-4aa4-b8e4-fdf03949e694",
          "type": "basic.output",
          "data": {
            "name": "leds",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1952,
            "y": -872
          }
        },
        {
          "id": "17b712f0-2569-46ca-81ba-3333583f05b3",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 192,
            "y": -832
          }
        },
        {
          "id": "79c9b69c-d3d5-4fae-b019-597eba2db925",
          "type": "basic.output",
          "data": {
            "name": "txd",
            "pins": [
              {
                "index": "0",
                "name": "TX",
                "value": "8"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1824,
            "y": -832
          }
        },
        {
          "id": "4b28c463-27b4-4ec4-9418-de3c2053a46f",
          "type": "basic.input",
          "data": {
            "name": "btn1",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 88,
            "y": -760
          }
        },
        {
          "id": "e7ee952f-29f2-446a-8c07-8d46ac1eedc5",
          "type": "basic.input",
          "data": {
            "name": "rxd",
            "pins": [
              {
                "index": "0",
                "name": "RX",
                "value": "9"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -24,
            "y": -696
          }
        },
        {
          "id": "da1c563a-61db-4d36-b8a9-01f19859073c",
          "type": "basic.output",
          "data": {
            "name": "SCLK",
            "pins": [
              {
                "index": "0",
                "name": "SCK",
                "value": "70"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1712,
            "y": -696
          }
        },
        {
          "id": "81a8c83a-090c-400e-b0ad-b279f0d12859",
          "type": "basic.input",
          "data": {
            "name": "btn2",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 88,
            "y": -624
          }
        },
        {
          "id": "980b1a05-ca77-49fa-85d1-1f71b41cdfcd",
          "type": "basic.output",
          "data": {
            "name": "MOSI",
            "pins": [
              {
                "index": "0",
                "name": "MOSI",
                "value": "68"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1824,
            "y": -624
          }
        },
        {
          "id": "cb6c34af-1c29-45d0-bb17-bb810ba4146e",
          "type": "basic.input",
          "data": {
            "name": "MISO",
            "pins": [
              {
                "index": "0",
                "name": "MISO",
                "value": "67"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -112,
            "y": -560
          }
        },
        {
          "id": "75611573-93b6-44bc-a107-d81afd1bada0",
          "type": "basic.output",
          "data": {
            "name": "SSBar",
            "pins": [
              {
                "index": "0",
                "name": "SS",
                "value": "71"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1720,
            "y": -560
          }
        },
        {
          "id": "2194d2df-c6e0-43e5-8678-e500ec48e109",
          "type": "basic.constant",
          "data": {
            "name": "DATA_W",
            "value": "8",
            "local": false
          },
          "position": {
            "x": 592,
            "y": -32
          }
        },
        {
          "id": "9e0737d5-31a2-41b0-9a2b-93ef4cfec320",
          "type": "basic.constant",
          "data": {
            "name": "div",
            "value": "104",
            "local": false
          },
          "position": {
            "x": 1032,
            "y": -48
          }
        },
        {
          "id": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
          "type": "basic.code",
          "data": {
            "code": "//////////////////////////////////////////////////////////////////////////////////\n// Company: Ridotech\n// Engineer: Juan Manuel Rico\n// \n// Create Date:    19:07:39 30/05/2017 \n// Design Name:    Pruebas Flash-SPI\n// Module Name:    top \n// Project Name:   Cold/Warn boot desde FPGA.\n// Target Devices: \n// Tool versions: \n// Description:  Pruebas para crear un módulo SPI que pueda acceder al chip flash \n//               desde la propia FPGA, poder modificar el applet de la memoria y\n//               poder utilizarla para guardar información en la misma. \n//\n// Dependencies: \"SPI_master\" (del proyecto Lattuino) y \"uart\" de otro proyecto.\n//               \n// Revision: \n// Revision 0.01 - File Created\n// Revision 0.02 - Se añaden comentarios explicativos.\n//\n// Additional Comments: \n// TODO - Hacer esquema gráfico del sistema.\n// 2017-09-03 - Las últimas pruebas se basan en el comportamiento de la UART.\n//              Para hacerlas hay que pulsar el botón 1 de la placa y activar los módulos.\n//              Cualquier tecla pulsada que no sea un número debe dar un eco.\n//              Al pulsar los números del 1 al 9 van cambiando los leds y la secuencia de\n//              acceso a la flash.\n//              Al pulsar repetidamente el número 6 deben ir apareciendo en la consola\n//              los bytes dados del ID de la flash. (los dados por \"iceprog -t\").\n//\n//////////////////////////////////////////////////////////////////////////////////\n// 12MHz clock with 115200 baud\n\n\t reg start = 0;         \t// Registro que mantiene la señal de start para el módulo SPI.\n\t wire flash_ok;             // Conexión con la interrupción del módulo SPI indicando que el registro con los datos está completo.\n                                // En nuestro caso indica que el registro de 8 bits con los datos de la flash está lista.\n\t wire ack;                  // Conexión con la señal de reconocimiento de lectura del registro de datos de la flash.\n     wire busy_spi;             // Módulo SPI ocupado con una transferencia de datos.\n\t reg[7:0] data_spi;         // Registro con los datos que se quieren transmitir por el módulo SPI.\n     reg[7:0] data_flash;       // Registro con los datos que vienen del módulo SPI desde la flash.\n \n\treg[7:0] data_in, data_out;  // Registros de la UART, registro de entrada (el que queremos enviar al PC) y salida al módulo (el que recibimos).\n\twire got_data_in;            // Señal de que hay un dato preparado para enviar (el que leemos desde la flash o el que hacemos eco).\n    wire got_data_out;           // Señal de que hay un dato preparado para leer (viene de una consola, teclado).\n    wire new_byte;               // Señal para indicar que puede usar el registro para actualizarlo con un nuevo dato leido.\n    wire ready_in;               // Señal para indicar que se completó la transferencia de escritura por UART.\n\n\talways @(posedge clk) begin\n\t\t// La señal start activa solo dura un ciclo de reloj.\n\t\tif (start) start = 1'b0;\n\n\t\t// La señal ack activa solo dura un ciclo de reloj.\n\t\tif (ack) ack = 1'b0;\n\t\t\n        // Si el byte de la uart ya ha sido enviado se prepara para el siguiente para no reenviar el mismo.\n        if (got_data_in) got_data_in = 1'b0;\n\n\t\t// En cuanto esté listo el byte de lectura de la flash se guarda y se prepara para enviar por la UART.\n\t\tif (flash_ok) begin\n\t\t\tdata_in <= data_flash;\n     \t\tif (ready_in) got_data_in <= 1'b1;\n            ack <= 1'b1;         // Ya está guardado, toma el siguiente (ack debe poner el flash_ok a cero según S.E.Tropea).\n\t\t\tleds[7] <= ~leds[7]; // Debug - Se hace parpadear el led más significativo.\n\t\tend\n\n        // Según se tenga en el puerto serie un valor (data_out del módulo UART) se realiza una acción distinta.\n        // NOTA: Cambiar este conjunto de \"if\" por \"switch..case\".\n        // NOTA2: Esto debe ser sustituido por una máquina de estados.\n \n        // Si hay un valor válido para leer del módulo UART...\n        if (got_data_out) begin\n            \n            // Si son números se realiza la secuencia de lectura.  \n\t\t\tif (data_out == \"1\") begin\n\t\t\t\tSSBar <= 1'b0;  \t\t\t// Activar el protocolo SPI en el esclavo (flash).\n\t\t        leds[0] <= 1'b1;\n\t\t\tend\n\t\t\telse if (data_out == \"2\") begin\n\t\t\t\tdata_spi <= 8'hAB;          // Enviar por SPI el comando para despertar el chip flash.\n\t\t        if (!busy_spi)            \n\t\t            start <= 1'b1;\n\t\t        leds[1] <= 1'b1;\n\t\t\tend\n\t\t\telse if (data_out == \"3\") begin\n\t\t\t\tSSBar <= 1'b1;\t            // Desactivamos el esclavo una vez despierto (según sketch de S.E.Tropea para Lattuino).\n\t\t        leds[2] <= 1'b1;\n\t\t\tend\n\t\t\telse if (data_out == \"4\") begin\n\t\t\t\tSSBar <= 1'b0;              // Activamos de nuevo el esclavo.\n\t\t        leds[3] <= 1'b1;\t\t\t\n\t\t\tend\n\t\t\telse if (data_out == \"5\") begin\n\t\t        leds[4] <= 1'b1;            // No se hace nada, solo enciende un led como debug.\n\t\t\tend\n\t\t    else if (data_out == \"6\") begin\n\t\t\t\tdata_spi <= 8'h9F;          // Se envía el comando para leer el ID de la memoria.\n                                            // En la primera pulsación se recibirá un FF, en las siguientes los valores de la\n                                            // ID que transmita la memoria (los valores obtenidos mediante \"iceprog -t\").\n\t\t        if (!busy_spi) \n\t\t            start <= 1'b1;\n\t\t        leds[5] <= 1'b1;\n\t\t\tend\n\t\t    else if (data_out == \"7\") begin\n\t\t        leds[6] <= 1'b1;            // No se hace nada, solo enciende un led como debug.\n\t\t\tend\n\t\t    else if (data_out == \"8\") begin\n\t\t        leds[7] <= ~leds[7];\t\t// No se hace nada, solo hace parpadear un led como debug.\n\t\t\tend\n\t\t    else if (data_out == \"9\") begin \n\t\t        leds <= 8'h00;              // No se hace nada, solo borra los leds.\n\t\t\tend\n\t\t\telse begin\n                // Si se pulsa cualquier otra tecla hace un eco de ella.\n\t\t\t\tdata_in <= data_out;\n\t\t \t\tgot_data_in <= got_data_out;\n\t\t\tend\n         \n            // Se le dice a la UART que ya puede leer un nuevo byte.\n            new_byte = 1'b1;           \n        end\n\tend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "btn1"
                },
                {
                  "name": "rxd"
                },
                {
                  "name": "btn2"
                },
                {
                  "name": "MISO"
                },
                {
                  "name": "data_flash",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "busy_spi"
                },
                {
                  "name": "flash_ok"
                },
                {
                  "name": "data_out",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "got_data_out"
                },
                {
                  "name": "new_byte"
                }
              ],
              "out": [
                {
                  "name": "txd"
                },
                {
                  "name": "leds",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "SCLK"
                },
                {
                  "name": "MOSI"
                },
                {
                  "name": "SSBar"
                },
                {
                  "name": "start"
                },
                {
                  "name": "data_spi",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "ack"
                },
                {
                  "name": "got_data_in"
                },
                {
                  "name": "data_in",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "ready_in"
                }
              ]
            }
          },
          "position": {
            "x": 448,
            "y": -832
          },
          "size": {
            "width": 1040,
            "height": 752
          }
        },
        {
          "id": "bcf5432d-ef26-4d04-ac0b-e804e413c7bd",
          "type": "c0b811250b3b7ded381078580a4367c56652e236",
          "position": {
            "x": 1032,
            "y": 56
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
          "type": "89890787c2bfa3552f69c479df63c46659a73a82",
          "position": {
            "x": 568,
            "y": 120
          },
          "size": {
            "width": 96,
            "height": 320
          }
        },
        {
          "id": "d5b61f0e-d5cc-42bb-9716-a06e4dbde57b",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": 56,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "eaf46324-a5e3-497b-97a6-e801d08e0049",
          "type": "862d2a36c72ddee13ea44bf906fe1b60efa90941",
          "position": {
            "x": 176,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "17b712f0-2569-46ca-81ba-3333583f05b3",
            "port": "out"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "4b28c463-27b4-4ec4-9418-de3c2053a46f",
            "port": "out"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "btn1"
          }
        },
        {
          "source": {
            "block": "e7ee952f-29f2-446a-8c07-8d46ac1eedc5",
            "port": "out"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "rxd"
          }
        },
        {
          "source": {
            "block": "81a8c83a-090c-400e-b0ad-b279f0d12859",
            "port": "out"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "btn2"
          }
        },
        {
          "source": {
            "block": "cb6c34af-1c29-45d0-bb17-bb810ba4146e",
            "port": "out"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "MISO"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "txd"
          },
          "target": {
            "block": "79c9b69c-d3d5-4fae-b019-597eba2db925",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "leds"
          },
          "target": {
            "block": "0fe638b0-cd6e-4aa4-b8e4-fdf03949e694",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "SSBar"
          },
          "target": {
            "block": "75611573-93b6-44bc-a107-d81afd1bada0",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2194d2df-c6e0-43e5-8678-e500ec48e109",
            "port": "constant-out"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "62959ac0-ef38-408b-b223-301ac65a42a3"
          }
        },
        {
          "source": {
            "block": "9e0737d5-31a2-41b0-9a2b-93ef4cfec320",
            "port": "constant-out"
          },
          "target": {
            "block": "bcf5432d-ef26-4d04-ac0b-e804e413c7bd",
            "port": "386d2838-d9e6-4645-bd5f-0ac1372ae7c0"
          }
        },
        {
          "source": {
            "block": "17b712f0-2569-46ca-81ba-3333583f05b3",
            "port": "out"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "c006ec9c-1367-4bbd-865b-c19fab70f995"
          },
          "vertices": [
            {
              "x": 312,
              "y": -48
            }
          ]
        },
        {
          "source": {
            "block": "17b712f0-2569-46ca-81ba-3333583f05b3",
            "port": "out"
          },
          "target": {
            "block": "bcf5432d-ef26-4d04-ac0b-e804e413c7bd",
            "port": "9fa89eac-053b-4417-9cff-28167a01cdf4"
          },
          "vertices": [
            {
              "x": 304,
              "y": 32
            }
          ]
        },
        {
          "source": {
            "block": "4b28c463-27b4-4ec4-9418-de3c2053a46f",
            "port": "out"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "e2542641-151a-4e22-b55f-f6841bd61c17"
          },
          "vertices": [
            {
              "x": 272,
              "y": -24
            }
          ]
        },
        {
          "source": {
            "block": "d5b61f0e-d5cc-42bb-9716-a06e4dbde57b",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "9b246993-0cc1-4390-b6e6-76ab65e824af"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "start"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "70946051-3fa0-429f-8533-d1f3a5e46b8b"
          }
        },
        {
          "source": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "45ef45f7-f947-45bf-aa44-b23940a2fcba"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "data_flash"
          },
          "size": 8
        },
        {
          "source": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "7c3357ce-47d6-46aa-b809-1c5bc8cf6e94"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "busy_spi"
          }
        },
        {
          "source": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "fb463d09-ed37-4c7f-89cc-068e0391cf25"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "flash_ok"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "ack"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "b0d30420-9b37-4db3-a259-be3db600e4e9"
          }
        },
        {
          "source": {
            "block": "eaf46324-a5e3-497b-97a6-e801d08e0049",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "860999fd-f42b-45e4-9053-6c791b233cbb"
          }
        },
        {
          "source": {
            "block": "eaf46324-a5e3-497b-97a6-e801d08e0049",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "fdd5cf01-d94f-410e-b6e9-0d09a0b0df97"
          }
        },
        {
          "source": {
            "block": "eaf46324-a5e3-497b-97a6-e801d08e0049",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "46eabf48-ccf4-4e0b-a2ae-662f944e5742"
          }
        },
        {
          "source": {
            "block": "cb6c34af-1c29-45d0-bb17-bb810ba4146e",
            "port": "out"
          },
          "target": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "a7b8f1e7-5d77-454f-adf6-90abc37d261c"
          }
        },
        {
          "source": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "2bd407f7-c808-46b6-92aa-cc358883648e"
          },
          "target": {
            "block": "da1c563a-61db-4d36-b8a9-01f19859073c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2aaefabb-84a5-4d99-aadb-dfa47381b87a",
            "port": "78add583-8e14-42bd-907b-be2cf0d8a30a"
          },
          "target": {
            "block": "980b1a05-ca77-49fa-85d1-1f71b41cdfcd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4b28c463-27b4-4ec4-9418-de3c2053a46f",
            "port": "out"
          },
          "target": {
            "block": "bcf5432d-ef26-4d04-ac0b-e804e413c7bd",
            "port": "cff6fd68-40b8-45fb-ba24-303e0db6cbfd"
          }
        },
        {
          "source": {
            "block": "e7ee952f-29f2-446a-8c07-8d46ac1eedc5",
            "port": "out"
          },
          "target": {
            "block": "bcf5432d-ef26-4d04-ac0b-e804e413c7bd",
            "port": "18405c39-449e-4ef2-9f70-f1ab131c5395"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "got_data_in"
          },
          "target": {
            "block": "bcf5432d-ef26-4d04-ac0b-e804e413c7bd",
            "port": "f3de4173-0779-4566-89ff-b32a628616ff"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "data_in"
          },
          "target": {
            "block": "bcf5432d-ef26-4d04-ac0b-e804e413c7bd",
            "port": "08d99683-c80d-4ddc-b328-59376b8e167e"
          },
          "size": 8
        }
      ]
    },
    "state": {
      "pan": {
        "x": 2.2,
        "y": 417.8531
      },
      "zoom": 0.4651
    }
  },
  "dependencies": {
    "c0b811250b3b7ded381078580a4367c56652e236": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9fa89eac-053b-4417-9cff-28167a01cdf4",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 64
              }
            },
            {
              "id": "cde40b28-0284-4807-907e-3a517c523294",
              "type": "basic.output",
              "data": {
                "name": "txd"
              },
              "position": {
                "x": 880,
                "y": 80
              }
            },
            {
              "id": "cff6fd68-40b8-45fb-ba24-303e0db6cbfd",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -80,
                "y": 136
              }
            },
            {
              "id": "6c8bb883-9d06-4daf-8f9e-acc5afcefafb",
              "type": "basic.output",
              "data": {
                "name": "rdy"
              },
              "position": {
                "x": 880,
                "y": 184
              }
            },
            {
              "id": "18405c39-449e-4ef2-9f70-f1ab131c5395",
              "type": "basic.input",
              "data": {
                "name": "rxd",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 200
              }
            },
            {
              "id": "f3de4173-0779-4566-89ff-b32a628616ff",
              "type": "basic.input",
              "data": {
                "name": "wr",
                "clock": false
              },
              "position": {
                "x": -80,
                "y": 264
              }
            },
            {
              "id": "c2c07db2-772e-4450-ad29-825ee03f64f9",
              "type": "basic.output",
              "data": {
                "name": "dout",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 880,
                "y": 280
              }
            },
            {
              "id": "08d99683-c80d-4ddc-b328-59376b8e167e",
              "type": "basic.input",
              "data": {
                "name": "din",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -192,
                "y": 336
              }
            },
            {
              "id": "b7b24bfc-edfa-4ebc-9d14-757b343bf9b8",
              "type": "basic.output",
              "data": {
                "name": "valid"
              },
              "position": {
                "x": 872,
                "y": 384
              }
            },
            {
              "id": "0026fcac-4d28-4e4b-8db2-90ba1969dfb4",
              "type": "basic.input",
              "data": {
                "name": "rd",
                "clock": false
              },
              "position": {
                "x": -72,
                "y": 400
              }
            },
            {
              "id": "386d2838-d9e6-4645-bd5f-0ac1372ae7c0",
              "type": "basic.constant",
              "data": {
                "name": "div",
                "value": "104",
                "local": false
              },
              "position": {
                "x": 408,
                "y": -72
              }
            },
            {
              "id": "196aa2a1-024d-4793-90a4-2be06bff8b66",
              "type": "basic.code",
              "data": {
                "code": "\t//parameter div = 234; // 27MHz , 115200 baud , div=234\n\t//parameter div = 104; // 12MHz , 115200 baud , div=104\n\t\n\treg[31:0] count;\n\treg[7:0] data; \n\t\n\talways @(posedge clk or posedge rst) begin\n\t\tif(rst)\tdata = 0;\n\t\telse if(wr) begin\n\t\t\t\tdata = din;\n\t\tend\n\tend\n\t\n\t\n\twire tick;\n\t\n\treg[3:0] state,n_state;\n\tparameter s0 = 0;\n\tparameter s1 = 1;\n\tparameter s2 = 2;\n\tparameter s3 = 3;\n\tparameter s4 = 4;\n\tparameter s5 = 5;\n\tparameter s6 = 6;\n\tparameter s7 = 7;\n\tparameter s8 = 8;\n\tparameter s9 = 9;\n\t\n\t\n\t\n\t\n\talways @(posedge clk or posedge rst) begin\n\t\tif(rst)\tbegin\n\t\t\tcount <= 0;\n\t\tend\n\t\telse\tbegin\n\t\t\tif(tick)\tcount <= 0;\n\t\t\telse\tcount <= count + 1;\n\t\tend\n\tend\n\tassign tick = (count == div) | (wr & (state==0));\n\t\n\t\n\talways @(posedge clk or posedge rst) begin\n\t\tif(rst)\tstate <= 0;\n\t\telse if(tick) state <= n_state;\n\tend\n\t\n\talways @(state or wr) begin\n\t\tif(state == 0) begin\n\t\t\tif(wr)\tn_state <= 1;\n\t\t\telse\tn_state <= 0;\n\t\tend\n\t\telse if(state < 10)\tn_state <= state + 1;\n\t\telse n_state <= 0;\n\tend\n\t\n\talways @(*) begin\n\t\tcase(state)\n\t\t\t4'h0: txd <= 1;\n\t\t\t4'h1: txd <= 0;\n\t\t\t4'h2: txd <= data[0];\n\t\t\t4'h3: txd <= data[1];\n\t\t\t4'h4: txd <= data[2];\n\t\t\t4'h5: txd <= data[3];\n\t\t\t4'h6: txd <= data[4];\n\t\t\t4'h7: txd <= data[5];\n\t\t\t4'h8: txd <= data[6];\n\t\t\t4'h9: txd <= data[7];\n\t\t\tdefault: txd <= 1;\n\t\tendcase\n\tend\n\t\n\tassign rdy = (state == s0);\n\t\n\t\n\t////////////////////RX Section////////////////////////////\n\treg[15:0] rx_baud_count;\n\twire rx_tick;\n\treg rx_baudgen_rst;\n\talways @(posedge clk or posedge rst) begin\n\t\tif(rst) rx_baud_count <= 0;\n\t\telse\n\t\t\tif(rx_baudgen_rst | (rx_baud_count == div))\trx_baud_count <= 0;\n\t\t\telse rx_baud_count <= rx_baud_count + 1;\n\tend\n\tassign rx_tick = (rx_baud_count == div/2);\n\t\n\treg rx_shift;\n\treg[3:0] rx_bits_rxed,rx_bits_next_rxed;\n\treg[3:0] rx_state,rx_next_state;\n\talways @(posedge clk or posedge rst) begin\n\t\tif(rst)\n\t\t\tdout <= 0;\n\t\telse\n\t\t\tif(rx_shift)\tdout <= { rxd, dout[7:1] };\n\tend\n\t\n\t\n\t\n\treg next_valid;\n\t\n\talways @(posedge clk or posedge rst) begin\n\t\tif(rst) \n\t\t\tbegin\n\t\t\t\trx_state <= 0;\n\t\t\t\trx_bits_rxed <= 0;\n\t\t\t\t\n\t\t\tend\n\t\telse\n\t\t\tbegin\n\t\t\t\trx_bits_rxed <= rx_bits_next_rxed;\n\t\t\t\trx_state <= rx_next_state;\n\t\t\t\t\n\t\t\tend\n\tend\n\t\n\talways @(*) begin\n\t\trx_next_state <= rx_state;\n\t\trx_baudgen_rst <= 0;\n\t\trx_bits_next_rxed <= rx_bits_rxed;\n\t\trx_shift <= 0;\n\t\tvalid <= 0;\n\t\tcase(rx_state)\n\t\t\t4'h0: begin\n\t\t\t\t\t\tif(rxd==0)\trx_next_state <= 1;\n\t\t\t\t\tend\n\t\t\t4'h1: begin\n\t\t\t\t\t\trx_baudgen_rst <= 1;\n\t\t\t\t\t\trx_bits_next_rxed <= 0;\n\t\t\t\t\t\trx_next_state <= 2;\n\t\t\t\t\tend\n\t\t\t4'h2: begin\n\t\t\t\t\t\tif(rx_tick) rx_next_state <= 3;\n\t\t\t\t\tend\n\t\t\t4'h3: begin\n\t\t\t\t\t\trx_shift <= 1;\n\t\t\t\t\t\trx_bits_next_rxed <= rx_bits_rxed + 1;\n\t\t\t\t\t\tif(rx_bits_rxed < 8)\trx_next_state <= 2;\n\t\t\t\t\t\telse\trx_next_state <= 4;\n\t\t\t\t\tend\n\t\t\t4'h4: begin\n\t\t\t\t\t\tif(rx_tick) rx_next_state <= 5;\n\t\t\t\t\tend\n\t\t\t4'h5: begin\n\t\t\t\t\t\tvalid <= 1;\n\t\t\t\t\t\tif(rd)\trx_next_state <= 0;\n\t\t\t\t\tend\n\t\t\tendcase\n\tend\n",
                "params": [
                  {
                    "name": "div"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "rxd"
                    },
                    {
                      "name": "wr"
                    },
                    {
                      "name": "din",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "rd"
                    }
                  ],
                  "out": [
                    {
                      "name": "txd"
                    },
                    {
                      "name": "rdy"
                    },
                    {
                      "name": "dout",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "valid"
                    }
                  ]
                }
              },
              "position": {
                "x": 192,
                "y": 64
              },
              "size": {
                "width": 528,
                "height": 400
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "cff6fd68-40b8-45fb-ba24-303e0db6cbfd",
                "port": "out"
              },
              "target": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "18405c39-449e-4ef2-9f70-f1ab131c5395",
                "port": "out"
              },
              "target": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "rxd"
              }
            },
            {
              "source": {
                "block": "f3de4173-0779-4566-89ff-b32a628616ff",
                "port": "out"
              },
              "target": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "wr"
              }
            },
            {
              "source": {
                "block": "08d99683-c80d-4ddc-b328-59376b8e167e",
                "port": "out"
              },
              "target": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "din"
              },
              "size": 8
            },
            {
              "source": {
                "block": "0026fcac-4d28-4e4b-8db2-90ba1969dfb4",
                "port": "out"
              },
              "target": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "rd"
              }
            },
            {
              "source": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "txd"
              },
              "target": {
                "block": "cde40b28-0284-4807-907e-3a517c523294",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "rdy"
              },
              "target": {
                "block": "6c8bb883-9d06-4daf-8f9e-acc5afcefafb",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "dout"
              },
              "target": {
                "block": "c2c07db2-772e-4450-ad29-825ee03f64f9",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "valid"
              },
              "target": {
                "block": "b7b24bfc-edfa-4ebc-9d14-757b343bf9b8",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "9fa89eac-053b-4417-9cff-28167a01cdf4",
                "port": "out"
              },
              "target": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "386d2838-d9e6-4645-bd5f-0ac1372ae7c0",
                "port": "constant-out"
              },
              "target": {
                "block": "196aa2a1-024d-4793-90a4-2be06bff8b66",
                "port": "div"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 177.8029,
            "y": 89.8492
          },
          "zoom": 0.645
        }
      }
    },
    "89890787c2bfa3552f69c479df63c46659a73a82": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c006ec9c-1367-4bbd-865b-c19fab70f995",
              "type": "basic.input",
              "data": {
                "name": "clk_i",
                "clock": false
              },
              "position": {
                "x": -248,
                "y": -104
              }
            },
            {
              "id": "45ef45f7-f947-45bf-aa44-b23940a2fcba",
              "type": "basic.output",
              "data": {
                "name": "rx_o",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 888,
                "y": -88
              }
            },
            {
              "id": "e2542641-151a-4e22-b55f-f6841bd61c17",
              "type": "basic.input",
              "data": {
                "name": "rst_i",
                "clock": false
              },
              "position": {
                "x": -392,
                "y": -48
              }
            },
            {
              "id": "9b246993-0cc1-4390-b6e6-76ab65e824af",
              "type": "basic.input",
              "data": {
                "name": "ena_i",
                "clock": false
              },
              "position": {
                "x": -248,
                "y": 16
              }
            },
            {
              "id": "7c3357ce-47d6-46aa-b809-1c5bc8cf6e94",
              "type": "basic.output",
              "data": {
                "name": "busy_o"
              },
              "position": {
                "x": 888,
                "y": 16
              }
            },
            {
              "id": "70946051-3fa0-429f-8533-d1f3a5e46b8b",
              "type": "basic.input",
              "data": {
                "name": "start_i",
                "clock": false
              },
              "position": {
                "x": -392,
                "y": 80
              }
            },
            {
              "id": "fb463d09-ed37-4c7f-89cc-068e0391cf25",
              "type": "basic.output",
              "data": {
                "name": "irq_o"
              },
              "position": {
                "x": 888,
                "y": 120
              }
            },
            {
              "id": "c3456877-a2a5-45a6-885e-fc787c017c9a",
              "type": "basic.input",
              "data": {
                "name": "tx_i",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -536,
                "y": 136
              }
            },
            {
              "id": "b0d30420-9b37-4db3-a259-be3db600e4e9",
              "type": "basic.input",
              "data": {
                "name": "ack_i",
                "clock": false
              },
              "position": {
                "x": -392,
                "y": 200
              }
            },
            {
              "id": "2bd407f7-c808-46b6-92aa-cc358883648e",
              "type": "basic.output",
              "data": {
                "name": "sclk_o"
              },
              "position": {
                "x": 888,
                "y": 216
              }
            },
            {
              "id": "860999fd-f42b-45e4-9053-6c791b233cbb",
              "type": "basic.input",
              "data": {
                "name": "cpol_i",
                "clock": false
              },
              "position": {
                "x": -248,
                "y": 256
              }
            },
            {
              "id": "fdd5cf01-d94f-410e-b6e9-0d09a0b0df97",
              "type": "basic.input",
              "data": {
                "name": "dord_i",
                "clock": false
              },
              "position": {
                "x": -392,
                "y": 320
              }
            },
            {
              "id": "c5bbe034-e74f-44bb-ba42-bc31be4540e0",
              "type": "basic.output",
              "data": {
                "name": "mosi_en_o"
              },
              "position": {
                "x": 888,
                "y": 320
              }
            },
            {
              "id": "46eabf48-ccf4-4e0b-a2ae-662f944e5742",
              "type": "basic.input",
              "data": {
                "name": "cpha_i",
                "clock": false
              },
              "position": {
                "x": -248,
                "y": 384
              }
            },
            {
              "id": "78add583-8e14-42bd-907b-be2cf0d8a30a",
              "type": "basic.output",
              "data": {
                "name": "mosi_o"
              },
              "position": {
                "x": 888,
                "y": 424
              }
            },
            {
              "id": "a7b8f1e7-5d77-454f-adf6-90abc37d261c",
              "type": "basic.input",
              "data": {
                "name": "miso_i",
                "clock": false
              },
              "position": {
                "x": -384,
                "y": 440
              }
            },
            {
              "id": "62959ac0-ef38-408b-b223-301ac65a42a3",
              "type": "basic.constant",
              "data": {
                "name": "DATA_W",
                "value": "8",
                "local": false
              },
              "position": {
                "x": 296,
                "y": -248
              }
            },
            {
              "id": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
              "type": "basic.code",
              "data": {
                "code": "/***********************************************************************\n\n  SPI Master\n\n  This file is part FPGA Libre project http://fpgalibre.sf.net/\n\n  Description:\n  Configurable Master Serial Protocol Interface controller.\n  This is different than SPI_controller:\n  - Modes can be configured with signals, not just generics.\n  - The SS logic is left to the upper level.\n  - We always return to IDLE before transmitting again.\n  - IMPORTANT! assumes that start_i resets the ena_i generator. In\n    this way start_i can last 1 clock cycle (no need to wait for\n    busy_o to become 1).\n\n  To Do:\n  -\n\n  Author:\n    - Salvador E. Tropea, salvador en inti gob ar\n\n------------------------------------------------------------------------------\n\n Copyright (c) 2017 Salvador E. Tropea <salvador en inti gob ar>\n Copyright (c) 2017 Instituto Nacional de Tecnología Industrial\n\n Distributed under the GPL v2 or newer license\n\n------------------------------------------------------------------------------\n\n Design unit:      SPI_Master(RTL) (Entity and architecture)\n File name:        spi_master.v\n Note:             None\n Limitations:      None known\n Errors:           None known\n Library:          None\n Dependencies:     IEEE.std_logic_1164\n                   IEEE.numeric_std\n Target FPGA:\n Language:         Verilog\n Wishbone:         None\n Synthesis tools:\n Simulation tools: GHDL [Sokcho edition] (0.2x)\n Text editor:      SETEdit 0.5.x\n\n***********************************************************************/\nlocalparam integer CNT_BITS=$clog2(DATA_W);\nlocalparam IDLE=0, LEADING_SCLK=1, TRAILING_SCLK=2, STOP=3; // state_t\n\nreg  [DATA_W-1:0] reg_r=0;\nreg  sclk_r=0;\nreg  [CNT_BITS-1:0] bit_cnt=0;\nreg  [1:0] state=IDLE; // states for shifter_FSM.\nreg  miso_r; // Sampled MISO\n\nalways @(posedge clk_i)\nbegin : shifter_FSM\n  if (rst_i)\n     begin\n     state  <= IDLE;\n     sclk_r <= 0;\n     irq_o  <= 0;\n     end\n  else\n     begin\n     if (ack_i)\n        irq_o <= 0;\n     case (state)\n        IDLE:\n          if (start_i) // init transaction\n             begin\n             state   <= LEADING_SCLK;\n             reg_r   <= tx_i;\n             bit_cnt <= 0;\n             end\n        LEADING_SCLK:\n          if (ena_i)\n             begin\n             state  <= TRAILING_SCLK;\n             sclk_r <= !sclk_r;\n             if (!cpha_i) // Leading sample\n                miso_r <= miso_i;\n             end\n        TRAILING_SCLK:\n          if (ena_i)\n             begin\n             sclk_r <= !sclk_r;\n             if (bit_cnt==DATA_W-1)\n                begin\n                state <= STOP;\n                bit_cnt <= 0;\n                end\n             else\n                begin\n                state <= LEADING_SCLK;\n                bit_cnt <= bit_cnt+1;\n                end\n             if (cpha_i) // Leading sample\n                miso_r <= miso_i;\n             end\n        default: // STOP\n          // Maintain the last bit for half the clock to finish\n          // If we don't do it we could violate the slave hold time\n          if (ena_i)\n             begin\n             irq_o <= 1;\n             state <= IDLE;\n             end\n     endcase\n     // Shift in cases\n     if (ena_i)\n        if (  (state==TRAILING_SCLK && !cpha_i) ||\n            (((state==LEADING_SCLK && bit_cnt) || state==STOP) && cpha_i))\n           begin\n           // Shift\n           if (dord_i)\n              // Right\n              reg_r <= {miso_r,reg_r[DATA_W-1:1]};\n           else\n              // Left\n              reg_r <= {reg_r[DATA_W-2:0],miso_r};\n           end\n     end // !rst_i\nend // shifter_FSM\n\n// The FSM generates CPOL=0, if CPOL is 1 we just invert\nassign sclk_o=sclk_r^cpol_i;\n// MOSI takes the LSB or MSB according to DORD\nassign mosi_o=dord_i ? reg_r[0] : reg_r[DATA_W-1];\nassign mosi_en_o=state!=IDLE;\nassign rx_o=reg_r;\nassign busy_o=state!=IDLE;\n",
                "params": [
                  {
                    "name": "DATA_W"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_i"
                    },
                    {
                      "name": "rst_i"
                    },
                    {
                      "name": "ena_i"
                    },
                    {
                      "name": "start_i"
                    },
                    {
                      "name": "tx_i",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "ack_i"
                    },
                    {
                      "name": "cpo_i"
                    },
                    {
                      "name": "dord_i"
                    },
                    {
                      "name": "cpha_i"
                    },
                    {
                      "name": "miso_i"
                    }
                  ],
                  "out": [
                    {
                      "name": "rx_o",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "busy_o"
                    },
                    {
                      "name": "irq_o"
                    },
                    {
                      "name": "sclk_o"
                    },
                    {
                      "name": "mosi_en_o"
                    },
                    {
                      "name": "mosi_o"
                    }
                  ]
                }
              },
              "position": {
                "x": -16,
                "y": -104
              },
              "size": {
                "width": 720,
                "height": 608
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c006ec9c-1367-4bbd-865b-c19fab70f995",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "clk_i"
              }
            },
            {
              "source": {
                "block": "e2542641-151a-4e22-b55f-f6841bd61c17",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "rst_i"
              }
            },
            {
              "source": {
                "block": "9b246993-0cc1-4390-b6e6-76ab65e824af",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "ena_i"
              }
            },
            {
              "source": {
                "block": "70946051-3fa0-429f-8533-d1f3a5e46b8b",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "start_i"
              }
            },
            {
              "source": {
                "block": "c3456877-a2a5-45a6-885e-fc787c017c9a",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "tx_i"
              },
              "size": 8
            },
            {
              "source": {
                "block": "b0d30420-9b37-4db3-a259-be3db600e4e9",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "ack_i"
              }
            },
            {
              "source": {
                "block": "860999fd-f42b-45e4-9053-6c791b233cbb",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "cpo_i"
              }
            },
            {
              "source": {
                "block": "fdd5cf01-d94f-410e-b6e9-0d09a0b0df97",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "dord_i"
              }
            },
            {
              "source": {
                "block": "46eabf48-ccf4-4e0b-a2ae-662f944e5742",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "cpha_i"
              }
            },
            {
              "source": {
                "block": "a7b8f1e7-5d77-454f-adf6-90abc37d261c",
                "port": "out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "miso_i"
              }
            },
            {
              "source": {
                "block": "62959ac0-ef38-408b-b223-301ac65a42a3",
                "port": "constant-out"
              },
              "target": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "DATA_W"
              }
            },
            {
              "source": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "busy_o"
              },
              "target": {
                "block": "7c3357ce-47d6-46aa-b809-1c5bc8cf6e94",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "rx_o"
              },
              "target": {
                "block": "45ef45f7-f947-45bf-aa44-b23940a2fcba",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "mosi_o"
              },
              "target": {
                "block": "78add583-8e14-42bd-907b-be2cf0d8a30a",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "mosi_en_o"
              },
              "target": {
                "block": "c5bbe034-e74f-44bb-ba42-bc31be4540e0",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "sclk_o"
              },
              "target": {
                "block": "2bd407f7-c808-46b6-92aa-cc358883648e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "108ba2e6-ace7-4f1e-acb4-b95d0905b85a",
                "port": "irq_o"
              },
              "target": {
                "block": "fb463d09-ed37-4c7f-89cc-068e0391cf25",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 305.5888,
            "y": 200.6978
          },
          "zoom": 0.5181
        }
      }
    },
    "3e6c249e205080168c1bf4ee8dbc33b50653d5f4": {
      "package": {
        "name": "Bit 1",
        "version": "1.0.0",
        "description": "Assign 1 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 1\n\nassign v = 1'b1;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              }
            },
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "862d2a36c72ddee13ea44bf906fe1b60efa90941": {
      "package": {
        "name": "Bit 0",
        "version": "1.0.0",
        "description": "Assign 0 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 0\n\nassign v = 1'b0;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              }
            },
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    }
  }
}