package by.bsuir.logisticback.service.impl;

import by.bsuir.logisticback.service.Service;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public abstract class AbstractService<T> implements Service<T> {
    protected abstract CrudRepository getCrudRepository();

    protected abstract JpaSpecificationExecutor getJpaSpecificationExecutor();

    @Override
    public void save(T entity) {
        getCrudRepository().save(entity);
    }

    @Override
    public Optional<T> find(long id) {
        return getCrudRepository().findById(id);
    }

    @Override
    public void delete(T entity) {
        getCrudRepository().delete(entity);
    }

    @Override
    public List<T> findAll() {
        return (List<T>) getCrudRepository().findAll();
    }
}
