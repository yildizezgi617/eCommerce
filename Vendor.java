package eCommerce;

public class Vendor extends User { // vendor is user ilişkisi var

    private int countOfProduct;
    private int averageCargoTime;
    private String location;
    private String vendorName;
    private int totalSaleAmount;
    private double rateOfVendor;
    public Vendor(String name, String surName, String eMail, String password, boolean consent, int countOfProduct,
                  int averageCargoTime, String location, String vendorName, int totalSaleAmount, double rateOfVendor) {
        super(name, surName, eMail, password, consent);
        this.countOfProduct = countOfProduct;
        this.averageCargoTime = averageCargoTime;
        this.location = location;
        this.vendorName = vendorName;
        this.totalSaleAmount = totalSaleAmount;
        this.rateOfVendor = rateOfVendor;
    }

    public Vendor() {

    }

    public int getCountOfProduct() {
        return countOfProduct;
    }

    public void setCountOfProduct(int countOfProduct) {
        this.countOfProduct = countOfProduct;
    }

    public int getAverageCargoTime() {
        return averageCargoTime;
    }

    public void setAverageCargoTime(int averageCargoTime) {
        this.averageCargoTime = averageCargoTime;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getVendorName() {
        return vendorName;
    }

    public void setVendorName(String vendorName) {
        this.vendorName = vendorName;
    }

    public int getTotalSaleAmount() {
        return totalSaleAmount;
    }

    public void setTotalSaleAmount(int totalSaleAmount) {
        this.totalSaleAmount = totalSaleAmount;
    }

    public double getRateOfVendor() {
        return rateOfVendor;
    }

    public void setRateOfVendor(double rateOfVendor) {
        this.rateOfVendor = rateOfVendor;
    }
}
