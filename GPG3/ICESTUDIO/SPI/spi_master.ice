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
          "id": "c006ec9c-1367-4bbd-865b-c19fab70f995",
          "type": "basic.input",
          "data": {
            "name": "clk_i",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": 0
              },
              {
                "index": "6",
                "name": "",
                "value": 0
              },
              {
                "index": "5",
                "name": "",
                "value": 0
              },
              {
                "index": "4",
                "name": "",
                "value": 0
              },
              {
                "index": "3",
                "name": "",
                "value": 0
              },
              {
                "index": "2",
                "name": "",
                "value": 0
              },
              {
                "index": "1",
                "name": "",
                "value": 0
              },
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "name": "busy_o",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "name": "irq_o",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": 0
              },
              {
                "index": "6",
                "name": "",
                "value": 0
              },
              {
                "index": "5",
                "name": "",
                "value": 0
              },
              {
                "index": "4",
                "name": "",
                "value": 0
              },
              {
                "index": "3",
                "name": "",
                "value": 0
              },
              {
                "index": "2",
                "name": "",
                "value": 0
              },
              {
                "index": "1",
                "name": "",
                "value": 0
              },
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
            "clock": false
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "name": "sclk_o",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "name": "mosi_en_o",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "name": "mosi_o",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
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
            "code": "/***********************************************************************\n\n  SPI Master\n\n  This file is part FPGA Libre project http://fpgalibre.sf.net/\n\n  Description:\n  Configurable Master Serial Protocol Interface controller.\n  This is different than SPI_controller:\n  - Modes can be configured with signals, not just generics.\n  - The SS logic is left to the upper level.\n  - We always return to IDLE before transmitting again.\n  - IMPORTANT! assumes that start_i resets the ena_i generator. In\n    this way start_i can last 1 clock cycle (no need to wait for\n    busy_o to become 1).\n\n  To Do:\n  -\n\n  Author:\n    - Salvador E. Tropea, salvador en inti gob ar\n\n------------------------------------------------------------------------------\n\n Copyright (c) 2017 Salvador E. Tropea <salvador en inti gob ar>\n Copyright (c) 2017 Instituto Nacional de Tecnología Industrial\n\n Distributed under the GPL v2 or newer license\n\n------------------------------------------------------------------------------\n\n Design unit:      SPI_Master(RTL) (Entity and architecture)\n File name:        spi_master.v\n Note:             None\n Limitations:      None known\n Errors:           None known\n Library:          None\n Dependencies:     IEEE.std_logic_1164\n                   IEEE.numeric_std\n Target FPGA:\n Language:         Verilog\n Wishbone:         None\n Synthesis tools:\n Simulation tools: GHDL [Sokcho edition] (0.2x)\n Text editor:      SETEdit 0.5.x\n\n***********************************************************************/\nlocalparam integer CNT_BITS=$clog2(DATA_W);\nlocalparam IDLE=0, LEADING_SCLK=1, TRAILING_SCLK=2, STOP=3; // state_t\n\nreg  [DATA_W-1:0] reg_r=0;\nreg  sclk_r=0;\nwire  sclk_o=0;\nreg  [CNT_BITS-1:0] bit_cnt=0;\nreg  [1:0] state=IDLE; // states for shifter_FSM.\nreg  miso_r; // Sampled MISO\nreg  irq_o;\n\nalways @(posedge clk_i)\nbegin : shifter_FSM\n  if (rst_i)\n     begin\n     state  <= IDLE;\n     sclk_r <= 0;\n     irq_o  <= 0;\n     end\n  else\n     begin\n     if (ack_i)\n        irq_o <= 0;\n     case (state)\n        IDLE:\n          if (start_i) // init transaction\n             begin\n             state   <= LEADING_SCLK;\n             reg_r   <= tx_i;\n             bit_cnt <= 0;\n             end\n        LEADING_SCLK:\n          if (ena_i)\n             begin\n             state  <= TRAILING_SCLK;\n             sclk_r <= !sclk_r;\n             if (!cpha_i) // Leading sample\n                miso_r <= miso_i;\n             end\n        TRAILING_SCLK:\n          if (ena_i)\n             begin\n             sclk_r <= !sclk_r;\n             if (bit_cnt==DATA_W-1)\n                begin\n                state <= STOP;\n                bit_cnt <= 0;\n                end\n             else\n                begin\n                state <= LEADING_SCLK;\n                bit_cnt <= bit_cnt+1;\n                end\n             if (cpha_i) // Leading sample\n                miso_r <= miso_i;\n             end\n        default: // STOP\n          // Maintain the last bit for half the clock to finish\n          // If we don't do it we could violate the slave hold time\n          if (ena_i)\n             begin\n             irq_o <= 1;\n             state <= IDLE;\n             end\n     endcase\n     // Shift in cases\n     if (ena_i)\n        if (  (state==TRAILING_SCLK && !cpha_i) ||\n            (((state==LEADING_SCLK && bit_cnt) || state==STOP) && cpha_i))\n           begin\n           // Shift\n           if (dord_i)\n              // Right\n              reg_r <= {miso_r,reg_r[DATA_W-1:1]};\n           else\n              // Left\n              reg_r <= {reg_r[DATA_W-2:0],miso_r};\n           end\n     end // !rst_i\nend // shifter_FSM\n\n// The FSM generates CPOL=0, if CPOL is 1 we just invert\nassign sclk_o=clk_i;\n// MOSI takes the LSB or MSB according to DORD\nassign mosi_o=dord_i ? reg_r[0] : reg_r[DATA_W-1];\nassign mosi_en_o=state!=IDLE;\nassign rx_o=reg_r;\nassign busy_o=state!=IDLE;\n",
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
  },
  "dependencies": {}
}