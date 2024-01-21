{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_warp_top",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Pipes",
    "path": "folders/Objects/Warps/Pipes.yy",
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"destination","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"room_next(room)","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"exit_dir","filters":[],"listItems":[
        "0",
        "90",
        "180",
        "270",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"exit_id","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":99.0,"rangeMin":-1.0,"value":"-1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"mini","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"pipetype","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_warp",
    "path": "sprites/spr_warp/spr_warp.yy",
  },
  "spriteMaskId": null,
  "visible": false,
}