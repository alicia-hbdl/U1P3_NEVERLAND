import processing.sound.*;
SoundFile file;
SoundFile file1;
PImage neverland; // background Scene 0
PImage piratbackground; // background Scene 1
PImage hangmanstree; // background Scene 2
PImage indiancamp; // background Scene 3
PImage mermaidlagoon; // background Scene 4
PImage tinckerbell; // Tinckerbell Scene 0
PImage wendydarling; // Wendy Darling Scene 0
PImage johndarling; // John Darling Scene 0
PImage michaeldarling; // Michael Darling Scene 0
PImage peterpan; // Peter Pan Scene 0
PImage star; // Star Scene 0
PImage captainhook; // Captain Hook Scene 1
PImage mrsmee; // Mr. Smee Scene 1
PImage ticktock; // Crocodile Scene 1
PImage lightning; // Lightning Scene 1
PImage lightning1; // Lightning Scene 1
PImage lightning2; // Lightning Scene 1
PImage globe;  // Globe Scene 2
PImage chest; // Chest Scene 2
PImage clock; // Clock Scene 2
PImage lostboys; // Lost Boys Scene 2
PImage smoke; // Smoke Scene 3
PImage smoke1; // Smoke Scene 3
PImage tigerlily; // Tiger Lily Scene 3
PImage indianchief; // Indian Chief Scene 3
PImage prisonners;  // Prisonners Scene 3
PImage peterindian; // Peter Pan Scene 3
PImage bird; // Bird Scene 4
PImage mermaids; // Mermaids Scene 4
PImage shadow; // Shadow Scene 0-4
int m = 70; // Height/Width of the Objects Scene 2
int direction = 0; // Direction of Peter Pan
int Screen = 0; // Starting Screen (NEVERLAND)
int COUNT = 5; // Count of the Objects Scene 2
int C2x = 700; // Position x Wendy Darling
int C2y = 500; // Position y Wendy Darling
int C6x = 420; // Position x Mr. Smee
int C6y = 420; // Position y Mr. Smee
int C7x = 0; // Position x Captain Hook
int C7y = 416; // Position y Captain Hook
int C8x = 300; // Position x Tick Tock
int C8y = 580; // Position y Tick Tock
float C9x = -250; //Postion x Shadow
float C9y = 35; //Position y Shadow
int[] Type = new int [COUNT]; // I SETTINGS
float[] Xs = new float[COUNT]; // I SETTINGS
float[] Ys= new float[COUNT]; // I SETTINGS
float[] Speed =new float [COUNT]; // I SETTINGS
float SMx = -200; // Position Smoke x
float SMy = 0; // Position Smoke y
float SM1x = 700; // Positon Smoke1 x
float SM1y = 100; // Postion Smoke1 y
float C1x = -450; // Postion x Peter Pan 
float C1y = 700; // Positon y Peter Pan
float a = 0; // Angle Rotation Tinker Bell
float C3x =350; // Position x Michael Darling
float C3y = -88; // Postion y Michael Darling
float C4x =500; // Postion x Tinker Bell
float C4y = 350; // Postion y Tinker Bell
float C5x = -202; // Postion x John Darling
float C5y = -115; // Position y John Darling
float x = -75; // Postion x Bird
float y = 0; // Postion y Bird
boolean TwinkleMode = false; // Stars on ' ' Scene 0
void setup()
{
  file = new SoundFile(this, "neverland.mp3");
  file.play();
  size(700, 700, P2D);
  Isettings();
  LoadImage();
}
void draw()
{
  noTint();
  if (Screen == 0)
  {
    background(neverland);
    Characters();
    TwinkleMode();
  }
  if (Screen ==1)
  {
    background(piratbackground);
    lightning();
    Characters1();
  }
  if (Screen == 2)
  {

    background(hangmanstree);
    Characters2();
    Objects();
  }
  if (Screen == 3)
  {

    background(indiancamp);
    Characters3();
  }
  if (Screen == 4)
  {

    background(mermaidlagoon);
    Characters4();
  }
  noCursor();
  tint(0, 0, 0, 100);
  image(shadow, C9x, C9y, 250, 426);
  C9x+=.5;
  C9y = 80*sin(C9x/20)+100;
}
void keyPressed() // Changing Scenes and Turn Twinkle Mode on and off
{
  if (key ==' ')
  {
    TwinkleMode = !TwinkleMode;
  }
  if (key =='a')
  {
    Screen = 0;
    file.stop();
    file = new SoundFile(this, "neverland.mp3");
    file.play();
  }
  if  (key =='z')
  {
    Screen = 1;
    file.stop();
    file = new SoundFile(this, "pirate.mp3");
    file.play();
  }
  if (key == 'e')
  {
    Screen = 2;
    file.stop();
    file = new SoundFile(this, "lostboys.mp3");
    file.play();
  }
  if (key == 'r')
  {
    Screen = 3;
    file.stop();
    file = new SoundFile(this, "indian.mp3");
    file.play();
  }
  if (key =='t')
  {
    Screen = 4;
    file.stop();
    file = new SoundFile(this, "mermaid.mp3");
    file.play();
  }
}

