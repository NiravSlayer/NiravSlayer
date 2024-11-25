import java.util.Scanner;

public class maxofthree{
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        System.out.println("enter a:");
        int a = SC.nextInt();
        System.out.println("enter b:");
        int b = SC.nextInt();
        System.out.println("enter c:");
        int c = SC.nextInt();
        int ans= Maxname(a, b, c);
        System.out.println(ans);
    }
    public static int Maxname(int a,int b,  int c){
        int ans;
        if(a>b && a>c){
            return a;
        }
        else if (b>a && b>c){
            return b;
        }
        else{
            return c;
        }
    }
}