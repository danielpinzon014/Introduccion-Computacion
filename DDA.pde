int a = 5; 
println(a>>1);
println(a<<1);  
int x1=7;  
int y1=8;  
int x2=15;  
int y2=13;  
int yd=y2-y1;   
int xd=x2-x1;
int p = 2*yd;
int u = p-(2*xd);
int e=0;   
int y=y1;

int desin = p-xd;

for (int x=x1; x<=x2; x++) 
{   
  int k=0;
  point(x,y); 
  if( ((e+yd)<<0) < xd ) {
    desin = (k+1)+p;
    e+=yd; 
  }else{   
    y++;   
    e+=(xd-1); 
  }   
}
