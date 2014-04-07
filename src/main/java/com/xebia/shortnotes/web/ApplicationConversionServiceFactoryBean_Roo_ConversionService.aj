// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.xebia.shortnotes.web;

import com.xebia.shortnotes.domain.User;
import com.xebia.shortnotes.service.UserService;
import com.xebia.shortnotes.web.ApplicationConversionServiceFactoryBean;
import java.math.BigInteger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    UserService ApplicationConversionServiceFactoryBean.userService;
    
    public Converter<User, String> ApplicationConversionServiceFactoryBean.getUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.xebia.shortnotes.domain.User, java.lang.String>() {
            public String convert(User user) {
                return new StringBuilder().append(user.getName()).append(' ').append(user.getLastName()).append(' ').append(user.getPhone()).toString();
            }
        };
    }
    
    public Converter<BigInteger, User> ApplicationConversionServiceFactoryBean.getIdToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigInteger, com.xebia.shortnotes.domain.User>() {
            public com.xebia.shortnotes.domain.User convert(java.math.BigInteger id) {
                return userService.findUser(id);
            }
        };
    }
    
    public Converter<String, User> ApplicationConversionServiceFactoryBean.getStringToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.xebia.shortnotes.domain.User>() {
            public com.xebia.shortnotes.domain.User convert(String id) {
                return getObject().convert(getObject().convert(id, BigInteger.class), User.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getUserToStringConverter());
        registry.addConverter(getIdToUserConverter());
        registry.addConverter(getStringToUserConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}