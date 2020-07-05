let img;
let a;
let param1;
let param2;
let theta1;
let theta2;
let url = 'http://192.168.43.1:8080/shot.jpg';
let innodes = 400;
let hidnodes = 150;
let outnodes = 8;

function preload(){
  param1 = loadStrings('param1.csv');
  param2 = loadStrings('param2.csv');



}



function setup() {
  createCanvas(1000,1000);
  background(100);

  theta1 = new Matrix(hidnodes, innodes + 1);
  theta2 = new  Matrix(outnodes, hidnodes + 1);


  for(let i=0; i<param1.length; i++){
  param1[i] = param1[i].split(/,/);
  for(let j=0; j<param1[i].length; j++){
    theta1.data[i][j] = param1[i][j];
    }
  }
  theta1.map(Number);
  for(let i=0; i<param2.length; i++){
  param2[i] = param2[i].split(/,/);
  for(let j=0; j<param2[i].length; j++){
    theta2.data[i][j] = param2[i][j];
    }
  }
  theta2.map(Number);

  img = loadImage(url);
  setInterval(getImg, 300);
  setInterval(getoutput, 100);
}

function draw(){
  //image(img, 0, 0);
  // a = img.resize(20,20);
  background(img);
}


function getImg() {
  img = loadImage(url);
}
function getoutput(){
  datamatrix  = getmatrix();

  hiddenmatrix = Matrix.multiply(theta1, datamatrix);
  hiddenmatrix.map(sigmoid);

  dataarray = hiddenmatrix.toArray();
  dataarray.splice(0,0,1);
  hiddenmatrix = Matrix.fromArray(dataarray);

  outputmatrix = Matrix.multiply(theta2, hiddenmatrix);
  output = outputmatrix.toArray();
  console.log(output.indexOf(max(output)));
}



function getmatrix(){
  im = get();
  im.resize(20,20);
  im.loadPixels();
  data = [];
  for(let i=0; i < im.pixels.length; i+=4){
  data.push((im.pixels[i] + im.pixels[i+1] + im.pixels[i+2])/3/255);
  }

  data.splice(0, 0, 1);
  inpt = Matrix.fromArray(data);

  return inpt;

}

function sigmoid(n){

  return ( 1/(1 + exp(-n)) );

}
