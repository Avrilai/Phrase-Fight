
    var sprite1;
    var sprite2;
    var sprite3;
    var count;
    var x = 400;
    void setup() {
        size(1600, 900);
        background(200);
        sprite1 = new Animation("elf", 3);
        sprite2 = new Animation("knight", 5);
        sprite3 = new Animation("stick", 8);
    }

    void draw() {
        count++;
        x+=2;
        if (count > 15) {
            background(200);
            sprite1.display(x, 225);
            sprite3.display(x+500, 225);

            count = 0;
        }
        if(x > 1500) { x = -300 };
    }

    class Sprite {
        var xPos, yPos;
        var sprite1;

    }

    class Animation {
        PImage[] images;
        var imageCount;
        var frame = 0;

        Animation(String imagePrefix, var count) {
            imageCount = count;
            images = new PImage[imageCount];
            for (var i = 0; i < imageCount; i++) {
                String filename = imagePrefix + i + ".gif";
                images[i] = loadImage(filename);
            }
        }
        void display(x, y) {
            frame = (frame + 1) % imageCount;
            image(images[frame], x, y);
        }
    }
