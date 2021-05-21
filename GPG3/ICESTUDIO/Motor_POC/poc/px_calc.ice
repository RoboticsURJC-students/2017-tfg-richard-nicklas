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
          "id": "32b04c37-7c66-48d4-a613-58414418f743",
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
            "x": 64,
            "y": 56
          }
        },
        {
          "id": "8e6dcac8-2ba1-4aa2-9de2-d3d91aa8430c",
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
            "x": 48,
            "y": 128
          }
        },
        {
          "id": "14009d89-4ad4-4feb-8b00-9e91968e4f5f",
          "type": "basic.input",
          "data": {
            "name": "rgbfilter",
            "range": "[2:0]",
            "pins": [
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 32,
            "y": 208
          }
        },
        {
          "id": "de089ccc-38d7-47c2-ab35-7edffd23c943",
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
            "x": 992,
            "y": 216
          }
        },
        {
          "id": "31616483-d55a-466f-ae23-8e7bc62f39ac",
          "type": "basic.input",
          "data": {
            "name": "orig_img_addr",
            "range": "[12:0]",
            "pins": [
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -24,
            "y": 264
          }
        },
        {
          "id": "7cc267e0-6765-4f45-b100-ffa7a5af15ae",
          "type": "basic.input",
          "data": {
            "name": "orig_img_px",
            "range": "[11:0]",
            "pins": [
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 56,
            "y": 328
          }
        },
        {
          "id": "97799322-784d-4ee9-b3fb-ed244f91a0f3",
          "type": "basic.code",
          "data": {
            "code": "// @include px_calc.v\n\n    px_calc lnk2vrlg\n  (\n     .rst        (rst),\n     .clk        (clk),\n     .rgbfilter  (rgbfilter),\n     // from original image filter\n     .proc_addr  (img_addr),\n     .orig_pxl   (orig_px),\n     .leds (leds)\n  );",
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
                  "name": "rgbfilter",
                  "range": "[2:0]",
                  "size": 3
                },
                {
                  "name": "img_addr",
                  "range": "[12:0]",
                  "size": 13
                },
                {
                  "name": "orig_px",
                  "range": "[11:0]",
                  "size": 12
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
            "x": 328,
            "y": 80
          },
          "size": {
            "width": 512,
            "height": 328
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "32b04c37-7c66-48d4-a613-58414418f743",
            "port": "out"
          },
          "target": {
            "block": "97799322-784d-4ee9-b3fb-ed244f91a0f3",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "8e6dcac8-2ba1-4aa2-9de2-d3d91aa8430c",
            "port": "out"
          },
          "target": {
            "block": "97799322-784d-4ee9-b3fb-ed244f91a0f3",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "14009d89-4ad4-4feb-8b00-9e91968e4f5f",
            "port": "out"
          },
          "target": {
            "block": "97799322-784d-4ee9-b3fb-ed244f91a0f3",
            "port": "rgbfilter"
          },
          "size": 3
        },
        {
          "source": {
            "block": "7cc267e0-6765-4f45-b100-ffa7a5af15ae",
            "port": "out"
          },
          "target": {
            "block": "97799322-784d-4ee9-b3fb-ed244f91a0f3",
            "port": "orig_px"
          },
          "size": 12
        },
        {
          "source": {
            "block": "31616483-d55a-466f-ae23-8e7bc62f39ac",
            "port": "out"
          },
          "target": {
            "block": "97799322-784d-4ee9-b3fb-ed244f91a0f3",
            "port": "img_addr"
          },
          "size": 13
        },
        {
          "source": {
            "block": "97799322-784d-4ee9-b3fb-ed244f91a0f3",
            "port": "leds"
          },
          "target": {
            "block": "de089ccc-38d7-47c2-ab35-7edffd23c943",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}