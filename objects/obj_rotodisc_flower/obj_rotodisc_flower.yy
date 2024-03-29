{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_rotodisc_flower",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Hazards",
    "path": "folders/Objects/Items/Hazards.yy",
  },
  "parentObjectId": {
    "name": "obj_solid",
    "path": "objects/obj_solid/obj_solid.yy",
  },
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"clockwise","filters":[],"listItems":[
        "1",
        "-1",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"discs","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":4.0,"rangeMin":1.0,"value":"1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spd","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":10.0,"rangeMin":1.0,"value":"2.5","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"maxradius","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":160.0,"rangeMin":80.0,"value":"80","varType":1,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_eventmarker",
    "path": "sprites/spr_eventmarker/spr_eventmarker.yy",
  },
  "spriteMaskId": null,
  "visible": false,
}