class DataBroker {
  ArrayList<Data> myContainer = new ArrayList<Data>();
    //println(myContainer.length); 
    

  public void loadData() {
    String[] dead = loadStrings("deaths-natural-disasters.csv");
    //println("Length: " + dead.length);
    

    int deathsLength = dead.length;
    for (int i = 1; i < dead.length; i++) {
      

      //println(dead[i]);
      String[] list = split(dead[i], ';');
      
      
      //println(list[0]);
        String countryName = list [1];
      for (int j = 2; j < list.length; j++) {
        println(countryName + " j: " + j + " list[j]: " + list[j].toString() + " list.length: " + list.length);
        
      
        Data d = new Data();
        d.country = countryName;
        println(countryName);
        d.year = 2014-j+2;
        String temp = list[j];
        
        if (temp.isEmpty())
          d.dead = 0;
        else
          d.dead = Integer.valueOf(list[j]);
        putData(countryName, d.year, d);
        
      }
      println("done" + " " + myContainer.size());
      
      
    }
  }

  void putData(String country, int year, Data data) {
    myContainer.add(data);
    
  }
  
  
}
