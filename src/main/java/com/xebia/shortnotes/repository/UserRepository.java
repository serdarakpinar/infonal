package com.xebia.shortnotes.repository;
import com.xebia.shortnotes.domain.User;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = User.class)
public interface UserRepository {

    List<User> findAll();
}
