public class lab7_1 
{
   public static void main(String[] args) {
    String str1="  Hello";
    String str2="dharmik";
    int a=50;

    System.out.println("length is :"+str1.length());
    System.out.println("index is :"+str1.charAt(1));
    System.out.println("concat str is :"+str1.concat(str2));
    System.out.println("index value"+str1.indexOf('e'));
    System.out.println("Equal :"+str1.equals(str2));
    System.out.println("value of:"+str1.valueOf(a));
    System.out.println("to string:"+str1.toString());
    System.out.println("Trmming:"+str1.trim());
    System.out.println("substring is :"+str2.substring(2));
   }
}