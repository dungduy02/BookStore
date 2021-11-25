/*
MySQL Backup
Database: bookstore
Backup Time: 2021-11-25 21:20:03
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `bookstore`.`address`;
DROP TABLE IF EXISTS `bookstore`.`author`;
DROP TABLE IF EXISTS `bookstore`.`blog`;
DROP TABLE IF EXISTS `bookstore`.`cart`;
DROP TABLE IF EXISTS `bookstore`.`category`;
DROP TABLE IF EXISTS `bookstore`.`comment`;
DROP TABLE IF EXISTS `bookstore`.`detail_cart`;
DROP TABLE IF EXISTS `bookstore`.`detail_order`;
DROP TABLE IF EXISTS `bookstore`.`detail_product`;
DROP TABLE IF EXISTS `bookstore`.`order`;
DROP TABLE IF EXISTS `bookstore`.`products`;
DROP TABLE IF EXISTS `bookstore`.`publisher`;
DROP TABLE IF EXISTS `bookstore`.`sale`;
DROP TABLE IF EXISTS `bookstore`.`user`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `permanent_residence` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `fk_blog_user_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Cart_user_1` (`user_id`) USING BTREE,
  CONSTRAINT `fk_Cart_user_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_comment_user_1` (`user_id`) USING BTREE,
  KEY `fk_comment_Products_1` (`product_id`) USING BTREE,
  CONSTRAINT `fk_comment_user_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `detail_cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  KEY `fk_detail_cart_Products_1` (`product_id`) USING BTREE,
  CONSTRAINT `fk_detail_cart_Cart_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `detail_order` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  KEY `fk_detail_order_Products_1` (`product_id`) USING BTREE,
  CONSTRAINT `fk_detail_order_order_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `detail_product` (
  `product_id` int(11) NOT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sale_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  KEY `fk_detail_product_publisher_1` (`publisher_id`) USING BTREE,
  KEY `fk_detail_product_category_1` (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `quanity` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_products_publisher_1` (`author_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price_sale` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `usename` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_user_address_1` (`address_id`) USING BTREE,
  CONSTRAINT `fk_user_address_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
BEGIN;
LOCK TABLES `bookstore`.`address` WRITE;
DELETE FROM `bookstore`.`address`;
INSERT INTO `bookstore`.`address` (`id`,`permanent_residence`,`city`,`country`) VALUES (0, 'abc', 'bcd', 'def');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`author` WRITE;
DELETE FROM `bookstore`.`author`;
INSERT INTO `bookstore`.`author` (`id`,`name`) VALUES (1, 'Paulo Coelho'),(2, 'José Mauro de Vasconcelos'),(3, 'Hae Min'),(4, 'Mario Puzo'),(5, 'Nguyễn Nhật Ánh'),(6, 'Nguyên Phong'),(7, 'Andrea Hirata'),(8, 'Madeline Miller'),(9, 'Khaled Hosseini'),(10, 'Luis Sepúlveda'),(11, 'Miêu Công Tử'),(12, 'Nguyễn Ngọc Thuần'),(13, 'Nguyễn Hữu Nam'),(14, 'Agatha Christie'),(15, 'Nina LaCour'),(16, 'Erich Maria Remarque'),(17, 'Sidney Sheldon'),(18, 'André Aciman');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`blog` WRITE;
DELETE FROM `bookstore`.`blog`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`cart` WRITE;
DELETE FROM `bookstore`.`cart`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`category` WRITE;
DELETE FROM `bookstore`.`category`;
INSERT INTO `bookstore`.`category` (`id`,`name`) VALUES (1, 'Tiểu thuyết');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`comment` WRITE;
DELETE FROM `bookstore`.`comment`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`detail_cart` WRITE;
DELETE FROM `bookstore`.`detail_cart`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`detail_order` WRITE;
DELETE FROM `bookstore`.`detail_order`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`detail_product` WRITE;
DELETE FROM `bookstore`.`detail_product`;
INSERT INTO `bookstore`.`detail_product` (`product_id`,`publisher_id`,`category_id`,`sale_id`) VALUES (0, 5, NULL, NULL),(1, 1, NULL, '1'),(2, 1, NULL, '1'),(3, 1, NULL, '1'),(4, 2, NULL, '1'),(5, 3, NULL, '1'),(6, 4, NULL, '1'),(7, 1, NULL, '1'),(8, 3, NULL, '1'),(9, 3, NULL, '1'),(10, 3, NULL, '1'),(11, 3, NULL, '1'),(13, 6, NULL, '1'),(14, 1, NULL, '1'),(15, 7, NULL, '1'),(16, 3, NULL, '1'),(17, 3, NULL, '1'),(18, 3, NULL, '1'),(19, 8, NULL, '1'),(20, 3, NULL, '1'),(21, 5, NULL, '1'),(22, 3, NULL, '1'),(23, 8, NULL, '1'),(24, 8, NULL, '1');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`order` WRITE;
DELETE FROM `bookstore`.`order`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`products` WRITE;
DELETE FROM `bookstore`.`products`;
INSERT INTO `bookstore`.`products` (`id`,`name`,`picture`,`description`,`price`,`quanity`,`author_id`) VALUES (0, 'Tìm Em Nơi Anh - Find Me', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Ftim%20em%20noi%20anh.jpg?alt=media&token=56439706-ff5f-4333-9056-e9b3d4fc5372', 'Đây là cuốn tiếp theo sau \"Gọi em bằng tên anh\" (Call me by your name). Những nhân vật gặp lại, và câu chuyện nhiều năm sau, khi họ đều đã lớn tuổi hơn và có những ngã rẽ riêng trong cuộc đời mình.\r\nTác giả chia sẻ thêm về quyết định viết tiếp câu chuyện:', 87200, NULL, 18),(1, 'Nhà Giả Kim (Tái Bản 2020)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fnha_gia_kim.jpg?alt=media&token=685ccefe-8fc4-4c74-a08b-ed4d5400bae5', 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị,', 67150, NULL, 1),(2, 'Cây Cam Ngọt Của Tôi', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fcay_cam_ngot_cua_toi.jpg?alt=media&token=76128e8f-acd9-4add-a634-0220c27f5567', 'Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist\r\n\r\n“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm ta', 91800, NULL, 2),(3, 'Bước Chậm Lại Giữa Thế Gian Vội Vã (Tái Bản 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fbuoc_cham_lai_giua_the_gian_voi_va.jpg?alt=media&token=04ec1e26-7402-49f2-ba9d-134fa3d81e3f', 'Bước Chậm Lại Giữa Thế Gian Vội Vã (Tái Bản 2018)\r\n\r\nChen vai thích cánh để có một chỗ bám trên xe buýt giờ đi làm, nhích từng xentimét bánh xe trên đường lúc tan sở, quay cuồng với thi cử và tiến độ công việc, lu bù vướng mắc trong những mối quan hệ cả t', 68000, NULL, 3),(4, 'Bố Già (Đông A)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fbo%20gia.jpg?alt=media&token=5e3d32dd-feed-44f1-a861-ff956a67d062', 'Bố Già (Đông A)\r\n\r\nThế giới ngầm được phản ánh trong tiểu thuyết Bố già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những ', 71500, NULL, 4),(5, 'Con Chim Xanh Biếc Bay Về - Tặng Kèm 6 Postcard', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fcon%20chim%20xanh%20biec%20bay%20ve.jpg?alt=media&token=0347d6e2-beba-4796-b801-4b0d1a7b33b9', 'Con Chim Xanh Biếc Bay Về\r\n\r\nKhông giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cản', 112500, NULL, 5),(6, 'Dấu Chân Trên Cát (Tái Bản 2020)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fdau%20chan%20tren%20cat.jpg?alt=media&token=3bae80ce-d35c-431e-8f17-efb3a7793f51', '“Dấu chân trên cát” là tác phẩm được dịch giả Nguyên Phong phóng tác kể về xã hội Ai Cập thế kỷ thứ XIV trước CN, qua lời kể của nhân vật chính -  Sinuhe.\r\n\r\nNgày nay, người ta biết đến triều đại các vua chúa Ai Cập thời cổ qua sách vở của người Hy Lạp.', 100640, NULL, 6),(7, 'Chiến Binh Cầu Vồng (Tái Bản 2020)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fchien%20binh%20cau%20vong.jpg?alt=media&token=8695de7f-c6cb-4f3b-9fb3-ac8ba98276e9', 'Một tác phẩm có tầm ảnh hưởng sâu rộng nhất Indonesia\r\n\r\n“Thầy Harfan và cô Mus nghèo khổ đã mang đến cho tôi tuổi thơ đẹp nhất, tình bạn đẹp nhất, và tâm hồn phong phú, một thứ gì đó vô giá, thậm chí còn có giá trị hơn những khao khát mơ ước. Có thể tôi ', 92650, NULL, 7),(8, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ (Bìa Mềm) (Tái Bản 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fcho%20toi%20xin%201%20ve%20di%20tuoi%20th%C6%A1.jpg?alt=media&token=d3f574bc-c0ed-4535-b01b-1daa12b95753', 'Trong Cho tôi xin một vé đi tuổi thơ, nhà văn Nguyễn Nhật Ánh mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dộ', 64000, NULL, 5),(9, 'Tôi Là Bêtô (Tái Bản 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Ftoi%20la%20beto.jpg?alt=media&token=2b509c92-0c83-4b07-9221-60500cbebfc0', 'Truyện Tôi là Bêtô là sáng tác mới nhất của nhà văn Nguyễn Nhật Ánh được viết theo phong cách hoàn toàn khác so với những tác phẩm trước đây của ông. Những mẩu chuyện, hay những phát hiện của chú chó Bêtô đầy thú vị, vừa hài hước, vừa chiêm nghiệm một các', 72250, NULL, 5),(10, 'Cảm Ơn Người Lớn (Bìa Mềm)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fcam%20on%20nguoi%20lon.jpg?alt=media&token=dfa6afc3-2f07-4149-9ae3-758cd539fb89', 'Cảm Ơn Người Lớn (Bìa Mềm)\r\n\r\nCảm ơn người lớn - một áng văn lãng mạn trong giọng hài hước đặc biệt “dành cho trẻ em, và những ai từng là trẻ em”..\r\n\r\nBạn sẽ gặp lại Mùi, Tủn, Tí sún, Hải cò… của Cho tôi xin một vé đi tuổi thơ, cùng chơi những trò chơi qu', 88000, NULL, 5),(11, 'Bàn Có 5 Chỗ Ngồi (Tái Bản 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fban%20co%205%20cho%20ngoi.jpg?alt=media&token=2a12f6de-9ad0-4ccd-ae06-0d169f06fddb', 'Tác giả quen thuộc của thiếu nhi, của tuổi ô mai. Những tập truyện của anh luôn dí dỏm, hài hước, đem lại nhiều cảm xúc, nhiều bài học nhẹ nhàng cho lứa tuổi học trò. Hãy đọc để cùng gặp những nhân vật rất dễ thương, hoặc phải vượt qua những hoàn cảnh khó', 44550, NULL, 5),(12, 'Trường Ca Achilles', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Ftruong%20ca.jpg?alt=media&token=6bfcb27a-dca1-4966-b5f5-00bbef057962', 'HUYỀN THOẠI BẮT ĐẦU…\r\n\r\nHy Lạp vào thời hoàng kim của các anh hùng. Patroclus là một hoàng tử trẻ vụng về, bị trục xuất tới vương quốc Phthia và được nuôi dạy dưới sự che chở của vua Peleus cùng cậu con trai hoàng kim của ngài, Achilles. “Người Hy Lạp vĩ ', 148200, NULL, 8),(14, 'Chuyện Con Ốc Sên Muốn Biết Tại Sao Nó Chậm Chạp (Tái Bản 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fchuyen%20con%20oc%20sen%20muon%20biet%20tai%20sao%20no%20cham%20cham.jpg?alt=media&token=7b1f75ad-ff71-4b53-8f57-1e3f88a6218e', 'Đây là câu chuyện về một bầy ốc sên sống tại Quê Hương Bồ Công Anh, dưới tán lá ô rô rậm rạp, vốn vẫn sống một cuộc đời chậm chạp, lặng lẽ, và chỉ gọi nhau đơn giản là “sên”, cho tới khi một con trong số chúng nghĩ rằng thật bất công khi không có một cái ', 33150, NULL, 10),(15, '999 Lá Thư Gửi Cho Chính Mình - Mong Bạn Trở Thành Phiên Bản Hoàn Hảo Nhất (Tập 1) - Tái Bản 2021', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2F999%20la%20thu.jpg?alt=media&token=3fd8b810-1802-445d-9b4e-616e916be008', '“999 lá thư gửi cho chính mình” là một tác phẩm đặc biệt đầy cảm hứng đến từ tác giả văn học mạng nổi tiếng Miêu Công Tử, mang một màu sắc riêng biệt qua những lời thư nhỏ nhắn nhủ đến người đọc về giá trị cuộc sống, tình yêu, tuổi trẻ, tương lai… v.v.. đ', 105780, NULL, 11),(16, 'Có Hai Con Mèo Ngồi Bên Cửa Sổ (Tái Bản 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fco%202%20con%20meo%20ngoi%20ben%20cua%20so.jpg?alt=media&token=2caceff7-3c19-40c6-a546-7bdcde57f1ba', 'Có Hai Con Mèo Ngồi Bên Cửa Sổ (Tái Bản 2018)\r\n\r\nÓ HAI CON MÈO NGỒI BÊN CỬA SỔ là tác phẩm đầu tiên của nhà văn Nguyễn Nhật Ánh viết theo thể loại đồng thoại. Đặc biệt hơn nữa là viết về tình bạn của hai loài vốn là thù địch của nhau mèo và chuột. Đó là t', 72250, NULL, 5),(17, 'Mắt Biếc (Tái Bản 2019)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fmat%20biec.jpg?alt=media&token=47136697-e742-45df-ad48-f8ff89b168c6', 'Mắt Biếc (Tái Bản 2019)\r\n\r\nMắt biếc là một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn Nguyễn Nhật Ánh. Tác phẩm này cũng đã được dịch giả Kato Sakae dịch sang tiếng Nhật để giới thiệu với độc giả Nhật Bản.\r\n\r\n“Tôi gửi tình yêu cho mùa hè,', 93000, NULL, 5),(18, 'Vừa Nhắm Mắt Vừa Mở Cửa Sổ (Tái Bản 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fvua%20nham%20mat%20vua%20mo%20cua%20so.jpg?alt=media&token=e5bcc825-2dd9-40cf-a6fe-bb7937b667dd', 'Vừa Nhắm Mắt Vừa Mở Cửa Sổ\r\n\r\nTập sách hay, dễ thương, và còn nhiều mỹ từ khác nữa xứng đáng được dành cho nó. Hãy tìm đọc nội dung thay vì đọc trước phần giới thiệu sách này viết gì…. Như thế, bạn sẽ càng thích thú hơn với “Vừa nhắm mắt, vừa mở cửa sổ”.', 48950, NULL, 12),(19, 'Vua Thành Thái (Tiểu Thuyết Lịch Sử)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fvua%20thanh%20thai.jpg?alt=media&token=5f00a052-0b55-4633-86a7-7ed9694608c0', 'Một cựu vương đã chấp nhận bị phế truất khỏi ngai vàng để rồi bước vào cuộc lưu đày biệt xứ ở đảo La Réunion (Phi châu), thay vì làm ông vua bù nhìn dưới ách cai trị của thực dân Pháp. Một cựu vương trong những ngày tháng lưu vong đã chọn lao động chân ta', 85200, NULL, 13),(20, 'Thung Lũng Bất Hạnh - The Hollow', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fthung%20lung%20bat%20hanh.jpg?alt=media&token=b9533a9b-5a92-455f-92ca-8006e6166f58', 'Khi có mặt tại trang viên Thung Lũng để ăn trưa theo lời mời của bà Lucy Angkatell, thám tử Hercule Poirot không mấy vui khi thấy những vị khách đã dàn dựng một hiện trường án mạng bên hồ bơi để trêu chọc mình.\r\nThật không may, đó là thật. Lúc những giọt ', 104400, NULL, 14),(21, 'Ba Nghìn Dặm - We Are Okay', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fba%20nghin%20dam.jpg?alt=media&token=d8180d47-9da0-457a-b44f-f9fe576c9781', 'Tác phẩm đạt giải thưởng Printz năm 2018\r\n\r\nMarin chưa từng liên lạc với ai trong quãng đời ngày xưa của mình kể từ khi cô bỏ lại mọi thứ sau lưng. Không ai biết được sự thật về những tuần cuối cùng đó. Kể cả người bạn thân Mabel của cô. Nhưng ngay cả khi', 62640, NULL, 15),(22, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh (Bản In Mới - 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Ftoi%20thay%20hoa%20vang%20tren%20co%20xanh.jpg?alt=media&token=a45b6221-cea9-4484-9bec-a5ddb90debd4', 'Những câu chuyện nhỏ xảy ra ở một ngôi làng nhỏ: chuyện người, chuyện cóc, chuyện ma, chuyện công chúa và hoàng tử , rồi chuyện đói ăn, cháy nhà, lụt lội,... Bối cảnh là trường học, nhà trong xóm, bãi tha ma. Dẫn chuyện là cậu bé 15 tuổi tên Thiều. Thiều ', 100000, NULL, 5),(23, 'Phía Tây Không Có Gì Lạ', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fphia%20tay%20khong%20c%C3%B3%20g%C3%AC%20la.jpg?alt=media&token=6f9e9762-06c2-4a72-8265-c0e5cdca6463', 'Phía Tây Không Có Gì Lạ\r\n\r\nThế chiến thứ nhất nổ ra, những chàng trai đang ngồi trên ghế nhà trường bị chuyển thẳng ra mặt trận. Tại đây sự khốc liệt của chiến tranh đã khiến họ tê dại khi bom đạn không chỉ tước đi những phần cơ thể mà còn cả tâm hồn. Thế', 39000, NULL, 16),(24, 'Hãy Kể Giấc Mơ Của Em (Tái Bản 2018)', 'https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/tieuthuyet%2Fhay%20ke%20giac%20mo%20cua%20em.jpg?alt=media&token=6fca8582-be75-4f76-981d-fa848812b1a4', 'Ai là kẻ đã gây ra những vụ giết người hàng loạt với thủ đoạn vô cùng tàn độc? Tại sao những nạn nhân đều là đàn ông và thi thể họ đều bị biến mất bộ phận sinh dục? Sự hiện hữu của Toni, nhục cảm, sôi nổi nhưng đầy hận thù... Alette, đáng yêu và kiêu hãnh', 86900, NULL, 17);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`publisher` WRITE;
DELETE FROM `bookstore`.`publisher`;
INSERT INTO `bookstore`.`publisher` (`id`,`name`) VALUES (1, 'NXB Hội Nhà Văn'),(2, 'NXB Dân Trí'),(3, 'NXB Trẻ'),(4, 'NXB Tổng Hợp TPHCM'),(5, 'NXB Kim Đồng'),(6, 'NXB Phụ nữ'),(7, 'NXB Thanh Niên'),(8, 'NXB Văn Học');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`sale` WRITE;
DELETE FROM `bookstore`.`sale`;
INSERT INTO `bookstore`.`sale` (`id`,`name`,`price_sale`) VALUES (1, 'Không khuyến mãi', 0);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `bookstore`.`user` WRITE;
DELETE FROM `bookstore`.`user`;
INSERT INTO `bookstore`.`user` (`id`,`usename`,`password`,`fullname`,`email`,`address_id`,`sex`,`date`,`phone`) VALUES (0, 'dungduy02', '123', 'Nguyen Duy Dung', 'dungduy020@gmail.com', 0, 'nam', '0000-00-00 00:00:00', '0987654332');
UNLOCK TABLES;
COMMIT;
