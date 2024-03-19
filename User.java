package eCommerce;

public class User {
    private String name;
    private String surName;
    private String eMail;
    private String password;
    private boolean consent;
    public User(String name, String surName, String eMail, String password, boolean consent) {
        this.name = name;
        this.surName = surName;
        this.eMail = eMail;
        this.password = password;
        this.consent = consent;
    }

    public User() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurName() {
        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public String getEMail() {
        return eMail;
    }

    public void setEMail(String eMail) {
        this.eMail = eMail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isConsent() {
        return consent;
    }

    public void setConsent(boolean consent) {
        this.consent = consent;
    }
}
