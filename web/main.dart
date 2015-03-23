// Copyright (c) 2015, <Denice B Johansson>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

void main() {
  // Get a reference to the canvas.
  querySelector('#canvas').text = 'My Dart app is running.';
  CanvasElement canvas = 
      document.querySelector('#canvas');
  CanvasRenderingContext2D context = 
      canvas.getContext('2d');
  // ...
}

  var canvas = new Element.html('<canvas/>');
  var canvas.width = 900;
  var canvas.height = 450;

  document.
    body.
    nodes.
    add(canvas);
}

    CanvasRenderingContext2D context;

    int width = 900;
        height = 450;

    main() {
      CanvasElement canvas = buildCanvas();
      context = canvas.getContext("2d");
      draw(x: (width/2).toInt(), y: (height/2).toInt());
    }
    
    draw([int x, int y]) {
      context.beginPath();

      // clear drawing area
      context.clearRect(0,0,width,height);
      context.fillStyle = '#ffffff';
      context.strokeStyle = '#000000';
      context.fillRect(0,0,width,height);

      // draw me and fill me in
      context.rect(x,y,20,20);

      context.fillStyle = 'red';
      context.fill();

      context.stroke();

      context.closePath();
    }
    
    class Player {
      int x, y;
      Player() {
        x = (width/2).toInt();
        y = (height/2).toInt();
      }
      move(String dir) {
        if (dir == 'left') x-= 10;
        if (dir == 'right') x+= 10;
        if (dir == 'up') y-= 10;
        if (dir == 'down') y+= 10;
      }
    }    

    Player me;
    String direction;

    main() {
      CanvasElement canvas = buildCanvas();
      context = canvas.getContext("2d");

      me = new Player();
      draw();
      attachMover();
    }
    
    attachMover() {
      // Move on key down
      document.
        on.
        keyDown.
        add((event) {
          direction = null;

          if (event.keyCode == 36) direction = 'left';
          if (event.keyCode == 37) direction = 'up';
          if (event.keyCode == 38) direction = 'right';
          if (event.keyCode == 49) direction = 'down';

          if (direction != null) {
            event.preventDefault();
            me.move(direction);
            draw();
          }
        });

      // Stop on key up
      document.
        on.
        keyUp.
        add((event) {
          direction = exit;
          
        });
    }

