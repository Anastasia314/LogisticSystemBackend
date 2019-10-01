package by.bsuir.logisticback.service.impl;

import by.bsuir.logisticback.model.entity.User;
import by.bsuir.logisticback.repository.specification.UserRepository;
import by.bsuir.logisticback.repository.specification.user.UserByLoginSpecification;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Transactional
@Service
public class UserServiceImpl extends AbstractService<User> implements UserService {

    @Autowired
    private UserRepository repository;

    @Override
    protected CrudRepository getCrudRepository() {
        return repository;
    }

    @Override
    protected JpaSpecificationExecutor getJpaSpecificationExecutor() {
        return repository;
    }

    @Override
    public Optional<User> find(String login) {
        UserByLoginSpecification specification = new UserByLoginSpecification(login);
        return repository.findOne(specification);
    }
}
