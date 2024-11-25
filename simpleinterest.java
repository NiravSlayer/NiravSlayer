import java.util.Scanner;
public class simpleinterest
{
    public static void main(String[] args)
    {
        Scanner SC=new Scanner(System.in);
        System.out.print("Enter a P");
        
        double p=SC.nextDouble();
        System.out.print("Enter a R");
        double r=SC.nextDouble();
        System.out.print("Enter a N");
        double n=SC.nextDouble();
        double ans=simint(p,r,n);
        System.out.print(ans);
    }
    public static double simint(double p,double r,double n)
    {
        double inte=(p*r*n)/100;
        return inte;
    }
}