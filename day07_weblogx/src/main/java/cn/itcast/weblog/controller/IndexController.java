package cn.itcast.weblog.controller;

import cn.itcast.weblog.pojo.*;
import cn.itcast.weblog.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

    @RequestMapping("/index.action")
    public String skipToIndex(){
        return "index";
    }

    @Autowired
    private MinTemperatureService temperatureService;
    @RequestMapping("/getMinTemperature.action")
    @ResponseBody
    public MinTemperaturePojo getMinTemperature(){
        MinTemperaturePojo minTemperaturePojo =  temperatureService.getAllMinTemperature();
        System.out.println(minTemperaturePojo);
        return minTemperaturePojo;
    }

    @Autowired
    private TemperatureService tempService;
    @RequestMapping("/getTemperature.action")
    @ResponseBody
    public TemperatureReturnPojo getTemperature(){
        TemperatureReturnPojo temperaturePojo =  tempService.getAllTemperature();
        System.out.println(temperaturePojo);
        return temperaturePojo;
    }
}
