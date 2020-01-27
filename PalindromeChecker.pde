public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
      
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here

  
 
  onlyLetters(word);
 

  if(reverse(onlyLetters(word.toLowerCase())).equals(onlyLetters(word.toLowerCase()))){
    return true;
  }

  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length()-1; i>= 0; i--){
      sNew += str.substring(i,i+1);
    }
   
    return sNew;
}
public String noSpaces(String sWord){
  String word = new String();
  for(int i = 0; i< sWord.length(); i++){
    if(sWord.substring(i,i+1).equals(" ") == false){
      word = word + sWord.substring(i,i+1);
    }
  }return word;
}
public String onlyLetters(String sString){
  String string = new String();
  for(int i = 0; i< sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      string = string + sString.charAt(i);
    }
  }return string;
}




