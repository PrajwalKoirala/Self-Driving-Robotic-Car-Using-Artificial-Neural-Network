let url = 'http://192.168.1.72:8080/shot.jpg';
let img;
let im;
let file;
var p;
var cmmnd = 0;
let history;
let h = [0, 0, 0, 0, 0, 0];
let activated;

function setup() {
  createCanvas(600,400);
  background(100,200,200);
  img = loadImage(url);
  im = loadImage(url);
  setInterval(getImg, 300);
  // history = loadStrings('history.csv');
  // // h = history[history.length -1];
  // console.log(h);
  // h = h.split(/,/);
  // activated = h.indexOf(max(h));
  // getoutput();
  setInterval(getoutput, 200);
  setInterval(getsmall, 1000);
}

function draw(){
  img.resize(400,400);
  image(img,0 ,0);
  im.resize(20,20);
  im.filter(GRAY,0.5);
  image(im, 420, 190);


  for(let i = 0; i<5; i++){
    let y = (i+1)*height/6;
    line(440, height/2, 500, y );
    fill(255);
    if(i == p){
      fill(255,0,0);
      a = 1;
    }
    else{
      a = 0;
    }
    ellipse(500, y, 20);
    textAlign(CENTER);
    fill(0);

    text(a, 500, y);
  }

  text('Forward', 555, height/6);
  text('Left', 555, 2*height/6);
  text('Right', 555, 3*height/6);
  text('Obstacle', 555, 4*height/6);
  text('Zebra Crossing', 555, 5*height/6);
}


function getImg() {
  img = loadImage(url);
  img.resize(400,400);
}

function getsmall(){
  im = loadImage(url);
  im.resize(20,20);
  im.filter(GRAY, 0.5);
}


function getoutput(){
  history = loadStrings('ahilesamma.csv');
  setTimeout(readhistory, 100);
  // console.log(h);

}


function readhistory(){
  h = history[history.length -1];
  if(String.fromCharCode(h) == 'F'){
    p = 0;
  }
  if(String.fromCharCode(h) == 'L'){
    p = 1;
  }
  if(String.fromCharCode(h) == 'R'){
    p = 2;
  }
  if(String.fromCharCode(h) == 'S'){
    p = 3;
  }
  if(String.fromCharCode(h) == 'Z'){
    p = 4;
  }
p=0;
}
