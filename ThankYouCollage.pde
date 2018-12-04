
float red;
float blue;
float green;
float red2;
float blue2;
float green2;
float redspeed;
float bluespeed;
float greenspeed;
float redspeed2;
float bluespeed2;
float greenspeed2;

///
float speedfactor=12;
float redfactor=80;
///

float redx = random(0,1000);
float redy = random(0,1000);
float redxspeed=0;
float redyspeed=0;
float g=mouseY;
float r=mouseX;
float b=((mouseX+mouseY)/2);
float px=random(0,1000);
float py=random(0,1000);
float pxs=0;
float pys=0;

float bx=random(0,1000);
float by=random(0,1000);
float bxs=0;
float bys=0;

float gx=random(0,1000);
float gy=random(0,1000);
float gxs=0;
float gys=0;

float ox=random(0,1000);
float oy=random(0,1000);
float oxs=0;
float oys=0;


float yx=random(0,1000);
float yy=random(0,1000);
float yxs=0;
float yys=0;

float cx=random(0,1000);
float cy=random(0,1000);
float cxs=0;
float cys=0;

float qx=random(0,1000);
float qy=random(0,1000);
float qxs=0;
float qys=0;

float wx=random(0,1000);
float wy=random(0,1000);
float wxs=0;
float wys=0;

float ex=random(0,1000);
float ey=random(0,1000);
float exs=0;
float eys=0;

float rx=random(0,1000);
float ry=random(0,1000);
float rxs=0;
float rys=0;

float tx=0;
float ty=0;
float txs=0;
float tys=0;

float ax=0;
float ay=0;
float axs=0;
float ays=0;

float sx=0;
float sy=0;
float sxs=0;
float sys=0;

float xx=0;
float xy=0;
float xxs=0;
float xys=0;

float vx=0;
float vy=0;
float vxs=0;
float vys=0;

float nx=0;
float ny=0;
float nxs=0;
float nys=0;

float fx=0;
float fy=0;
float fxs=0;
float fys=0;

float dx=0;
float dy=0;
float dxs=0;
float dys=0;

float mx=0;
float my=0;
float mxs=0;
float mys=0;


float kx=0;
float ky=0;
float kxs=0;
float kys=0;


float jx=0;
float jy=0;
float jxs=0;
float jys=0;

float hx=0;
float hy=0;
float hxs=0;
float hys=0;

float vqx=0;
float vqy=0;
float vqxs=0;
float vqys=0;

float ikx=0;
float iky=0;
float ikxs=0;
float ikys=0;

float jkx=0;
float jky=0;
float jkxs=0;
float jkys=0;

float followX=638;
float followY=689;
float followXs=-2;
float followYs=-3;

float mousex=mouseX;
float mousey=mouseY;
float w=0;
float q=255;
float t=0;

