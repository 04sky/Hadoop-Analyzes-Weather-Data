package cn.sky.hadoop;

import org.apache.hadoop.io.Writable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public class Temperature implements Writable {

    private double max_temperature;
    private double min_temperature;
    private double avg_temperature;

    public Temperature(double max_temperature, double min_temperature, double avg_temperature) {
        this.max_temperature = max_temperature;
        this.min_temperature = min_temperature;
        this.avg_temperature = avg_temperature;
    }

    public double getMax_temperature() {
        return max_temperature;
    }

    public void setMax_temperature(double max_temperature) {
        this.max_temperature = max_temperature;
    }

    public double getMin_temperature() {
        return min_temperature;
    }

    public void setMin_temperature(double min_temperature) {
        this.min_temperature = min_temperature;
    }

    public double getAvg_temperature() {
        return avg_temperature;
    }

    public void setAvg_temperature(double avg_temperature) {
        this.avg_temperature = avg_temperature;
    }

    @Override
    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeDouble(max_temperature);
        dataOutput.writeDouble(min_temperature);
        dataOutput.writeDouble(avg_temperature);
    }

    @Override
    public void readFields(DataInput dataInput) throws IOException {
        this.max_temperature = dataInput.readDouble();
        this.min_temperature = dataInput.readDouble();
        this.avg_temperature = dataInput.readDouble();
    }

    @Override
    public String toString() {
        return max_temperature + "\t" + min_temperature + "\t" + avg_temperature;
    }
}
