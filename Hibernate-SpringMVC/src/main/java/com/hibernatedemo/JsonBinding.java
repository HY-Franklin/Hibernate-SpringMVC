package com.hibernatedemo;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;

public class JsonBinding {
    public static void main(String[] args) throws IOException {
        ObjectMapper objectMapper=new ObjectMapper();
        Customer customer=objectMapper.readValue(new File("src\\main\\java\\com\\hibernatedemo\\Customer.json"),Customer.class);
        System.out.println(customer.getFirstName());
    }
}
