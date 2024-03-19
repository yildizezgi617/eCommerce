package eCommerce;

public class Customer extends User{
    private int customerNo;
    private String[] pastOrders;
    private String address;
    private boolean discountCoupons;
    private boolean exclusiveProduct;

    public Customer(String name, String surName, String eMail, String password, boolean consent,
                    int customerNo, String[] pastOrders, String address, boolean discountCoupons,
                    boolean exclusiveProduct) {
        super(name, surName, eMail, password, consent);

        this.customerNo = customerNo;
        this.pastOrders = pastOrders;
        this.address = address;
        this.discountCoupons = discountCoupons;
        this.exclusiveProduct = exclusiveProduct;
    }

    public Customer() {
        super();
    }

    public int getCustomerNo() {
        return customerNo;
    }

    public void setCustomerNo(int customerNo) {
        this.customerNo = customerNo;
    }

    public String[] getPastOrders() {
        return pastOrders;
    }

    public void setPastOrders(String[] pastOrders) {
        this.pastOrders = pastOrders;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isDiscountCoupons() {
        return discountCoupons;
    }

    public void setDiscountCoupons(boolean discountCoupons) {
        this.discountCoupons = discountCoupons;
    }

    public boolean isExclusiveProduct() {
        return exclusiveProduct;
    }

    public void setExclusiveProduct(boolean exclusiveProduct) {
        this.exclusiveProduct = exclusiveProduct;
    }
}
