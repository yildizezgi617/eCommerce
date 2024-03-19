package eCommerce;

public class Product {
    private String name;
    private String price;
    private int installmentCount;
    private boolean specialOffer;
    private String[] features;
    private double rateOfProduct;
    private double cargoPrice;
    private boolean freeCargo;
    private Categories categories = new Categories() {
        @Override
        public void categoryName(String name) {
            System.out.println(name);
        }
    }; // product has a categories ilişkisi var
    public Product(String name, String price, int installmentCount,
                   boolean specialOffer, String[] features, double rateOfProduct,
                   double cargoPrice, boolean freeCargo) {
        this.name = name;
        this.price = price;
        this.installmentCount = installmentCount;
        this.specialOffer = specialOffer;
        this.features = features;
        this.rateOfProduct = rateOfProduct;
        this.cargoPrice = cargoPrice;
        this.freeCargo = freeCargo;
    }

    public Product() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getInstallmentCount() {
        return installmentCount;
    }

    public void setInstallmentCount(int installmentCount) {
        this.installmentCount = installmentCount;
    }

    public boolean isSpecialOffer() {
        return specialOffer;
    }

    public void setSpecialOffer(boolean specialOffer) {
        this.specialOffer = specialOffer;
    }

    public String[] getFeatures() {
        return features;
    }

    public void setFeatures(String[] features) {
        this.features = features;
    }

    public double getRateOfProduct() {
        return rateOfProduct;
    }

    public void setRateOfProduct(double rateOfProduct) {
        this.rateOfProduct = rateOfProduct;
    }

    public double getCargoPrice() {
        return cargoPrice;
    }

    public void setCargoPrice(double cargoPrice) {
        this.cargoPrice = cargoPrice;
    }

    public boolean isFreeCargo() {
        return freeCargo;
    }

    public void setFreeCargo(boolean freeCargo) {
        this.freeCargo = freeCargo;
    }
    public void categoryClothing() {
        this.categories.categoryName("T-shirt");
    }
    public void categoryCosmetics() {
        this.categories.categoryName("Perfume");
    }
}
