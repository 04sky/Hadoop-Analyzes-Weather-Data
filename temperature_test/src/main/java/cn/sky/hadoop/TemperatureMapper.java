package cn.sky.hadoop;

import com.google.common.base.Splitter;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;
import java.util.ArrayList;

public class TemperatureMapper extends Mapper<LongWritable, Text, Text, LongWritable> {

    private static final long MISSING = -9999;

    @Override
    protected void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String line = value.toString();
        Iterable<String> split = Splitter.on(" ").omitEmptyStrings().split(line);
        ArrayList<String> arrayList = new ArrayList<>(16);
        for (String s : split) {
            arrayList.add(s);
        }
        // 过滤掉字段不足的数据
        if (arrayList.size() >= 5) {
            String month = arrayList.get(1);
            String day = arrayList.get(2);
            long temperature = Long.parseLong(arrayList.get(4));
            // 过滤掉温度不存在的数据
            if (Math.abs(temperature - MISSING) > 0.0001) {
                context.write(new Text(month + "/" + day), new LongWritable((temperature)));
            }
        }
    }

}
