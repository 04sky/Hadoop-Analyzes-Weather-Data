package cn.sky.hadoop;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;
import org.apache.hadoop.util.Tool;
import org.apache.hadoop.util.ToolRunner;
import org.junit.Test;

public class JobMain extends Configured implements Tool {
    @Override
    public int run(String[] strings) throws Exception {
        // 创建一个任务对象
        Job job = Job.getInstance(super.getConf(), "mapreduce_temperature");

        // 打包放在集群运行时，需要做一个配置
        job.setJarByClass(JobMain.class);

        // 第一步：设置读取文件的类：K1和V1
        job.setInputFormatClass(TextInputFormat.class);
        TextInputFormat.addInputPath(job, new Path("hdfs://node01:8020/usr/hadoop/in"));

        // 第二步：设置Mapper类
        job.setMapperClass(TemperatureMapper.class);
        // 设置Map阶段的输出类型：k2和v2的类型
        job.setMapOutputKeyClass(Text.class);
        job.setMapOutputValueClass(LongWritable.class);

        // 第三、四、五、六步采用默认方式（分区，排序，规约，分组）

        // 第七步：设置Reducer类
        job.setReducerClass(TemperatureReducer.class);
        // 设置Reduce阶段的输出类型
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(Temperature.class);


        // 第八步：设置输出类
        job.setOutputFormatClass(TextOutputFormat.class);
        // 设置输出路径
        TextOutputFormat.setOutputPath(job, new Path("hdfs://node01:8020/usr/hadoop/temperature"));

        boolean b = job.waitForCompletion(true);

        return b?0:1;
    }

    public static void main(String[] args) throws Exception {
        Configuration configuration = new Configuration();
        // 启动一个任务
        ToolRunner.run(configuration, new JobMain(), args);
    }

}
