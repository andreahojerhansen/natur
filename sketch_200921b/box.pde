String myText = "" ;
String[] lol = {"1", "2", "3", "5", "7", "4", "23", "64"};


void settings(){
    size(500, 500);

}

void setup() {

   DataBroker db = new DataBroker();
  db.loadData();
  textAlign(CENTER, CENTER);
  textSize( 30 );
  fill( 0 );
}

void draw() {

  background( 255 );
  text(myText, 0, 0, width, height);
}

void keyPressed() {


  if (keyCode == BACKSPACE) {
    if (myText.length() > 0 ) {
      myText = myText.substring( 0, myText.length()- 1 );
    }
  } else if (keyCode == ENTER) {
    for (int i=0; i<lol.length; i++) {
      if (myText.equals(lol[i])) {
        println("found 5 at index position: "+i);
      }
    }
    myText = "" ;
  } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
    myText = myText + key;
  }
}
