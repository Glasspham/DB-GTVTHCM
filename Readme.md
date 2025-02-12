# Cơ sở dữ liệu
| SQL | MYSQL | SQL SERVER | REDIS | POSTGRE SQL |
|----------|----------|----------|----------|----------|----------|
|<img src="https://github.com/devicons/devicon/blob/master/icons/azuresqldatabase/azuresqldatabase-original.svg" title="SQL"  alt="SQL" width="55" height="55"/>|<img src="https://github.com/devicons/devicon/blob/master/icons/mysql/mysql-original-wordmark.svg" title="MySQL" alt="MySQL" width="55" height="55"/>|<img src="https://github.com/devicons/devicon/blob/master/icons/microsoftsqlserver/microsoftsqlserver-original.svg" title="MySQL" alt="MySQL" width="55" height="55"/>|<img src="https://github.com/devicons/devicon/blob/master/icons/redis/redis-original-wordmark.svg" title="MySQL" alt="MySQL" width="55" height="55"/>|
<img src="https://github.com/devicons/devicon/blob/master/icons/postgresql/postgresql-plain-wordmark.svg" title="MySQL" alt="MySQL" width="55" height="55"| 

## Mô tả của Repository

### Tạo Database

Tạo sẵn 1 hệ thống cơ sở dữ liệu (_có sẵn data_) của các vấn đề:

#### Bản Tiếng Việt

1. Quản lý Sinh viên [(QLSV)](./Create/QLSV.sql).
2. Quản lý Hóa đơn [(QLHD)](./Create/QLHD.sql).
3. Quản lý Kho hàng [(QLKH)](./Create/QLKH.sql).
4. Quản lý Đơn đặt hàng [(QLDDH)](./Create/QLDDH.sql).
5. Quản lý Địa Lý Việt Nam [(DLVN)](./Create/DLVN.sql).

#### Bản Tiếng Anh

1. Student Management Database [(SMDB)](./Create/SMDB.sql).
2. Retail Invoice Database [(RIDB)](./Create/RIDB.sql).
3. Warehouse Management Database [(WMDB)](./Create/WMDB.sql).
4. Order Management Database [(OMDB)](./Create/OMDB.sql).
5. Vietnam Geographic Database [(VGDB)](./Create/VGDB.sql).

### Giải các câu truy vấn

Giải quyết các câu truy vấn được đưa ra để luyện tập với sql:

#### Bản Tiếng Việt

1. Quản lý Sinh viên [(QLSV)](./Query/QLSV.sql).
2. Quản lý Hóa đơn [(QLHD)](./Query/QLHD.sql).
3. Quản lý Kho hàng [(QLKH)](./Query/QLKH.sql).
4. Quản lý Đơn đặt hàng [(QLDDH)](./Query/QLDDH.sql).
5. Quản lý Địa Lý Việt Nam [(DLVN)](./Query/DLVN.sql).

#### Bản Tiếng Anh

1. Student Management Database [(SMDB)](./Query/SMDB.sql).
2. Retail Invoice Database [(RIDB)](./Query/RIDB.sql).
3. Warehouse Management Database [(WMDB)](./Query/WMDB.sql).
4. Order Management Database [(OMDB)](./Query/OMDB.sql).
5. Vietnam Geographic Database [(VGDB)](./Query/VGDB.sql).

## Cách dùng

Bạn chỉ cần tải về rồi chạy lệnh tạo ra container là xong!

#### Cách chạy cho ai không biết

_Step 1:_ Tải [Docker Desktop](https://www.docker.com/) vể.

Bước này lên gg hoặc youtube coi!

_Step 2:_ Tải Repository này về bằng git clone hoặc zip (tùy bạn).

_Step 3:_ Open `terminal` và trỏ đúng đến tới cái thư mục vừa tải về!

Cái thư mục mà chưa file `docker-compose.yml`.

Dùng lệnh cd! (Vấn đề này lên gg hoặc youtbe hoặc AI hỏi).

_Step 4:_ Chạy dòng lệnh sau để hệ thống Docker tự tải image và run container

```Docker
docker-compose up -d
Hoặc
docker compose up -d
```

Giờ ta dùng lệnh để check xem có gì chưa:

```Docker
Hiện những Container đang chạy
docker ps
Hoặc hiện tất cả Containers
docker ps -a
```

**Lưu ý:** Sẽ có tới 10 cái CSLD nếu bạn thấy thiếu thì dùng sau đây để check:
```Docker
docker logs <id_container or name_container>
```
Và lướt xem thử chỗ nào nó bắt đầu chạy `[Warn] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: ignoring /docker-entrypoint-initdb.d`. Xem lỗi gì và sửa lại!

Có thể vào Docker Desktop sẽ dễ coi hơn: Vào phần Containers thì sẽ thấy 1 container tên của thư mục (nếu bạn tải về không đổi tên thì nó sẽ là db-gtvthcm) chứa 1 container con có tên là db-1 (cái này có thể sửa trong phần docker-compose.yml -nó chỉ là tên nên sửa sao cũng được-).

_Step 5:_ Liên kết với 1 hệ thống để có thể chạy chương trình!

Có thể dùng extension [MySQL By Weijan Chen](https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-mysql-client2) của [vscode](https://code.visualstudio.com/) hoặc dùng [MySQL Workbench](https://dev.mysql.com/downloads/workbench/).

Đây sẽ là 1 số thông tin cần thiết để bạn kết nối:
```bash
Host: 127.0.0.1
Username: root
Port: 3306
Password: 123
```

# Thế là đã xong rồi! Chúc bạn học tốt!