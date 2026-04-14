public class Renu_unary {
    public static void main(String[] args) {
        int a=1;
        int b=a;
        System.out.println(a++);
        System.out.println(++a);
        System.out.println(b--);
        System.out.println(--b);

        
        int x=a++ + ++b;
        System.out.println(x);

    }
}
