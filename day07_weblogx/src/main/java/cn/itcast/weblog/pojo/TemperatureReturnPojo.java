package cn.itcast.weblog.pojo;

import java.util.List;

public class TemperatureReturnPojo {
    private List<String> Tem_Dates;
    private List<String> Tem_Maxs;
    private List<String> Tem_Mins;
    private List<String> Tem_Avgs;

    public List<String> getTem_Dates() {
        return Tem_Dates;
    }

    public void setTem_Dates(List<String> tem_Dates) {
        Tem_Dates = tem_Dates;
    }

    public List<String> getTem_Maxs() {
        return Tem_Maxs;
    }

    public void setTem_Maxs(List<String> tem_Maxs) {
        Tem_Maxs = tem_Maxs;
    }

    public List<String> getTem_Mins() {
        return Tem_Mins;
    }

    public void setTem_Mins(List<String> tem_Mins) {
        Tem_Mins = tem_Mins;
    }

    public List<String> getTem_Avgs() {
        return Tem_Avgs;
    }

    public void setTem_Avgs(List<String> tem_Avgs) {
        Tem_Avgs = tem_Avgs;
    }

    @Override
    public String toString() {
        return "TemperatureReturnPojo{" +
                "Tem_Dates=" + Tem_Dates +
                ", Tem_Maxs=" + Tem_Maxs +
                ", Tem_Mins=" + Tem_Mins +
                ", Tem_Avgs=" + Tem_Avgs +
                '}';
    }
}
