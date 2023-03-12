package cn.czc.rural.controller;


import io.swagger.annotations.Api;

import io.swagger.v3.oas.annotations.tags.Tag;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;


/**
 * 后台用户管理Controller
 * @author czc
 */
@Controller
@Api(tags = "UmsAdminController")
@Tag(name = "UmsAdminController", description = "用户管理")
@RequestMapping("/admin")
public class UmsAdminController {

}