void setup() {
 
  size(1000,1000);
 red = 1;
 blue = 2;
 green = 3;
 red2 = 1;
 blue2 = 2;
 green2 = 3;
 redspeed = 2;
 redspeed2 = 2;
 bluespeed = 3;
 bluespeed2 = 3;
 
  
}
void draw() {
  
  
  
  float g=mouseY/4+50;
float r=mouseX/4+50;
float b=((mouseX/4+mouseY/4)/2)+50;
  
textSize(50);
if (dist(mouseX,mouseY,redx,redy)<45){
  w=255;
  t=0;
  q=255;
//  background(3);
}
  if (followX>1000){
    followXs=-random(1,3);}
    if (followX<0){
    followXs=random(1,3);}
     if (followY>1000){
    followYs=-random(1,3);}
    if (followY<0){
    followYs=random(1,3);}
    background(245);
    //4,((mouseX/4+mouseY/4)/2),mouseX/4);
  followX=followX+followXs;
  followY=followY+followYs;
  noStroke();
  noFill();
  ellipse(followX,followY,10,10);
  
  fill(255,0,0,w);
 // ellipse(mouseX,mouseY,25,25);

   red = red+redspeed;
// blue = blue+2;
 //green = green+3;
 red2 = red2+redspeed2;
 //blue2 = blue2+2;
 //green2 = green+3;
 
 
 
  fill(255,0,0);
 //ellipse(red,red2,10,10);
// fill(0,0,255);
//ellipse(blue,blue2,20,20);
 //fill(0,255,0);
 //ellipse(green,green2,30,30);
 
if(red > 500) {
  redspeed = -2;
}
if(red < 0) {
  redspeed = 2;
}


if(red2 < 0) {
  redspeed2 = 2;
}
if(red2 > 500) {
  redspeed2 = -2;
}

redx=redx+redxspeed;
redy=redyspeed+redy;

if(redx<followX){
  redxspeed=dist(followX,0,redx,0)/redfactor;
}

if(redx>followX){
  redxspeed=-dist(followX,0,redx,0)/redfactor;
}
if(redy<followY){
  redyspeed=dist(followY,0,redy,0)/redfactor;
}

if(redy>followY){
  redyspeed=-dist(followY,0,redy,0)/redfactor;
}

px=px+pxs;
py=pys+py;

if(px<redx){
  pxs=dist(redx,0,px,0)/speedfactor;
}

if(px>redx){
  pxs=-dist(redx,0,px,0)/speedfactor;
}
if(py<redy){
  pys=dist(redy,0,py,0)/speedfactor;
}

if(py>redy){
  pys=-dist(redy,0,py,0)/speedfactor;
}



bx=bx+bxs;
by=bys+by;

if(bx<px){
  bxs=dist(px,0,bx,0)/speedfactor;
}

if(bx>px){
  bxs=-dist(px,0,bx,0)/speedfactor;
}
if(by<py){
  bys=dist(py,0,by,0)/speedfactor;
}

if(by>py){
  bys=-dist(py,0,by,0)/speedfactor;
}



gx=gx+gxs;
gy=gys+gy;

if(gx<bx){
  gxs=dist(bx,0,gx,0)/speedfactor;
}

if(gx>bx){
  gxs=-dist(bx,0,gx,0)/speedfactor;
}
if(gy<by){
  gys=dist(by,0,gy,0)/speedfactor;
}

if(gy>by){
  gys=-dist(by,0,gy,0)/speedfactor;
}




////

ox=ox+oxs;
oy=oys+oy;

if(ox<gx){
  oxs=dist(gx,0,ox,0)/speedfactor;
}

if(ox>gx){
  oxs=-dist(gx,0,ox,0)/speedfactor;
}
if(oy<gy){
  oys=dist(gy,0,oy,0)/speedfactor;
}

if(oy>gy){
  oys=-dist(gy,0,oy,0)/speedfactor;
}

/////y
yx=yx+yxs;
yy=yys+yy;

if(yx<ox){
  yxs=dist(ox,0,yx,0)/speedfactor;
}

if(yx>ox){
  yxs=-dist(ox,0,yx,0)/speedfactor;
}
if(yy<oy){
  yys=dist(oy,0,yy,0)/speedfactor;
}

if(yy>oy){
  yys=-dist(oy,0,yy,0)/speedfactor;
}


/////c
cx=cx+cxs;
cy=cys+cy;

if(cx<yx){
  cxs=dist(yx,0,cx,0)/speedfactor;
}

if(cx>yx){
  cxs=-dist(yx,0,cx,0)/speedfactor;
}
if(cy<yy){
  cys=dist(yy,0,cy,0)/speedfactor;
}

if(cy>yy){
  cys=-dist(yy,0,cy,0)/speedfactor;
}



qx=qx+qxs;
qy=qys+qy;

if(qx<cx){
  qxs=dist(cx,0,qx,0)/speedfactor;
}

if(qx>cx){
  qxs=-dist(cx,0,qx,0)/speedfactor;
}
if(qy<cy){
  qys=dist(cy,0,qy,0)/speedfactor;
}

if(qy>cy){
  qys=-dist(cy,0,qy,0)/speedfactor;
}

wx=wx+wxs;
wy=wys+wy;

if(wx<qx){
  wxs=dist(qx,0,wx,0)/speedfactor;
}

if(wx>qx){
  wxs=-dist(qx,0,wx,0)/speedfactor;
}
if(wy<qy){
  wys=dist(qy,0,wy,0)/speedfactor;
}

if(wy>qy){
  wys=-dist(qy,0,wy,0)/speedfactor;
}

ex=ex+exs;
ey=eys+ey;

if(ex<wx){
  exs=dist(wx,0,ex,0)/speedfactor;
}

if(ex>wx){
  exs=-dist(wx,0,ex,0)/speedfactor;
}
if(ey<wy){
  eys=dist(wy,0,ey,0)/speedfactor;
}

if(ey>wy){
  eys=-dist(wy,0,ey,0)/speedfactor;
}

rx=rx+rxs;
ry=rys+ry;

if(rx<ex){
  rxs=dist(ex,0,rx,0)/speedfactor;
}

if(rx>ex){
  rxs=-dist(ex,0,rx,0)/speedfactor;
}
if(ry<ey){
  rys=dist(ey,0,ry,0)/speedfactor;
}

if(ry>ey){
  rys=-dist(ey,0,ry,0)/speedfactor;
}

tx=tx+txs;
ty=tys+ty;

if(tx<rx){
  txs=dist(rx,0,tx,0)/speedfactor;
}

if(tx>rx){
  txs=-dist(rx,0,tx,0)/speedfactor;
}
if(ty<ry){
  tys=dist(ry,0,ty,0)/speedfactor;
}

if(ty>ry){
  tys=-dist(ry,0,ty,0)/speedfactor;
}

ax=ax+axs;
ay=ays+ay;

if(ax<tx){
  axs=dist(tx,0,ax,0)/speedfactor;
}

if(ax>tx){
  axs=-dist(tx,0,ax,0)/speedfactor;
}
if(ay<ty){
  ays=dist(ty,0,ay,0)/speedfactor;
}

if(ay>ty){
  ays=-dist(ty,0,ay,0)/speedfactor;
}

sx=sx+sxs;
sy=sys+sy;

if(sx<ax){
  sxs=dist(ax,0,sx,0)/speedfactor;
}

if(sx>ax){
  sxs=-dist(ax,0,sx,0)/speedfactor;
}
if(sy<ay){
  sys=dist(ay,0,sy,0)/speedfactor;
}

if(sy>ay){
  sys=-dist(ay,0,sy,0)/speedfactor;
}

///

xx=xx+xxs;
xy=xys+xy;

if(xx<sx){
  xxs=dist(sx,0,xx,0)/speedfactor;
}

if(xx>sx){
  xxs=-dist(sx,0,xx,0)/speedfactor;
}
if(xy<sy){
  xys=dist(sy,0,xy,0)/speedfactor;
}

if(xy>sy){
  xys=-dist(sy,0,xy,0)/speedfactor;
}

////////////////

vx=vx+vxs;
vy=vys+vy;

if(vx<xx){
  vxs=dist(xx,0,vx,0)/speedfactor;
}

if(vx>xx){
  vxs=-dist(xx,0,vx,0)/speedfactor;
}
if(vy<xy){
  vys=dist(xy,0,vy,0)/speedfactor;
}

if(vy>xy){
  vys=-dist(xy,0,vy,0)/speedfactor;
}







nx=nx+nxs;
ny=nys+ny;

if(nx<vx){
  nxs=dist(vx,0,nx,0)/speedfactor;
}

if(nx>vx){
  nxs=-dist(vx,0,nx,0)/speedfactor;
}
if(ny<vy){
  nys=dist(vy,0,ny,0)/speedfactor;
}

if(ny>vy){
  nys=-dist(vy,0,ny,0)/speedfactor;
}





fx=fx+fxs;
fy=fys+fy;

if(fx<nx){
  fxs=dist(nx,0,fx,0)/speedfactor;
}

if(fx>nx){
  fxs=-dist(nx,0,fx,0)/speedfactor;
}
if(fy<ny){
  fys=dist(ny,0,fy,0)/speedfactor;
}

if(fy>ny){
  fys=-dist(ny,0,fy,0)/speedfactor;
}


dx=dx+dxs;
dy=dys+dy;

if(dx<fx){
  dxs=dist(fx,0,dx,0)/speedfactor;
}

if(dx>fx){
  dxs=-dist(fx,0,dx,0)/speedfactor;
}
if(dy<fy){
  dys=dist(fy,0,dy,0)/speedfactor;
}

if(dy>fy){
  dys=-dist(fy,0,dy,0)/speedfactor;
}

mx=mx+mxs;
my=mys+my;

if(mx<dx){
  mxs=dist(dx,0,mx,0)/speedfactor;
}

if(mx>dx){
  mxs=-dist(dx,0,mx,0)/speedfactor;
}
if(my<dy){
  mys=dist(dy,0,my,0)/speedfactor;
}

if(my>dy){
  mys=-dist(dy,0,my,0)/speedfactor;
}

kx=kx+kxs;
ky=kys+ky;

if(kx<mx){
  kxs=dist(mx,0,kx,0)/speedfactor;
}

if(kx>mx){
  kxs=-dist(mx,0,kx,0)/speedfactor;
}
if(ky<my){
  kys=dist(my,0,ky,0)/speedfactor;
}

if(ky>my){
  kys=-dist(my,0,ky,0)/speedfactor;
}

jx=jx+jxs;
jy=jys+jy;

if(jx<kx){
  jxs=dist(kx,0,jx,0)/speedfactor;
}

if(jx>kx){
  jxs=-dist(kx,0,jx,0)/speedfactor;
}
if(jy<ky){
  jys=dist(ky,0,jy,0)/speedfactor;
}

if(jy>ky){
  jys=-dist(ky,0,jy,0)/speedfactor;
}

hx=hx+hxs;
hy=hys+hy;

if(hx<jx){
  hxs=dist(jx,0,hx,0)/speedfactor;
}

if(hx>jx){
  hxs=-dist(jx,0,hx,0)/speedfactor;
}
if(hy<jy){
  hys=dist(jy,0,hy,0)/speedfactor;
}

if(hy>jy){
  hys=-dist(jy,0,hy,0)/speedfactor;
}

vqx=vqx+vqxs;
vqy=vqys+vqy;

if(vqx<hx){
  vqxs=dist(hx,0,vqx,0)/speedfactor;
}

if(vqx>hx){
  vqxs=-dist(hx,0,vqx,0)/speedfactor;
}
if(vqy<hy){
  vqys=dist(hy,0,vqy,0)/speedfactor;
}

if(vqy>hy){
  vqys=-dist(hy,0,vqy,0)/speedfactor;
}

ikx=ikx+ikxs;
iky=ikys+iky;

if(ikx<vqx){
  ikxs=dist(vqx,0,ikx,0)/speedfactor;
}

if(ikx>vqx){
  ikxs=-dist(vqx,0,ikx,0)/speedfactor;
}
if(iky<vqy){
  ikys=dist(vqy,0,iky,0)/speedfactor;
}

if(iky>vqy){
  ikys=-dist(vqy,0,iky,0)/speedfactor;
}


jkx=jkx+jkxs;
jky=jkys+jky;

if(jkx<ikx){
  jkxs=dist(ikx,0,jkx,0)/speedfactor;
}

if(jkx>ikx){
  jkxs=-dist(ikx,0,jkx,0)/speedfactor;
}
if(jky<iky){
  jkys=dist(iky,0,jky,0)/speedfactor;
}

if(jky>iky){
  jkys=-dist(iky,0,jky,0)/speedfactor;
}



noStroke();
//fill(r,g,b);ellipse(jkx,jky,26,26);
//text("T",jkx,jky);fill(r,g,b);ellipse(ikx,iky,28,28);fill(r,g,b);ellipse(vqx,vqy,31,31);fill(r,g,b);ellipse(hx,hy,34,34);fill(r,g,b);ellipse(jx,jy,37,37);fill(r,g,b);ellipse(kx,ky,38,38);fill(r,g,b);ellipse(mx,my,39,39);fill(r,g,b);ellipse(dx,dy,40,40);///fill(r,g,b);
//ellipse(fx,fy,40,40);
fill(r,g,b);
//ellipse(nx,ny,40,40);
text("u",nx,ny);
fill(r,g,b,0);
ellipse(vx,vy,40,40);
fill(r,g,b);
//ellipse(xx,xy,40,40);
text("o",xx,xy);
fill(r,g,b,0);
ellipse(sx,sy,40,40);
fill(r,g,b);
//ellipse(ax,ay,40,40);
text("Y",ax,ay);
fill(r,g,b,0);
ellipse(tx,ty,40,40);
fill(r,g,b,0);
ellipse(rx,ry,40,40);
fill(r,g,b,0);
ellipse(ex,ey,40,40);
fill(r,g,b);
//ellipse(wx,wy,40,40);
text("k",wx,wy);
fill(r,g,b,0);
ellipse(qx,qy,40,40);
fill(r,g,b);
//ellipse(cx,cy,40,40);
text("n",cx,cy);
fill(r,g,b,0);
ellipse(yx,yy,40,40);
fill(r,g,b);
//ellipse(ox,oyz,40,40);
text("a",ox,oy);
fill(r,g,b,0);
ellipse(gx,gy,40,40);
fill(r,g,b);
//ellipse(bx,by,40,40);
text("h",bx,by);
fill(r,g,b,0);
ellipse(px,py,40,40);
fill(r,g,b);
//ellipse(redx,redy,45,45);
text("T",redx,redy);
}

void mousePressed() {
redx = random(0,1000);
redy = random(0,1000);
px=random(0,1000);
py=random(0,1000);
bx=random(0,1000);
by=random(0,1000);
 gx=random(0,1000);
 gy=random(0,1000);
ox=random(0,1000);
 oy=random(0,1000);
 yx=random(0,1000);
yy=random(0,1000);
//float 
cx=random(0,1000);
//float 
cy=random(0,1000);
//float
qx=random(0,1000);
//float 
qy=random(0,1000);
//float
wx=random(0,1000);
//float 
wy=random(0,1000);
//float
ex=random(0,1000);
//float
ey=random(0,1000);
//float 
rx=random(0,1000);
//float 
ry=random(0,1000);
ax=random(0,1000);
ay=random(0,1000);
xx=random(0,1000);
xy=random(0,1000);
nx=random(0,1000);
ny=random(0,1000);
}
