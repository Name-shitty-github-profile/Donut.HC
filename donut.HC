                   #requires @fbgfx//OOOOOO
                 U0 main(){I32 W=60, H=30;F64 
               r1=0.5, r2=1, k2 4.2, k1=W*k2*3 
           /(8*(r1+r2)),PI=3.1415,rx=0,rz=0,i=0,j=0,zb[H* W 
     +H],cx,cy,x,y,z;U8 b[H * W + H]; gfx_open(W * 10, H * 10
   , "HolyC Demo");for (;;){for (I32 i = 0; i < W * H + H; ++i)
  {b[i] = ' '; zb[i] =                0;}for (I32 i = 0; i < H;
++i){b[i * (W + 1) + W]                 + W] = '\n';} for (i = 0;
i < 2 * PI; i += PI                      / 100) for (i = 0//00
; i < 2 * PI; i +=                       PI / 100) {for (j = 0; 
j < 2 * PI; j +=                         PI / 100){cx = r2 + r1
* cos(i);cy = r1                          * sin(i);  z = k2 + cos(
rx) * cx * sin(j)                         + cy * sin(rx);//OOOOO
x = (cx * (cos(rz)                         * cos(j) + sin(rx) *                       
sin(rz) * sin(j)) -                       cy * cos(rx) * sin(rz))
 / (z * 3);y = (cx *                    (sin(rz) * cos(j) - sin(
 rx) * cos(rz) * sin(j))              + cy * cos(rx) * cos(rz)) 
  / (z * 3);x = (cx *                (cos(rz) * cos(j) + sin(
   rx) * sin(rz) * sin(j)) - cy * cos(rx) * sin(rz)) / (z * 3);
     x=(cx*(cos(rz)*cos(j)+sin(rx)*sin(rz)*sin(j))-cy*cos(rx)
        *sin(rz))/(z*3);y=(cx*(sin(rz)*cos(j)-sin(rx*cos(rz)
           *sin(j))+cy*cos(rx) cos(rz))/(z*3);
                z=1/((z-1)/(z*3)); I32 xp=
                  (W/2+k1)*z*x/2+W/2; I32 yp
                    =(H/2-k1)*z*y/2+H/2;



F64 lum=cos(j)*                                cos(i)*sin(rz)-
cos(rx)  *cos(i)*                                sin(j)-  sin(rx)*
sin(i)+  cos(rz)*                                (cos(rx)  *sin(i)-
cos(i)*sin(rx)*                                sin(j));if(lum>0){


if(xp<W && xp >= 0 &&                             yp < H && yp >= 0 && z > 
zb[xp + yp * (W + 1)]){zb[xp                 + yp * (W + 1)] = z;b[xp + yp 
            * (W + 1)] = ".,-:=*+*#%@"[(I32)(lum * 7.3)];}}}}
             for (I32 i = 0; i < W * H + H; ++i){Print(b[i]);}
               gfx_present(); gfx_clear();rx += 0.006;
                    rz += 0.003;}gfx_end();}
