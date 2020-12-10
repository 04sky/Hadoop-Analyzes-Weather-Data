package cn.itcast.weblog.pojo;

import java.util.List;

public class MinTemperaturePojo {
    private List<String> tDay;
    private List<Integer> tNumber;

    public List<String> gettDay() {
        return tDay;
    }

    public void settDay(List<String> tDay) {
        this.tDay = tDay;
    }

    public List<Integer> gettNumber() {
        return tNumber;
    }

    public void settNumber(List<Integer> tNumber) {
        this.tNumber = tNumber;
    }

    @Override
    public String toString() {
        return "MinTemperaturePojo{" +
                "tDay=" + tDay +
                ", tNumber=" + tNumber +
                '}';
    }
}
