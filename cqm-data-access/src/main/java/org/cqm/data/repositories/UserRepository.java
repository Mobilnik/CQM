package org.cqm.data.repositories;

import org.cqm.data.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    @Query("select u from User u where u.lastName = :lastName")
    List<String> findByLastName(@Param("lastName") String lastName);
}
