import java.util.Scanner;
public class MaxThree
{
    public static void main(String[] args)
    {
        Scanner SC=new Scanner(System.in);
        System.out.print("Enter a a");
        int a=SC.nextInt();
        System.out.print("Enter a b");
        int b=SC.nextInt();
        System.out.print("Enter a c");
        int c=SC.nextInt();
        int ans=MaxName(a,b,c);
        System.out.print(ans);

    }
    public static int MaxName(int a,int b,int c)
    {
        if(a>b && a>c)
        {
            return a;
        }
        else if(b>a && b>c)
        {
            return b;
        }
        else
        {
            return c;
        }
        
    }
}