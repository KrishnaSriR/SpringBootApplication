package com.SpringClasses.DMS.Repository;

import org.springframework.data.repository.CrudRepository;

import com.SpringClasses.DMS.Models.Dog;

public interface DogRepository extends CrudRepository<Dog,Integer> {

}
