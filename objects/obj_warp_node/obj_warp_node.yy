{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_warp_node",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":10,"eventType":7,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":11,"eventType":7,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Warps",
    "path": "folders/Objects/Warps.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"myid","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":99.0,"rangeMin":-1.0,"value":"-1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"cannon","filters":[],"listItems":[
        "\"No\"",
        "\"Diagonal Left\"",
        "\"Diagonal Right\"",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"\"No\"","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"scroll_x","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"scroll_y","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":4,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_warp_node",
    "path": "sprites/spr_warp_node/spr_warp_node.yy",
  },
  "spriteMaskId": null,
  "visible": false,
}