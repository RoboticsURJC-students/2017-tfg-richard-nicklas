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
          "id": "9fa89eac-053b-4417-9cff-28167a01cdf4",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
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
            "name": "txd",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
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
            "name": "rdy",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
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
            "name": "valid",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
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
  },
  "dependencies": {}
}