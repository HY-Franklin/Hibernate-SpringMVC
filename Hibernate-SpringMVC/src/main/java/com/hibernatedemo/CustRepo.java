package com.hibernatedemo;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CustRepo extends JpaRepository<Customer,Integer> {
    @Override
    List<Customer> findAll(Sort sort);


}
