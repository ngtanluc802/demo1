# Demo1 - Spring Boot REST API

## Mô tả
Dự án Spring Boot RESTful API với MySQL, được tự động build và deploy lên Docker Hub thông qua GitHub Actions.

## Công nghệ sử dụng
- Java 21
- Spring Boot 3.2.4
- Spring Data JPA
- MySQL 8.0
- Docker & Docker Compose
- GitHub Actions (CI/CD)

## API Endpoints

| Method | URL | Chức năng |
|--------|-----|-----------|
| GET    | /api/products    | Lấy danh sách sản phẩm |
| POST   | /api/products    | Thêm sản phẩm mới |
| PUT    | /api/products/{id} | Cập nhật sản phẩm |
| DELETE | /api/products/{id} | Xóa sản phẩm |
| GET    | /api/categories  | Lấy danh sách danh mục |
| POST   | /api/categories  | Thêm danh mục mới |
| GET    | /api/users       | Lấy danh sách users |
| POST   | /api/users       | Thêm user mới |

## Chạy với Docker Compose
```bash
docker compose up -d
```
Truy cập tại: http://localhost:8080

## Docker Hub
Image: `nguyentanluc/demo1:latest`

## CI/CD
Mỗi khi push code lên nhánh `main`, GitHub Actions sẽ tự động build và push image lên Docker Hub.

> 🕐 Cập nhật lần cuối: 2026-03-27
