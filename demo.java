import java.util.Scanner;
class Time {
    int hour;
    int min;
    public Time(int hour,int min)
    {
        this.hour=hour;
        this.min=min;
    }
    public void add(Time t1,Time t2)
    {
        this.hour=t1.hour+t2.hour;
        this.min=t1.min+t2.min;
        if (this.min>=60) {
            this.hour=this.hour+(this.min/60);
            this.min=this.min %60;
        }
    }
    public void print()
    {
        System.out.println(this.hour);
        System.out.println(this.min);
    }
}
public class demo{
    public static void main(String[] args) {
        Time t1=new Time(5, 40);
        Time t2=new Time(6, 50);
        Time t3=new Time(0,0);
        t3.add(t1, t2);
        t3.print();
    }
}