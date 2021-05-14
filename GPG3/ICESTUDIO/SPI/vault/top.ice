{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
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
                "name": "LED0",
                "value": "45"
              },
              {
                "index": "6",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "5",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "4",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "3",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "2",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "1",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "0",
                "name": "LED7",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1320,
            "y": -944
          }
        },
        {
          "id": "2954c7f5-2660-41e7-8339-3f87a0e79639",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "49"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": -288,
            "y": -720
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
                "name": "D4",
                "value": "8"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1248,
            "y": -640
          }
        },
        {
          "id": "88766357-8742-4d3b-88a7-2db303571b57",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "34"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -352,
            "y": -560
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
                "name": "D1",
                "value": "1"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -512,
            "y": -304
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
                "name": "D0",
                "value": "2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 912,
            "y": 168
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
                "name": "D2",
                "value": "4"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 832,
            "y": 280
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
            "x": 216,
            "y": -200
          }
        },
        {
          "id": "eaf46324-a5e3-497b-97a6-e801d08e0049",
          "type": "862d2a36c72ddee13ea44bf906fe1b60efa90941",
          "position": {
            "x": -360,
            "y": 224
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
          "type": "83e08ef8135e69f2140b2061a033c32bb71c5576",
          "position": {
            "x": 216,
            "y": 16
          },
          "size": {
            "width": 96,
            "height": 320
          }
        },
        {
          "id": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
          "type": "basic.code",
          "data": {
<<<<<<< Updated upstream
            "code": "// @include spi_ledctrl.v\r\n\r\nspi_ledctrl i_spi_ledctrl\r\n(\r\n  .rst         (rst),\r\n  .clk         (clk),\r\n  //.MISO        (MISO),\r\n  //.data_flash  (data_flash),\r\n  .busy_spi    (busy_spi),\r\n  .leds        (leds),\r\n  //.SCLK        (SCLK),\r\n  //.MOSI        (MOSI),\r\n  .SSBar       (SSBar),\r\n  .start       (start),\r\n  .data_spi    (data_spi),\r\n  .ack         (ack)\r\n);",
=======
            "code": "\r\n\r\n//////////////////////////////////////////////////////////////////////////////////\r\n// 12MHz clock with 115200 baud\r\n// Este codigo vale para pegarlo directamente dentro de un modulo de ICESTUDIO, \r\n//TODO: adaptarlo a un modulo verilog de verdad.\r\n// 12MHz clock with 115200 baud\r\n\r\n\t reg start = 0;         \t// Registro que mantiene la señal de start para el módulo SPI.\r\n\r\n\t reg ack;                  // Señal para terminar ejecucion\r\n     wire busy_spi;             // Módulo SPI ocupado con una transferencia de datos.\r\n     \r\n     reg[7:0] leds;\r\n     reg SSBar;\r\n\t reg[7:0] data_spi;         // Registro con los datos que se quieren transmitir por el módulo SPI.\r\n\r\n\r\n\treg [5:0] counter = 0;\r\n\r\n\talways @(posedge clk) begin\r\n\r\n\r\n\t\t// La señal start activa solo dura un ciclo de reloj.\r\n\t\tif (start) start = 1'b0;\r\n\r\n\t\t// La señal ack activa solo dura un ciclo de reloj.\r\n\t\tif (ack) ack = 1'b0;\r\n\r\n\t\t//si dimos una vuelta, paramos\r\n     \tif (counter<5'b01001) begin\r\n\r\n\t     \t// Tengo que ejecutar estos pasos entiendo que uno por ciclo  \r\n\t\t\tif (counter == \"0\") begin\r\n\t\t\t\tSSBar <= 1'b0;  \t\t\t// Activar el protocolo SPI en el esclavo (Bot).\r\n\t\t        leds[0] <= 1'b1;\r\n\t\t\tend\r\n\r\n\t\t\t/* tenemos que enviar todo esto para setear leds\r\n\t\t\tspi_array_out[0] = Address;   //8\r\n\t\t\tspi_array_out[1] = GPGSPI_MESSAGE_SET_LED; //6 (enum)\r\n\t\t\tspi_array_out[2] = led; // 0x02\r\n\t\t\tspi_array_out[3] = red; //1\r\n\t\t\tspi_array_out[4] = green; //1\r\n\t\t\tspi_array_out[5] = blue; //1\r\n\t\t\t*/\r\n\r\n\t\t    else if (counter == \"1\") begin\r\n\t\t\t\tdata_spi <= 8'h08;          \r\n\t\t        if (!busy_spi) \r\n\t\t            start <= 1'b1;\r\n\t\t        leds[1] <= 1'b1;\r\n\t\t\tend\r\n\t\t    else if (counter == \"2\") begin\r\n\t\t\t\tdata_spi <= 8'h06;          \r\n\t\t        if (!busy_spi) \r\n\t\t            start <= 1'b1;\r\n\t\t        leds[2] <= 1'b1;\r\n\t\t\tend\r\n\t\t    else if (counter == \"3\") begin\r\n\t\t\t\tdata_spi <= 8'h02;          \r\n\t\t        if (!busy_spi) \r\n\t\t            start <= 1'b1;\r\n\t\t        leds[3] <= 1'b1;\r\n\t\t\tend\r\n\t\t    else if (counter == \"4\") begin\r\n\t\t\t\tdata_spi <= 8'h01;          \r\n\t\t        if (!busy_spi) \r\n\t\t            start <= 1'b1;\r\n\t\t        leds[4] <= 1'b1;\r\n\t\t\tend\r\n\t\t    else if (counter == \"5\") begin\r\n\t\t\t\tdata_spi <= 8'h01;          \r\n\t\t        if (!busy_spi) \r\n\t\t            start <= 1'b1;\r\n\t\t        leds[5] <= 1'b1;\r\n\t\t\tend\r\n\t\t    else if (counter == \"6\") begin\r\n\t\t\t\tdata_spi <= 8'h01;          \r\n\t\t        if (!busy_spi) \r\n\t\t            start <= 1'b1;\r\n\t\t        leds[6] <= 1'b1;\r\n\t\t\tend\t\t\t\r\n\r\n\t\t\telse if (counter == \"7\") begin\r\n\t\t\t\tSSBar <= 1'b1;\t            // Desactivamos el esclavo una vez despierto (según sketch de S.E.Tropea para Lattuino).\r\n\t\t        leds[0] <= 1'b0;\r\n\t\t\tend\r\n\r\n\t\t    else if (counter == \"8\") begin \r\n\t\t        leds <= 8'h00;              // No se hace nada, solo borra los leds.\r\n\t            ack <= 1'b1;         \t\t// terminamos\r\n\t       \t\tSSBar <= 1'b1;  \t\t\t// Desactivar el protocolo SPI en el esclavo (Bot).\r\n     \r\n\t\t    end\r\n\t\tend\r\n\t\t\r\n\t\tcounter <= counter + 1'b1;\r\n    end\r\n\r\n",
>>>>>>> Stashed changes
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
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
                }
              ],
              "out": [
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
                  "name": "ack"
                },
                {
                  "name": "ena_2clk"
                },
                {
                  "name": "data_spi",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 448,
            "y": -832
          },
          "size": {
            "width": 600,
            "height": 440
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "cb6c34af-1c29-45d0-bb17-bb810ba4146e",
            "port": "out"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "MISO"
          },
          "vertices": [
            {
              "x": 272,
              "y": -408
            }
          ]
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
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "62959ac0-ef38-408b-b223-301ac65a42a3"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "start"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "70946051-3fa0-429f-8533-d1f3a5e46b8b"
          },
          "vertices": [
            {
              "x": 112,
              "y": 384
            }
          ]
        },
        {
          "source": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "7c3357ce-47d6-46aa-b809-1c5bc8cf6e94"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "busy_spi"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "ack"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "b0d30420-9b37-4db3-a259-be3db600e4e9"
          },
          "vertices": [
            {
              "x": -136,
              "y": -320
            }
          ]
        },
        {
          "source": {
            "block": "eaf46324-a5e3-497b-97a6-e801d08e0049",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "860999fd-f42b-45e4-9053-6c791b233cbb"
          }
        },
        {
          "source": {
            "block": "eaf46324-a5e3-497b-97a6-e801d08e0049",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "fdd5cf01-d94f-410e-b6e9-0d09a0b0df97"
          }
        },
        {
          "source": {
            "block": "eaf46324-a5e3-497b-97a6-e801d08e0049",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "46eabf48-ccf4-4e0b-a2ae-662f944e5742"
          }
        },
        {
          "source": {
            "block": "cb6c34af-1c29-45d0-bb17-bb810ba4146e",
            "port": "out"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "a7b8f1e7-5d77-454f-adf6-90abc37d261c"
          },
          "vertices": [
            {
              "x": 32,
              "y": -120
            }
          ]
        },
        {
          "source": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "2bd407f7-c808-46b6-92aa-cc358883648e"
          },
          "target": {
            "block": "da1c563a-61db-4d36-b8a9-01f19859073c",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "78add583-8e14-42bd-907b-be2cf0d8a30a"
          },
          "target": {
            "block": "980b1a05-ca77-49fa-85d1-1f71b41cdfcd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "data_spi"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "c3456877-a2a5-45a6-885e-fc787c017c9a"
          },
          "vertices": [
            {
              "x": 368,
              "y": -56
            },
            {
              "x": 256,
              "y": -56
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "88766357-8742-4d3b-88a7-2db303571b57",
            "port": "out"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "rst"
          },
          "vertices": [
            {
              "x": -40,
              "y": -752
            }
          ]
        },
        {
          "source": {
            "block": "88766357-8742-4d3b-88a7-2db303571b57",
            "port": "out"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "e2542641-151a-4e22-b55f-f6841bd61c17"
          },
          "vertices": [
            {
              "x": 96,
              "y": -224
            }
          ]
        },
        {
          "source": {
            "block": "2954c7f5-2660-41e7-8339-3f87a0e79639",
            "port": "out"
          },
          "target": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "2954c7f5-2660-41e7-8339-3f87a0e79639",
            "port": "out"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "c006ec9c-1367-4bbd-865b-c19fab70f995"
          }
        },
        {
          "source": {
            "block": "5ab45a35-ae03-4a13-ac75-55602a35fdf5",
            "port": "ena_2clk"
          },
          "target": {
            "block": "ad62d2d2-f30a-451c-a7dd-f710d856410e",
            "port": "9b246993-0cc1-4390-b6e6-76ab65e824af"
          },
          "vertices": [
            {
              "x": 128,
              "y": -336
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
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
        }
      }
    },
    "83e08ef8135e69f2140b2061a033c32bb71c5576": {
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
                "code": "/***********************************************************************\n\n  SPI Master\n\n  This file is part FPGA Libre project http://fpgalibre.sf.net/\n\n  Description:\n  Configurable Master Serial Protocol Interface controller.\n  This is different than SPI_controller:\n  - Modes can be configured with signals, not just generics.\n  - The SS logic is left to the upper level.\n  - We always return to IDLE before transmitting again.\n  - IMPORTANT! assumes that start_i resets the ena_i generator. In\n    this way start_i can last 1 clock cycle (no need to wait for\n    busy_o to become 1).\n\n  To Do:\n  -\n\n  Author:\n    - Salvador E. Tropea, salvador en inti gob ar\n\n------------------------------------------------------------------------------\n\n Copyright (c) 2017 Salvador E. Tropea <salvador en inti gob ar>\n Copyright (c) 2017 Instituto Nacional de Tecnología Industrial\n\n Distributed under the GPL v2 or newer license\n\n------------------------------------------------------------------------------\n\n Design unit:      SPI_Master(RTL) (Entity and architecture)\n File name:        spi_master.v\n Note:             None\n Limitations:      None known\n Errors:           None known\n Library:          None\n Dependencies:     IEEE.std_logic_1164\n                   IEEE.numeric_std\n Target FPGA:\n Language:         Verilog\n Wishbone:         None\n Synthesis tools:\n Simulation tools: GHDL [Sokcho edition] (0.2x)\n Text editor:      SETEdit 0.5.x\n\n***********************************************************************/\n//localparam integer CNT_BITS=$clog2(DATA_W);\nlocalparam integer CNT_BITS=3;\nlocalparam IDLE=0, LEADING_SCLK=1, TRAILING_SCLK=2, STOP=3; // state_t\n\nreg  [DATA_W-1:0] reg_r=0;\nreg  sclk_r=0;\nwire  sclk_o=0;\nreg  [CNT_BITS-1:0] bit_cnt=0;\nreg  [1:0] state=IDLE; // states for shifter_FSM.\nreg  miso_r; // Sampled MISO\nreg  irq_o;\n\nalways @(posedge clk_i)\nbegin : shifter_FSM\n  if (rst_i)\n     begin\n     state  <= IDLE;\n     sclk_r <= 0;\n     irq_o  <= 0;\n     end\n  else\n     begin\n     if (ack_i)\n        irq_o <= 0;\n     case (state)\n        IDLE:\n          if (start_i) // init transaction\n             begin\n             state   <= LEADING_SCLK;\n             reg_r   <= tx_i;\n             bit_cnt <= 0;\n             end\n        LEADING_SCLK:\n          if (ena_i)\n             begin\n             state  <= TRAILING_SCLK;\n             sclk_r <= !sclk_r;\n             if (!cpha_i) // Leading sample\n                miso_r <= miso_i;\n             end\n        TRAILING_SCLK:\n          if (ena_i)\n             begin\n             sclk_r <= !sclk_r;\n             if (bit_cnt==DATA_W-1)\n                begin\n                state <= STOP;\n                bit_cnt <= 0;\n                end\n             else\n                begin\n                state <= LEADING_SCLK;\n                bit_cnt <= bit_cnt+1;\n                end\n             if (cpha_i) // Leading sample\n                miso_r <= miso_i;\n             end\n        default: // STOP\n          // Maintain the last bit for half the clock to finish\n          // If we don't do it we could violate the slave hold time\n          if (ena_i)\n             begin\n             irq_o <= 1;\n             state <= IDLE;\n             end\n     endcase\n     // Shift in cases\n     if (ena_i)\n        if (  (state==TRAILING_SCLK && !cpha_i) ||\n            (((state==LEADING_SCLK && bit_cnt) || state==STOP) && cpha_i))\n           begin\n           // Shift\n           if (dord_i)\n              // Right\n              reg_r <= {miso_r,reg_r[DATA_W-1:1]};\n           else\n              // Left\n              reg_r <= {reg_r[DATA_W-2:0],miso_r};\n           end\n     end // !rst_i\nend // shifter_FSM\n\n// The FSM generates CPOL=0, if CPOL is 1 we just invert\nassign sclk_o=clk_i;\n// MOSI takes the LSB or MSB according to DORD\nassign mosi_o=dord_i ? reg_r[0] : reg_r[DATA_W-1];\nassign mosi_en_o=state!=IDLE;\nassign rx_o=reg_r;\nassign busy_o=state!=IDLE;\n",
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
        }
      }
    }
  }
}