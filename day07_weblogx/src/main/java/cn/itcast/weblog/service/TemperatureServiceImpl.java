package cn.itcast.weblog.service;

import cn.itcast.weblog.mapper.TemperatureMapper;
import cn.itcast.weblog.pojo.TemperaturePojo;
import cn.itcast.weblog.pojo.TemperatureReturnPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class TemperatureServiceImpl implements TemperatureService {
    @Autowired
    private TemperatureMapper temperatureMapper;
    @Override
    public TemperatureReturnPojo getAllTemperature() {
        TemperatureReturnPojo temperatureReturnPojo = new TemperatureReturnPojo();

        ArrayList<String> dates = new ArrayList<>();
        ArrayList<String> maxs = new ArrayList<>();
        ArrayList<String> mins = new ArrayList<>();
        ArrayList<String> avgs = new ArrayList<>();
        DecimalFormat df = new DecimalFormat("#.00");

        List<TemperaturePojo> allTemperature = temperatureMapper.getAllTemperature();
        for (TemperaturePojo pojo : allTemperature) {
            dates.add(pojo.getTem_Date());
            maxs.add(df.format(pojo.getTem_Max()/10.0));
            mins.add(df.format(pojo.getTem_Min()/10.0));
            avgs.add(df.format(pojo.getTem_Avg()/10.0));
        }
        temperatureReturnPojo.setTem_Dates(dates);
        temperatureReturnPojo.setTem_Maxs(maxs);
        temperatureReturnPojo.setTem_Mins(mins);
        temperatureReturnPojo.setTem_Avgs(avgs);

        return temperatureReturnPojo;
    }
}
