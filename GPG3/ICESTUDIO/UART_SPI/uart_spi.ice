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
          "id": "821f84e7-9426-416f-9f81-ecc2353bc28d",
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
            "x": 592,
            "y": -432
          }
        },
        {
          "id": "5ddfdd83-3f0d-41d6-9af6-16b16931b101",
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
            "x": -40,
            "y": -304
          }
        },
        {
          "id": "ebb28ba3-3fa2-4c45-866b-595711356f80",
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
            "x": -32,
            "y": -144
          }
        },
        {
          "id": "7276d818-9c94-4a6e-b6be-f484b66af1a8",
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
            "x": 2544,
            "y": 0
          }
        },
        {
          "id": "923410a5-3314-4067-90da-ffca8578afd6",
          "type": "basic.output",
          "data": {
            "name": "SCK",
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
            "x": 2256,
            "y": 184
          }
        },
        {
          "id": "0fe18580-cbee-4475-ab33-d59cc1767235",
          "type": "basic.input",
          "data": {
            "name": "uart_rx",
            "pins": [
              {
                "index": "0",
                "name": "RX",
                "value": "62"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 64,
            "y": 400
          }
        },
        {
          "id": "34090fff-7335-4928-9337-08135d1f35ec",
          "type": "basic.output",
          "data": {
            "name": "leds",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "37"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1568,
            "y": 504
          }
        },
        {
          "id": "b08bd422-f4f0-4899-a16c-718e9a5ad9ff",
          "type": "basic.constant",
          "data": {
            "name": "G_FREQ_CLK",
            "value": "12000000",
            "local": false
          },
          "position": {
            "x": 360,
            "y": 32
          }
        },
        {
          "id": "e3969b22-d41a-4242-9536-9429d03d96cc",
          "type": "basic.constant",
          "data": {
            "name": "G_BAUD",
            "value": "115200",
            "local": false
          },
          "position": {
            "x": 576,
            "y": 56
          }
        },
        {
          "id": "e743afb6-b354-4087-8cc7-c5631c7de8d2",
          "type": "basic.constant",
          "data": {
            "name": "SPI_MODE",
            "value": "0",
            "local": false
          },
          "position": {
            "x": 1304,
            "y": -600
          }
        },
        {
          "id": "03a8e8f4-1149-4955-98d8-c7ef6b3327f4",
          "type": "basic.constant",
          "data": {
            "name": "CLKPERHALFBIT",
            "value": "2",
            "local": false
          },
          "position": {
            "x": 1720,
            "y": -632
          }
        },
        {
          "id": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
          "type": "basic.code",
          "data": {
            "code": "  reg [7:0] led;\r\n  \r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      led <= 0;\r\n    else begin\r\n      if (dat_ready)\r\n        led <= uart_data;\r\n    end\r\n  end\r\n  \r\n  assign leds = led;",
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
                  "name": "dat_ready"
                },
                {
                  "name": "uart_data",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "leds",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 888,
            "y": 496
          },
          "size": {
            "width": 424,
            "height": 192
          }
        },
        {
          "id": "d5f7f077-7652-449c-8cbe-1b8109401606",
          "type": "basic.code",
          "data": {
            "code": "// @include uart_rx.v\n\nuart_rx\n#(.G_FREQ_CLK(G_FREQ_CLK), // board clk frequency\n  .G_BAUD (G_BAUD)\n)\ni_uart_rx\n(\n      .rst       (rst),\n      .clk       (clk),\n      .uart_rx   (uart_rx),\n      //.receiving (uart_receiving),\n      .dat_ready (uart_dat_ready),\n      .dat_o     (uart_dat_o)\n);",
            "params": [
              {
                "name": "G_FREQ_CLK"
              },
              {
                "name": "G_BAUD"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
                },
                {
                  "name": "uart_rx"
                }
              ],
              "out": [
                {
                  "name": "uart_dat_ready"
                },
                {
                  "name": "uart_dat_o",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 296,
            "y": 208
          },
          "size": {
            "width": 440,
            "height": 272
          }
        },
        {
          "id": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
          "type": "basic.code",
          "data": {
            "code": "\r\n///////////////////////////////////////////////////////////////////////////////\r\n// Description: SPI (Serial Peripheral Interface) Master\r\n//              Creates master based on input configuration.\r\n//              Sends a byte one bit at a time on MOSI\r\n//              Will also receive byte data one bit at a time on MISO.\r\n//              Any data on input byte will be shipped out on MOSI.\r\n//\r\n//              To kick-off transaction, user must pulse i_TX_DV.\r\n//              This module supports multi-byte transmissions by pulsing\r\n//              i_TX_DV and loading up i_TX_Byte when o_TX_Ready is high.\r\n//\r\n//              This module is only responsible for controlling Clk, MOSI, \r\n//              and MISO.  If the SPI peripheral requires a chip-select, \r\n//              this must be done at a higher level.\r\n//\r\n// Note:        i_Clk must be at least 2x faster than i_SPI_Clk\r\n//\r\n// Parameters:  SPI_MODE, can be 0, 1, 2, or 3.  See above.\r\n//              Can be configured in one of 4 modes:\r\n//              Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)\r\n//               0   |             0             |        0\r\n//               1   |             0             |        1\r\n//               2   |             1             |        0\r\n//               3   |             1             |        1\r\n//              More: https://en.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus#Mode_numbers\r\n//              CLKS_PER_HALF_BIT - Sets frequency of o_SPI_Clk.  o_SPI_Clk is\r\n//              derived from i_Clk.  Set to integer number of clocks for each\r\n//              half-bit of SPI data.  E.g. 100 MHz i_Clk, CLKS_PER_HALF_BIT = 2\r\n//              would create o_SPI_CLK of 25 MHz.  Must be >= 2\r\n//\r\n//\r\n//\r\n//\r\n// GPG3 SPI config:\r\n//#define SPI_TARGET_SPEED 500000 // SPI target speed of 500kbps\r\n//#define SPIDEV_FILE_NAME \"/dev/spidev0.1\" // File name of SPI\r\n//For values over 8-bits, the bytes are sent most significant first.\r\n//\r\n//\r\n//\r\n//\r\n//\r\n///////////////////////////////////////////////////////////////////////////////\r\n\r\n\r\n  // SPI Interface (All Runs at SPI Clock Domain)\r\n  wire w_CPOL;     // Clock polarity\r\n  wire w_CPHA;     // Clock phase\r\n\r\n  reg [$clog2(CLKS_PER_HALF_BIT*2)-1:0] r_SPI_Clk_Count;\r\n  reg r_SPI_Clk;\r\n  reg [4:0] r_SPI_Clk_Edges;\r\n  reg r_Leading_Edge;\r\n  reg r_Trailing_Edge;\r\n  reg       r_TX_DV;\r\n  reg [7:0] r_TX_Byte;\r\n\r\n  reg [2:0] r_RX_Bit_Count;\r\n  reg [2:0] r_TX_Bit_Count;\r\n\r\n  reg o_TX_Ready;\r\n  reg o_SPI_MOSI;\r\n  reg o_SPI_Clk;\r\n  reg [7:0] o_RX_Byte;\r\n  reg o_RX_DV;\r\n  \r\n  //ASUMIMOS MODE = 0 \r\n  // CPOL: Clock Polarity\r\n  // CPOL=0 means clock idles at 0, leading edge is rising edge.\r\n  // CPOL=1 means clock idles at 1, leading edge is falling edge.\r\n  // assign w_CPOL  = (SPI_MODE == 2) | (SPI_MODE == 3);\r\n  assign w_CPOL  = 0;\r\n\r\n  // CPHA: Clock Phase\r\n  // CPHA=0 means the \"out\" side changes the data on trailing edge of clock\r\n  //              the \"in\" side captures data on leading edge of clock\r\n  // CPHA=1 means the \"out\" side changes the data on leading edge of clock\r\n  //              the \"in\" side captures data on the trailing edge of clock\r\n  // assign w_CPHA  = (SPI_MODE == 1) | (SPI_MODE == 3);\r\n\r\n  assign w_CPHA  = 0;\r\n\r\n\r\n\r\n  // Purpose: Generate SPI Clock correct number of times when DV pulse comes\r\n  always @(posedge i_Clk or posedge rst)\r\n  begin\r\n    if (rst)\r\n    begin\r\n      o_TX_Ready      <= 1'b0;\r\n      r_SPI_Clk_Edges <= 0;\r\n      r_Leading_Edge  <= 1'b0;\r\n      r_Trailing_Edge <= 1'b0;\r\n      r_SPI_Clk       <= w_CPOL; // assign default state to idle state\r\n      r_SPI_Clk_Count <= 0;\r\n      //SSBar    <= 1'b1;??\r\n    end\r\n    else\r\n    begin\r\n\r\n      // Default assignments\r\n      r_Leading_Edge  <= 1'b0;\r\n      r_Trailing_Edge <= 1'b0;\r\n      \r\n      if (i_TX_DV)\r\n      begin\r\n        o_TX_Ready      <= 1'b0;\r\n        r_SPI_Clk_Edges <= 16;  // Total # edges in one byte ALWAYS 16\r\n      end\r\n      else if (r_SPI_Clk_Edges > 0)\r\n      begin\r\n        o_TX_Ready <= 1'b0;\r\n        \r\n        if (r_SPI_Clk_Count == CLKS_PER_HALF_BIT*2-1)\r\n        begin\r\n          r_SPI_Clk_Edges <= r_SPI_Clk_Edges - 1;\r\n          r_Trailing_Edge <= 1'b1;\r\n          r_SPI_Clk_Count <= 0;\r\n          r_SPI_Clk       <= ~r_SPI_Clk;\r\n        end\r\n        else if (r_SPI_Clk_Count == CLKS_PER_HALF_BIT-1)\r\n        begin\r\n          r_SPI_Clk_Edges <= r_SPI_Clk_Edges - 1;\r\n          r_Leading_Edge  <= 1'b1;\r\n          r_SPI_Clk_Count <= r_SPI_Clk_Count + 1;\r\n          r_SPI_Clk       <= ~r_SPI_Clk;\r\n        end\r\n        else\r\n        begin\r\n          r_SPI_Clk_Count <= r_SPI_Clk_Count + 1;\r\n        end\r\n      end  \r\n      else\r\n      begin\r\n        o_TX_Ready <= 1'b1;\r\n      end\r\n      \r\n      \r\n    end // else: !if(rst)\r\n  end // always @ (posedge i_Clk or posedge rst)\r\n\r\n\r\n  // Purpose: Register i_TX_Byte when Data Valid is pulsed.\r\n  // Keeps local storage of byte in case higher level module changes the data\r\n  always @(posedge i_Clk or posedge rst)\r\n  begin\r\n    if (rst)\r\n    begin\r\n      r_TX_Byte <= 8'h00;\r\n      r_TX_DV   <= 1'b0;\r\n    end\r\n    else\r\n      begin\r\n        r_TX_DV <= i_TX_DV; // 1 clock cycle delay\r\n        if (i_TX_DV)\r\n        begin\r\n          r_TX_Byte <= i_TX_Byte;\r\n        end\r\n      end // else: !if(rst)\r\n  end // always @ (posedge i_Clk or posedge rst)\r\n\r\n\r\n  // Purpose: Generate MOSI data\r\n  // Works with both CPHA=0 and CPHA=1\r\n  always @(posedge i_Clk or posedge rst)\r\n  begin\r\n    if (rst)\r\n    begin\r\n      o_SPI_MOSI     <= 1'b0;\r\n      r_TX_Bit_Count <= 3'b111; // send MSb first\r\n    end\r\n    else\r\n    begin\r\n      // If ready is high, reset bit counts to default\r\n      if (o_TX_Ready)\r\n      begin\r\n        r_TX_Bit_Count <= 3'b111;\r\n      end\r\n      // Catch the case where we start transaction and CPHA = 0\r\n      else if (r_TX_DV & ~w_CPHA)\r\n      begin\r\n        o_SPI_MOSI     <= r_TX_Byte[3'b111];\r\n        r_TX_Bit_Count <= 3'b110;\r\n      end\r\n      else if ((r_Leading_Edge & w_CPHA) | (r_Trailing_Edge & ~w_CPHA))\r\n      begin\r\n        r_TX_Bit_Count <= r_TX_Bit_Count - 1;\r\n        o_SPI_MOSI     <= r_TX_Byte[r_TX_Bit_Count];\r\n      end\r\n    end\r\n  end\r\n\r\n\r\n  // Purpose: Read in MISO data.\r\n  always @(posedge i_Clk or posedge rst)\r\n  begin\r\n    if (rst)\r\n    begin\r\n      o_RX_Byte      <= 8'h00;\r\n      o_RX_DV        <= 1'b0;\r\n      r_RX_Bit_Count <= 3'b111;\r\n    end\r\n    else\r\n    begin\r\n\r\n      // Default Assignments\r\n      o_RX_DV   <= 1'b0;\r\n\r\n      if (o_TX_Ready) // Check if ready is high, if so reset bit count to default\r\n      begin\r\n        r_RX_Bit_Count <= 3'b111;\r\n      end\r\n      else if ((r_Leading_Edge & ~w_CPHA) | (r_Trailing_Edge & w_CPHA))\r\n      begin\r\n        o_RX_Byte[r_RX_Bit_Count] <= i_SPI_MISO;  // Sample data\r\n        r_RX_Bit_Count            <= r_RX_Bit_Count - 1;\r\n        if (r_RX_Bit_Count == 3'b000)\r\n        begin\r\n          o_RX_DV   <= 1'b1;   // Byte done, pulse Data Valid\r\n        end\r\n      end\r\n    end\r\n  end\r\n  \r\n  \r\n  // Purpose: Add clock delay to signals for alignment.\r\n  always @(posedge i_Clk or posedge rst)\r\n  begin\r\n    if (rst)\r\n    begin\r\n      o_SPI_Clk  <= w_CPOL;\r\n    end\r\n    else\r\n      begin\r\n        o_SPI_Clk <= r_SPI_Clk;\r\n      end // else: !if(~rst)\r\n  end // always @ (posedge i_Clk or posedge rst)\r\n  ",
            "params": [
              {
                "name": "SPI_MODE"
              },
              {
                "name": "CLKS_PER_HALF_BIT"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "i_Clk"
                },
                {
                  "name": "i_TX_Byte",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "i_SPI_MISO"
                },
                {
                  "name": "i_TX_DV"
                }
              ],
              "out": [
                {
                  "name": "o_TX_Ready"
                },
                {
                  "name": "o_RX_DV"
                },
                {
                  "name": "o_RX_Byte",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "o_SPI_Clk"
                },
                {
                  "name": "o_SPI_MOSI"
                }
              ]
            }
          },
          "position": {
            "x": 1112,
            "y": -344
          },
          "size": {
            "width": 944,
            "height": 800
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "b08bd422-f4f0-4899-a16c-718e9a5ad9ff",
            "port": "constant-out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "G_FREQ_CLK"
          }
        },
        {
          "source": {
            "block": "e3969b22-d41a-4242-9536-9429d03d96cc",
            "port": "constant-out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "G_BAUD"
          }
        },
        {
          "source": {
            "block": "0fe18580-cbee-4475-ab33-d59cc1767235",
            "port": "out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "uart_rx"
          }
        },
        {
          "source": {
            "block": "ebb28ba3-3fa2-4c45-866b-595711356f80",
            "port": "out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "5ddfdd83-3f0d-41d6-9af6-16b16931b101",
            "port": "out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "5ddfdd83-3f0d-41d6-9af6-16b16931b101",
            "port": "out"
          },
          "target": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "ebb28ba3-3fa2-4c45-866b-595711356f80",
            "port": "out"
          },
          "target": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 216,
              "y": 368
            }
          ]
        },
        {
          "source": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "uart_dat_ready"
          },
          "target": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "dat_ready"
          }
        },
        {
          "source": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "uart_dat_o"
          },
          "target": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "uart_data"
          },
          "vertices": [
            {
              "x": 784,
              "y": 448
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "uart_dat_o"
          },
          "target": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "i_TX_Byte"
          },
          "size": 8
        },
        {
          "source": {
            "block": "ebb28ba3-3fa2-4c45-866b-595711356f80",
            "port": "out"
          },
          "target": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "i_Clk"
          }
        },
        {
          "source": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "uart_dat_ready"
          },
          "target": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "i_TX_DV"
          }
        },
        {
          "source": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "leds"
          },
          "target": {
            "block": "34090fff-7335-4928-9337-08135d1f35ec",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "o_SPI_Clk"
          },
          "target": {
            "block": "923410a5-3314-4067-90da-ffca8578afd6",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "o_SPI_MOSI"
          },
          "target": {
            "block": "7276d818-9c94-4a6e-b6be-f484b66af1a8",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "821f84e7-9426-416f-9f81-ecc2353bc28d",
            "port": "out"
          },
          "target": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "i_SPI_MISO"
          },
          "vertices": [
            {
              "x": 776,
              "y": -392
            }
          ]
        },
        {
          "source": {
            "block": "03a8e8f4-1149-4955-98d8-c7ef6b3327f4",
            "port": "constant-out"
          },
          "target": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "CLKS_PER_HALF_BIT"
          }
        },
        {
          "source": {
            "block": "5ddfdd83-3f0d-41d6-9af6-16b16931b101",
            "port": "out"
          },
          "target": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "e743afb6-b354-4087-8cc7-c5631c7de8d2",
            "port": "constant-out"
          },
          "target": {
            "block": "94cec26a-ad4b-409e-a734-cd09ad0046ea",
            "port": "SPI_MODE"
          }
        }
      ]
    }
  },
  "dependencies": {}
}