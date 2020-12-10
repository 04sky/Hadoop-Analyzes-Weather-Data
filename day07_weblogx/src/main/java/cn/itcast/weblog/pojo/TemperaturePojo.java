package cn.itcast.weblog.pojo;

public class TemperaturePojo {
    private String Tem_Date;
    private Double Tem_Max;
    private Double Tem_Min;
    private Double Tem_Avg;

    public String getTem_Date() {
        return Tem_Date;
    }

    public void setTem_Date(String tem_Date) {
        Tem_Date = tem_Date;
    }

    public Double getTem_Max() {
        return Tem_Max;
    }

    public void setTem_Max(Double tem_Max) {
        Tem_Max = tem_Max;
    }

    public Double getTem_Min() {
        return Tem_Min;
    }

    public void setTem_Min(Double tem_Min) {
        Tem_Min = tem_Min;
    }

    public Double getTem_Avg() {
        return Tem_Avg;
    }

    public void setTem_Avg(Double tem_Avg) {
        Tem_Avg = tem_Avg;
    }

    @Override
    public String toString() {
        return "TemperaturePojo{" +
                "Tem_Date='" + Tem_Date + '\'' +
                ", Tem_Max=" + Tem_Max +
                ", Tem_Min=" + Tem_Min +
                ", Tem_Avg=" + Tem_Avg +
                '}';
    }
}
