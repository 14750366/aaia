//Week09-3 好玩的程式設計 (氣球會變大)
//修改自Week09-2 好玩的程式設計 (互動的氣球)
PImage img;//宣告變數(圖)
void setup() {//設定的函式(做1次))
  size(600, 500);//設定視窗大小
  img = loadImage("balloon.png");//讀入圖片
}//要再手動把(圖檔)拉進程式裡

float X, Y, s = 0.1;//一開始的氣球比較小
void draw() {//畫圖的函式(每秒60秒)
  background(#FFFFF2);//背景:淡黃色
 if(mousePressed) {//如果 mouse 壓下去
   s =s * 1.02;//氣球會變大
   image(img, mouseX-96/2*s, mouseY-132*s, 96*s, 132*s);
 }else s= 0.1;//放開 mouse 時, 氣球就會變小了
 
}//這裡的座標,有稍微改一下
 //讓手拿氣球下面綁起來地方
