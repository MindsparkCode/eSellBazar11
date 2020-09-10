/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;

import com.shop.repository.MapRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Service
public class MapService {
    @Autowired
    MapRepository mapRepository;
    
}
