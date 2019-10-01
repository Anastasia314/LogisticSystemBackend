package by.bsuir.logisticback.service;


import java.util.List;
import java.util.Optional;

public interface Service<T> {
    void save(T entity);

    Optional<T> find(long id);

    void delete(T entity);

    List<T> findAll();
}
