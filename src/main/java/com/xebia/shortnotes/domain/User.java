package com.xebia.shortnotes.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooMongoEntity
public class User {

    /**
     */
    @NotNull
    public String name;

    /**
     */
    @NotNull
    public String lastName;

    /**
     */
    @NotNull
    public String phone;
}
