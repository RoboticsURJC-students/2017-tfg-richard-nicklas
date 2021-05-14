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
          "id": "fff8810d-4cef-42d3-8896-8c9e4a496379",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -128,
            "y": 112
          }
        },
        {
          "id": "88da54d4-e276-4fae-895a-2815c07fbec8",
          "type": "basic.output",
          "data": {
            "name": "leds",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 856,
            "y": 144
          }
        },
        {
          "id": "1667c001-e21b-40e5-8e38-fac2a5343d4b",
          "type": "basic.output",
          "data": {
            "name": "ssb",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 864,
            "y": 200
          }
        },
        {
          "id": "5db2bf01-b245-4887-b6bd-5c20bcc01c8b",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": -120,
            "y": 224
          }
        },
        {
          "id": "f1115f20-df7e-4ba5-96ed-5954b6a518d3",
          "type": "basic.output",
          "data": {
            "name": "start",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 848,
            "y": 272
          }
        },
        {
          "id": "ced425bf-928e-4a69-8c1b-cb26ec4bab8c",
          "type": "basic.output",
          "data": {
            "name": "ack",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 856,
            "y": 336
          }
        },
        {
          "id": "e86e026a-227d-4bf8-8c70-53ea31e04a3c",
          "type": "basic.output",
          "data": {
            "name": "ena_2clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 848,
            "y": 392
          }
        },
        {
          "id": "a9a0f2c3-60e8-49c7-90c8-ee81b695e8a4",
          "type": "basic.input",
          "data": {
            "name": "busy_spi",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -136,
            "y": 432
          }
        },
        {
          "id": "bbd54035-423d-4fa2-82ca-59b83d57b3e9",
          "type": "basic.output",
          "data": {
            "name": "data_spi",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 888,
            "y": 504
          }
        },
        {
          "id": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
          "type": "basic.code",
          "data": {
            "code": "// @include spi_ledctrl.v\r\n\r\n  spi_ledctrl i_spi_ledctrl\r\n  (\r\n    .rst         (rst),\r\n    .clk         (clk),\r\n    //.MISO        (MISO),\r\n    //.data_flash  (data_flash),\r\n    .busy_spi    (busy_spi),\r\n    .leds        (leds),\r\n    //.SCLK        (SCLK),\r\n    //.MOSI        (MOSI),\r\n    .SSBar       (ssb),\r\n    .start       (start),\r\n    .ack         (ack),\r\n    .ena_2clk    (ena_2clk),\r\n    .data_spi    (data_spi)\r\n  );\r\n",
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
                  "name": "ssb"
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
            "x": 192,
            "y": 152
          },
          "size": {
            "width": 472,
            "height": 376
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5db2bf01-b245-4887-b6bd-5c20bcc01c8b",
            "port": "out"
          },
          "target": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "fff8810d-4cef-42d3-8896-8c9e4a496379",
            "port": "out"
          },
          "target": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "a9a0f2c3-60e8-49c7-90c8-ee81b695e8a4",
            "port": "out"
          },
          "target": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "busy_spi"
          }
        },
        {
          "source": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "leds"
          },
          "target": {
            "block": "88da54d4-e276-4fae-895a-2815c07fbec8",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "ssb"
          },
          "target": {
            "block": "1667c001-e21b-40e5-8e38-fac2a5343d4b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "start"
          },
          "target": {
            "block": "f1115f20-df7e-4ba5-96ed-5954b6a518d3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "ack"
          },
          "target": {
            "block": "ced425bf-928e-4a69-8c1b-cb26ec4bab8c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "ena_2clk"
          },
          "target": {
            "block": "e86e026a-227d-4bf8-8c70-53ea31e04a3c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b4e7bdea-88b7-4a43-a26d-f3cde8c7a4e2",
            "port": "data_spi"
          },
          "target": {
            "block": "bbd54035-423d-4fa2-82ca-59b83d57b3e9",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}