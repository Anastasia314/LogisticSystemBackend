package by.bsuir.logisticback.model;

public class RouteUser {
    private String start;
    private String end;
    private double mass;
    private int k;

    public RouteUser(String start, String end, double mass, int k) {
        this.start = start;
        this.end = end;
        this.mass = mass;
        this.k = k;
    }

    public RouteUser() {
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public double getMass() {
        return mass;
    }

    public void setMass(double mass) {
        this.mass = mass;
    }

    public int getK() {
        return k;
    }

    public void setK(int k) {
        this.k = k;
    }
}
