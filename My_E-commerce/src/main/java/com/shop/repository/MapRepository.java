/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Repository
public class MapRepository {
    @Autowired
    private JdbcTemplate jdbctemplate;
    
    
}
