package eCommerce;

public class Cosmetics implements Categories{
    @Override
    public void categoryName(String name) {
        System.out.println("Cosmetic: " + name);
    }
}
