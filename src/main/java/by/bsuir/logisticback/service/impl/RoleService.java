package by.bsuir.logisticback.service.impl;


import by.bsuir.logisticback.model.entity.Role;
import by.bsuir.logisticback.service.Service;

public interface RoleService extends Service<Role> {
    Role find(String name);
}
