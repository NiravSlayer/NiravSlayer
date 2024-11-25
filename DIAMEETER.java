import java.util.Scanner;
public class DIAMEETER
{
	public static void main(String args[])
	{
		Scanner SC=new Scanner(System.in);
		double pi=3.14,dia,r;
		System.out.println("Enter a value of area");
		double area=SC.nextDouble();
		r=Math.sqrt(area/3.14);
        System.out.print(r);
        dia=r*2;
		System.out.print(dia);
	}
}