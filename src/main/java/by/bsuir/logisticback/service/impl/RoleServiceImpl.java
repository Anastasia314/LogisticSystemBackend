package by.bsuir.logisticback.service.impl;

import by.bsuir.logisticback.model.entity.Role;
import by.bsuir.logisticback.repository.specification.RoleRepository;
import by.bsuir.logisticback.repository.specification.role.RoleByNameSpecification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class RoleServiceImpl extends AbstractService<Role> implements RoleService {

    @Autowired
    private RoleRepository repository;

    @Override
    protected CrudRepository getCrudRepository() {
        return repository;
    }

    @Override
    protected JpaSpecificationExecutor getJpaSpecificationExecutor() {
        return repository;
    }

    @Override
    public Role find(String name) {
        return repository.findOne(new RoleByNameSpecification(name)).get();
    }
}
