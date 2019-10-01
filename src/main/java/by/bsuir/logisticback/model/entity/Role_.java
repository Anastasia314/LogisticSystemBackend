package by.bsuir.logisticback.model.entity;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Role.class)
public class Role_ {
    public static volatile SingularAttribute<Role, Long> id;
    public static volatile SingularAttribute<Role, String> role;
    public static volatile ListAttribute<Role, User> user;
}
