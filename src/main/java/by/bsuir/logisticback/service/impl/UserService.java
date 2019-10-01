package by.bsuir.logisticback.service.impl;


import by.bsuir.logisticback.model.entity.User;
import by.bsuir.logisticback.service.Service;

import java.util.Optional;

public interface UserService extends Service<User> {
    Optional<User> find(String login);
}
