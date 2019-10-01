package by.bsuir.logisticback.repository.specification.role;

import by.bsuir.logisticback.model.entity.Role;
import org.springframework.data.jpa.domain.Specification;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

public class RoleByNameSpecification implements Specification<Role> {
    private String name;

    public RoleByNameSpecification(String name) {
        this.name = name;
    }

    @Override
    public Predicate toPredicate(Root<Role> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
        return criteriaBuilder.equal(root.get("role"), name);
    }
}
