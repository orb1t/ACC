{
  "image": "",
  "state": {
    "pan": {
      "x": 0,
      "y": 0
    },
    "zoom": 0.9999999762424047
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "8d359ccf-e55c-4f62-9f4e-0ed669093f37",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": 104,
          "y": 248
        }
      },
      {
        "id": "d1cb5113-959b-4b28-96d0-7cc069764a6c",
        "type": "basic.input",
        "data": {
          "label": "rst",
          "pin": {
            "name": "SW2",
            "value": "11"
          }
        },
        "position": {
          "x": 104,
          "y": 376
        }
      },
      {
        "id": "10d0892d-6405-4c1c-a405-30265a3294fa",
        "type": "basic.code",
        "data": {
          "code": "wire rst;\nreg [9:0] counter;\n\nalways @(posedge clk or posedge rst) begin\n  if (rst==1'b1) \n    counter <= 10'b0;\n  else\n    counter <= counter + 1;\nend\n\nassign {c9,c8,c7,c6,c5,c4,c3,c2,c1,c0} = counter;\n",
          "ports": {
            "in": [
              "clk",
              "rst"
            ],
            "out": [
              "c0",
              "c1",
              "c2",
              "c3",
              "c4",
              "c5",
              "c6",
              "c7",
              "c8",
              "c9"
            ]
          }
        },
        "position": {
          "x": 384,
          "y": 216
        }
      },
      {
        "id": "568e358c-ec4d-4147-9dda-f75b443afc5a",
        "type": "basic.output",
        "data": {
          "label": "c0",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 80
        }
      },
      {
        "id": "01a3f2a4-ed44-4efa-845b-87ecd5db2b79",
        "type": "basic.output",
        "data": {
          "label": "c1",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 152
        }
      },
      {
        "id": "e5baf0f6-ac92-4a12-9c4b-ebdb5d2e23e7",
        "type": "basic.output",
        "data": {
          "label": "c2",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 224
        }
      },
      {
        "id": "127169fb-6a82-46c4-8035-31c3d6c53c9a",
        "type": "basic.output",
        "data": {
          "label": "c3",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 296
        }
      },
      {
        "id": "3285e16d-6a02-4c84-908c-90ea3c422e2b",
        "type": "basic.output",
        "data": {
          "label": "c4",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 368
        }
      },
      {
        "id": "51935349-d48a-4e0a-aade-df8ed055fde1",
        "type": "basic.output",
        "data": {
          "label": "c5",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 440
        }
      },
      {
        "id": "7dbae909-2d1e-485b-80aa-91c8a87c7abd",
        "type": "basic.output",
        "data": {
          "label": "c6",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 512
        }
      },
      {
        "id": "282ac79d-9c13-44c6-85d5-80ade9bc0ac8",
        "type": "basic.output",
        "data": {
          "label": "c7",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 584
        }
      },
      {
        "id": "c9f1fb3f-dd31-4a9c-ba91-a6da7cd6d41b",
        "type": "basic.output",
        "data": {
          "label": "c8",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 656
        }
      },
      {
        "id": "ace4585c-8d98-435b-9624-70bd1e540371",
        "type": "basic.output",
        "data": {
          "label": "c9",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1024,
          "y": 728
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "8d359ccf-e55c-4f62-9f4e-0ed669093f37",
          "port": "out"
        },
        "target": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "clk"
        }
      },
      {
        "source": {
          "block": "d1cb5113-959b-4b28-96d0-7cc069764a6c",
          "port": "out"
        },
        "target": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "rst"
        }
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c0"
        },
        "target": {
          "block": "568e358c-ec4d-4147-9dda-f75b443afc5a",
          "port": "in"
        },
        "vertices": [
          {
            "x": 848,
            "y": 160
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c1"
        },
        "target": {
          "block": "01a3f2a4-ed44-4efa-845b-87ecd5db2b79",
          "port": "in"
        },
        "vertices": [
          {
            "x": 864,
            "y": 208
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c2"
        },
        "target": {
          "block": "e5baf0f6-ac92-4a12-9c4b-ebdb5d2e23e7",
          "port": "in"
        },
        "vertices": [
          {
            "x": 880,
            "y": 272
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c3"
        },
        "target": {
          "block": "127169fb-6a82-46c4-8035-31c3d6c53c9a",
          "port": "in"
        },
        "vertices": [
          {
            "x": 984,
            "y": 312
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c4"
        },
        "target": {
          "block": "3285e16d-6a02-4c84-908c-90ea3c422e2b",
          "port": "in"
        },
        "vertices": [
          {
            "x": 976,
            "y": 368
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c5"
        },
        "target": {
          "block": "51935349-d48a-4e0a-aade-df8ed055fde1",
          "port": "in"
        },
        "vertices": [
          {
            "x": 968,
            "y": 416
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c6"
        },
        "target": {
          "block": "7dbae909-2d1e-485b-80aa-91c8a87c7abd",
          "port": "in"
        },
        "vertices": [
          {
            "x": 960,
            "y": 504
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c7"
        },
        "target": {
          "block": "282ac79d-9c13-44c6-85d5-80ade9bc0ac8",
          "port": "in"
        },
        "vertices": [
          {
            "x": 952,
            "y": 560
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c8"
        },
        "target": {
          "block": "c9f1fb3f-dd31-4a9c-ba91-a6da7cd6d41b",
          "port": "in"
        },
        "vertices": [
          {
            "x": 944,
            "y": 632
          }
        ]
      },
      {
        "source": {
          "block": "10d0892d-6405-4c1c-a405-30265a3294fa",
          "port": "c9"
        },
        "target": {
          "block": "ace4585c-8d98-435b-9624-70bd1e540371",
          "port": "in"
        },
        "vertices": [
          {
            "x": 936,
            "y": 712
          }
        ]
      }
    ]
  },
  "deps": {}
}