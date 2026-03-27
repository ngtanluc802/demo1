package com.example.demo1.repository;

import com.example.demo1.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository // Đánh dấu đây là tầng thao tác dữ liệu
public interface UserRepository extends JpaRepository<User, Long> {
    // Không cần viết gì thêm, JpaRepository đã có sẵn các hàm save, findAll, deleteById...
}