void Isettings() // For Objects Scene 2
{
  for (int i = 0; i<COUNT; i++)
  {
    Xs[i] = random(width);
    Ys[i] = random (-80, -400);
    Speed[i] = random (1, 4);
    Type [i] = (int)random(3);
  }
}
void LoadImage()
{
  star = loadImage("star.png");
  neverland = loadImage("neverland.jpg");
  bird = loadImage("bird.png");
  neverland.resize(width, height);
  peterpan = loadImage("peterpan.png"); 
  tinckerbell = loadImage("tinckerbell.png"); 
  wendydarling = loadImage("wendydarling.png");
  johndarling = loadImage("johndarling.png");
  michaeldarling = loadImage("michaeldarling.png");
  mrsmee = loadImage("mrsmee.png");
  captainhook = loadImage("captainhook.png");
  piratbackground = loadImage("piratbackground.jpg");
  piratbackground.resize (width, height);
  ticktock =loadImage("ticktock.png");
  globe = loadImage("globe.png");
  clock = loadImage("clock.png");
  prisonners = loadImage("prisonners.png");
  chest = loadImage("chest.png");
  lightning = loadImage("lightning.png");
  lightning1 = loadImage("lightning1.png");
  lightning2 = loadImage("lightning2.png");
  hangmanstree = loadImage("hangmanstree.jpg");
  hangmanstree.resize(width, height);
  mermaidlagoon = loadImage("mermaidlagoon.jpg");
  mermaidlagoon.resize(width, height);
  indiancamp = loadImage("indiancamp.jpg");
  indiancamp.resize(width, height);
  lostboys = loadImage("lostboys.png");
  peterindian = loadImage("peterindian.png");
  indianchief = loadImage("indianchief.png");
  smoke = loadImage("smoke.png");
  tigerlily = loadImage("tigerlily.png");
  smoke1 = loadImage("smoke1.png");
  shadow = loadImage("shadow.png");
  mermaids = loadImage("mermaids.png");
}
void Characters() // Characters Scene 0
{
  image(peterpan, C1x, C1y, 337, 101);
  C1x=C1x+0.8;
  C1y=C1y+2*direction;

  if (C1y > 1000 || C1y<-300)
  {
    direction = direction*-1;
  }
  if (C1x>1000)
  {
    C1x = random(-337, -500);
  }
  image(wendydarling, C2x, C2y, 254, 180);
  C2x=C2x-2;
  if (C2x <-310==true)
  {
    C2x = width+310;
    C2y = (int)random(height-310);
    C2x=C2x-3;
  }
  image (michaeldarling, C3x, C3y, 101, 88); 
  C3y = C3y+2;
  if (C3y>1400)
  {
    C3x = random (width);
    C3y = random (-300, -88);
  }
  image(johndarling, C5x, C5y, 202, 115);
  C5x = C5x+1;
  C5y = C5y+1;
  if (C5y>1000)
  {
    C5x = random (-202, 700);
    C5y = -115;
  }
  image(tinckerbell, C4x, C4y, 112, 142);
  a=a-0.009;
  C4x = 200*cos(a)+300;
  C4y=200*sin(a)+250;
}
void TwinkleMode() // Boolean Stars
{
  if (TwinkleMode)
  {
    for (int i = 0; i<2; i++)
    {
      fill(255, 226, 0);
      noStroke();
      image(star, Xs[i], Ys[i], 20, 20);
      Xs[i] = random(width);
      Ys[i] = random (height);
    }
  }
}
void lightning() // Lightning Scene 1
{
  image(lightning, random(-100, 700), random(-100, -10), 400, random(400, 600));
  image(lightning1, random(-100, 700), random(-100, -10), 400, random(400, 600));
  image(lightning2, random(-100, 700), random(-100, -10), 400, random(400, 600));
}
void Characters1()// Characters Scene 1
{
  image(mrsmee, C6x, C6y, 180, 280);
  image (captainhook, C7x, C7y, 400, 284);
  image (ticktock, C8x, C8y, 75, 100);
}

void Characters2()// Characters Scene 2
{
  image(lostboys, 50, 370, 600, 330);
}
void Objects()
{
  for (int i = 0; i<COUNT; i++)
  {
    if (Type[i]==0)
    {
      image (chest, Xs[i], Ys[i], m, m);
    }
    if (Type[i]==1)
    {
      image (globe, Xs[i], Ys[i], m, m);
    }
    if (Type[i]==2)
    {
      image (clock, Xs[i], Ys[i], m, m);
    }
    Ys[i]=Ys[i]+Speed[i];
    if (Ys[i]>height)
    {
      Xs[i] = random(width);
      Ys[i] = random (-80, -400); 
      Type [i] = (int)random(3);
    }
  }
}
void Characters3() // Characters Scene 3
{
  image(tigerlily, 545, 350, 123, 240);
  image(indianchief, 323, 250, 122, 185);
  image(peterindian, 110, 250, 195, 165);
  image(prisonners, 0, 400, 235, 300);
  image (smoke, SMx, SMy, 200, 170);
  SMx = SMx+random(0.5, 2);
  if (SMx > width)
  {
    SMx = -300;
    SMy = random(0, 100);
  }
  image(smoke1, SM1x, SM1y, 200, 170);
  SM1x = SM1x-1;
  if (SM1x < -200)
  {
    SM1x = width;
    SM1y = random(0, 100);
  }
}
void Characters4() // Characters Scene 4
{
  image(mermaids, 250, 200, 312, 262);
  image(bird, x, y, 75, 50);
  x+=.5;
  y = 50*sin(x/20)+100;
  if (x>width)
  {
    x=-75;
  }
}