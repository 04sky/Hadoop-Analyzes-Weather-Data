package cn.itcast.weblog.pojo;

public class MinTempPojo {
    private String t_day;
    private Integer t_number;

    public String getT_day() {
        return t_day;
    }

    public void setT_day(String t_day) {
        this.t_day = t_day;
    }

    public Integer getT_number() {
        return t_number;
    }

    public void setT_number(Integer t_number) {
        this.t_number = t_number;
    }

    @Override
    public String toString() {
        return "MinTempPojo{" +
                "t_day='" + t_day + '\'' +
                ", t_number=" + t_number +
                '}';
    }
}
