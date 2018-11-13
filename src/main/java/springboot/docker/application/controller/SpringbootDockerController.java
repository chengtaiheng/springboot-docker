package springboot.docker.application.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * @author: 程泰恒
 * @date: 2018/11/12 19:49
 */
@Slf4j
@RestController
@RequestMapping("/test")
public class SpringbootDockerController {

    @GetMapping("/mdmd")
    public Map<String, Object> requireResponse() {
        log.debug("已经进入通信通道");
        Map response = new HashMap<String, Object>();
        response.put("洞拐洞拐", "我已收到");
        return response;
    }
}
