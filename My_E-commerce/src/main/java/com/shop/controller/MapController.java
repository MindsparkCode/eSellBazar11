/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.controller;

import com.shop.service.MapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Controller
@RequestMapping("")
public class MapController {
    @Autowired
    MapService mapService;
    
}
