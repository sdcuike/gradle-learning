package com.sdcuike.gradlelearning.controller;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author sdcuike
 * @date 2018/4/23
 */
@RestController
@RequestMapping("/demo")
public class DemoController {

    @PostMapping("/test")
    public DemoResponseDto test(@RequestBody DemoRequestDto demoRequestDto) {
        return new DemoResponseDto(0, "");
    }


    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class DemoRequestDto {

        private String name;
        private Integer age;

    }

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class DemoResponseDto {
        private Integer code;
        private String msg;

    }
}
