{
  "modelId": "1d2ff81d-961f-4550-b5bf-d032099a0bd8",
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "Test Local Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_SYS_XX_LOOP_DETECTOR_UP\n    in event EV_SYS_XX_MANUAL_UP\n    in event EV_SYS_XX_VERT_LIMIT_UP\n    in event EV_SYS_XX_IR_DOWN\n    in event EV_SYS_XX_HORZ_LIMIT_UP"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -183,
          "y": -160
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "2633549a-800c-46c3-a34a-ce71cb7a6b09",
        "z": 6,
        "embeds": [
          "d76a1069-abd4-41e4-8c2d-5476b873ccf6"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -183,
          "y": -145
        },
        "id": "d76a1069-abd4-41e4-8c2d-5476b873ccf6",
        "z": 7,
        "parent": "2633549a-800c-46c3-a34a-ce71cb7a6b09",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -152.5,
          "y": 29
        },
        "size": {
          "height": 60,
          "width": 212
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b8a10ef4-33e1-4fdc-b432-b929ca806330",
        "z": 11,
        "attrs": {
          "name": {
            "text": "ST_SYS_XX_WAIT_BARRIER_LOWER",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -154,
          "y": -102
        },
        "size": {
          "height": 60,
          "width": 212
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8a0de651-589f-4465-9607-984639c2f551",
        "z": 12,
        "parent": "2d66045c-1b1c-4d1b-950d-6b808026f858",
        "attrs": {
          "name": {
            "text": "ST_SYS_XX_WAIT_VEHICLE",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "2633549a-800c-46c3-a34a-ce71cb7a6b09"
        },
        "target": {
          "id": "8a0de651-589f-4465-9607-984639c2f551",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 108,
              "dy": 16.90386962890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "78aeeb5e-1b6b-4863-b161-5f6e59fef927",
        "z": 13,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 504,
          "y": -103
        },
        "size": {
          "height": 60,
          "width": 212
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "541ba283-c1cc-4a26-a42d-56d208e8c4e5",
        "z": 14,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_SYS_XX_WAIT_BARRIER_RAISE",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "8a0de651-589f-4465-9607-984639c2f551"
        },
        "target": {
          "id": "541ba283-c1cc-4a26-a42d-56d208e8c4e5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 2,
              "dy": 35,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[EV_SYS_XX_LOOP_DETECTOR_UP || EV_SYS_XX_MANUAL_UP]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "bb891d73-9316-4f7b-8292-c7ee3d0b4865",
        "z": 17,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b8a10ef4-33e1-4fdc-b432-b929ca806330",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.5,
              "dy": 48,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "8a0de651-589f-4465-9607-984639c2f551",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3,
              "dy": 27,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_XX_HORZ_LIMIT_UP"
              }
            },
            "position": {
              "distance": 0.5116296537094257,
              "offset": -86.00000000000003,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "20139b64-23f3-4f19-a22f-b75c78b6abbd",
        "z": 19,
        "vertices": [
          {
            "x": -210,
            "y": 35
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 505,
          "y": 27
        },
        "size": {
          "height": 60,
          "width": 212
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "57407ad7-b545-41b6-94f7-0d23466ced4f",
        "z": 22,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_SYS_XX_WAIT_VEHICLE_PASS",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "541ba283-c1cc-4a26-a42d-56d208e8c4e5"
        },
        "target": {
          "id": "57407ad7-b545-41b6-94f7-0d23466ced4f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 212,
              "dy": 40,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_XX_VERT_LIMIT_UP"
              }
            },
            "position": {
              "distance": 0.493114399925266,
              "offset": -86,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "49d02d01-df4c-4c5d-a55d-2f0079f042ea",
        "z": 23,
        "vertices": [
          {
            "x": 791,
            "y": -82
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "57407ad7-b545-41b6-94f7-0d23466ced4f"
        },
        "target": {
          "id": "b8a10ef4-33e1-4fdc-b432-b929ca806330",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 206.5,
              "dy": 39,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[EV_SYS_XX_IR_DOWN || EV_SYS_XX_MANUAL_UP]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "567ae180-201f-40e9-8685-66d2616dc3fa",
        "z": 23,
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "Test",
          "statemachinePrefix": "test",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}