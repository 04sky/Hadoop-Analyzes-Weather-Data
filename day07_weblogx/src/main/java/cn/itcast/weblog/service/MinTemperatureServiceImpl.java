package cn.itcast.weblog.service;

import cn.itcast.weblog.mapper.MinTempMapper;
import cn.itcast.weblog.pojo.MinTempPojo;
import cn.itcast.weblog.pojo.MinTemperaturePojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
//@Transactional
public class MinTemperatureServiceImpl implements MinTemperatureService {

    @Autowired
    private MinTempMapper minTempMapper;
    @Override
    public MinTemperaturePojo getAllMinTemperature() {

        MinTemperaturePojo minTemperaturePojo = new MinTemperaturePojo();
        ArrayList<String> dates = new ArrayList<>();
        ArrayList<Integer> numbers = new ArrayList<>();

        List<MinTempPojo> allMinTemp = minTempMapper.getAllMinTemp();
        for (MinTempPojo pojo : allMinTemp) {
            dates.add(pojo.getT_day());
            numbers.add(pojo.getT_number());
        }
        minTemperaturePojo.settDay(dates);
        minTemperaturePojo.settNumber(numbers);
        return minTemperaturePojo;
    }
}
