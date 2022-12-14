## User 1
INSERT INTO image (alt_text, image_url) VALUES ( 'perfil', 'https://media.istockphoto.com/id/517234226/photo/i-see-no-good-reason-to-act-my-age.jpg?s=612x612&w=0&k=20&c=qx2j21ZtwPWJuvrLD8uvegXz9z4YSQQnflUyGlBkyic=' );

INSERT INTO users ( bio, date_of_birth, full_name, password, profession, phone_number, profile_picture_id, username ) VALUES ( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non ipsum et', '1984-04-25', 'Olivia Vanessa Assis', '8920ec21315262a35479bfca7de004dfebe8df8f', 'Analista de Pesquisa de Mercado', '(24) 98934-9593', 1, 'tst.olivia@teste.com.br' );

## ------ Recipe 1 - foto 2
INSERT INTO image (alt_text, image_url) VALUES ( 'Salpicão tradicional', 'https://s2.glbimg.com/u9kstOm3k0vIImlaNSkcp9qaCqY=/0x0:1000x667/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/r/u/t4X4VuRwaKnmRygd5D6A/salpicao-is-typical-brazilian-salad-made-with-shredded-chicken-raisin-grated-carrot-potato-sticks-mayonnaise.jpg' );

INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Salpicão tradicional', 'Receita de salpicão simples e rápida: a receita leva frango desfiado, cenoura, azeitona, pimentão, maçã, cebola, uva-passa e outros ingredientes econômicos. Tradição para as famílias brasileiras, o salpicão tradicional é uma receita muito fácil, econômica e prática.', '1:05 minutos', 'MEAL', '1. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. 2. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. 3. Mi sit amet mauris commodo quis imperdiet massa tincidunt nunc. 4. Nibh nisl condimentum id venenatis a condimentum vitae. Sit amet justo donec enim diam vulputate. 5. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim.', 2, '2022-01-10 08:48:12');

## ----- Recipe 2 - foto 3
INSERT INTO image (alt_text, image_url) VALUES ( 'Macarrão simples com Calabresa', 'https://t2.rg.ltmcdn.com/pt/posts/3/2/6/macarrao_com_calabresa_5623_600.jpg');

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ( 'Macarrão simples com calabresa', 'Um macarrão delicioso e simples para aquele almoço casual que a gente ama, né? Uma receita simples e saborosa com calabresa que vai fazer o seu dia.', '40 à 1:30 minutos', 'PASTA', '1. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. 2. Cursus vitae congue mauris rhoncus. Aliquet risus feugiat in ante metus dictum at tempor. 3. Sit amet justo donec enim diam vulputate. Lectus urna duis convallis convallis. 4. Pretium fusce id velit ut tortor pretium viverra. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. Amet cursus sit amet dictum sit amet justo. 5. Libero nunc consequat interdum varius. Volutpat diam ut venenatis tellus in metus vulputate eu', 3, '2022-02-28 12:38:34');

## -- adding recipe to user
INSERT INTO users_recipes (user_id, recipe_id) VALUES (1, 1);
INSERT INTO users_recipes (user_id, recipe_id) VALUES (1, 2);

## ===============================================================================================================

## User 2
INSERT INTO image (alt_text, image_url) VALUES ( 'perfil', 'https://img.freepik.com/free-photo/half-profile-image-beautiful-young-woman-with-bob-hairdo-posing-gazing-with-eyes-full-reproach-suspicion-human-facial-expressions-emotions-reaction-feelings_343059-4660.jpg?w=2000');
INSERT INTO users (bio, date_of_birth, full_name, password, profession, phone_number, profile_picture_id, username ) VALUES ( 'O nosso passado, aí tendes o que nós somos. Não há outra forma de julgar as pessoas.', '1994-02-23', 'Juliana Adriana Novaes', 'df066fdf144e740d6ae6ff3da65f7d78fe530cef', 'Especialista em Análises contemporâneas', '(21) 92741-4170', 4, 'tst.julianaadriana@test.com' );

## ----- Recipe 3 - foto 5
INSERT INTO image (alt_text, image_url) VALUES ( 'Homemade Cherry Limeade', 'https://www.southernliving.com/thmb/RT1t_s3oV4MvvErMLR1WA9G6G28=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/4ab70ff2-4373-4805-985f-005ee5256743_0-76feabfb1458442d8aaef8e5bd1bcc7e.png' );

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Homemade Cherry Limeade','Don’t prep this one too far in advance or it will go flat. This fun drink reminds us of summer, so serve it for gamedays while it’s still hot out.','14 minutos','DRINK','1. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. 2. Cursus vitae congue mauris rhoncus. Aliquet risus feugiat in ante metus dictum at tempor. 3. Sit amet justo donec enim diam vulputate. Lectus urna duis convallis convallis. 4. Pretium fusce id velit ut tortor pretium viverra. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. Amet cursus sit amet dictum sit amet justo. 5. Libero nunc consequat interdum varius. Volutpat diam ut venenatis tellus in metus vulputate eu',5,'2022-03-12 18:43:52');

## ----- Recipe 4 - foto 6
INSERT INTO image (alt_text, image_url) VALUES ('Batata frita e ketchup','https://i1.wp.com/smittenkitchen.com/wp-content/uploads//2017/03/easier-french-fries.jpg?fit=1200%2C800&ssl=1');

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Batata frita e Ketchup','Tincidunt id aliquet risus feugiat in ante metus dictum at. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. ','20 minutos','SNACK','1. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. 2. Cursus vitae congue mauris rhoncus. Aliquet risus feugiat in ante metus dictum at tempor. 3. Sit amet justo donec enim diam vulputate. Lectus urna duis convallis convallis. 4. Pretium fusce id velit ut tortor pretium viverra. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. Amet cursus sit amet dictum sit amet justo. 5. Libero nunc consequat interdum varius. Volutpat diam ut venenatis tellus in metus vulputate eu',6,'2022-03-14 02:12:48');

## ----- Recipe 5 - foto 7
INSERT INTO image (alt_text, image_url) VALUES ('Macarrão caracollino','https://renata.com.br/images/receitas/43/renata-imagem-receitas-macarrao-alla-norma-share.jpg');

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Macarrão caracollino (encaracolado)','Ornare lectus sit amet est. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor purus. Cras ornare arcu dui vivamus arcu felis bibendum.','40 à 1:30 minutos','PASTA','1. Lectus nulla at volutpat diam ut venenatis tellus in metus. Pretium fusce id velit ut tortor pretium. 2. Aliquet nec ullamcorper sit amet. Vehicula ipsum a arcu cursus. Sit amet massa vitae tortor condimentum lacinia quis vel eros. 3. Porta non pulvinar neque laoreet suspendisse. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Aliquam id diam maecenas ultricies. Nunc mattis enim ut tellus elementum. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. 4. Eget sit amet tellus cras adipiscing enim eu turpis egestas.',7,'2022-03-15 12:49:22');

INSERT INTO users_recipes (user_id, recipe_id) VALUES (2, 3);
INSERT INTO users_recipes (user_id, recipe_id) VALUES (2, 4);
INSERT INTO users_recipes (user_id, recipe_id) VALUES (2, 5);

## ===============================================================================================================

## User 3
INSERT INTO image (alt_text, image_url) VALUES ('perfil','https://www.wsb.com/wp-content/uploads/2021/06/Krawcheck_Sallie_PROMOPIC-682x830.jpg?bust=d5ab10156c79b246b18ebd552e1d7632');
INSERT INTO users (bio,date_of_birth,full_name,password,profession,phone_number,profile_picture_id,username) VALUES ('Enim neque volutpat ac tincidunt vitae semper quis lectus.','1985-12-10','Lúcia Aline Mirella Bernardes','18bf5f5124ea69d8a9eb343651bad9bff685c2cb','Design de Ambientes','(48) 99514-5754',8,'tst.lucialine.mirela@test.com');

## ----- Recipe 6 - foto 9
INSERT INTO image (alt_text, image_url) VALUES ('Bolo de macaracuja','https://www.oldenburger-professional.com/fileadmin/recipes/Passionfruit_Cake.jpg');

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Bolo de maracuja cremoso','Mauris cursus mattis molestie a iaculis at erat pellentesque Maracuja.','40 à 1:30 minutos','DESSERT','1. Eget duis at tellus at urna condimentum mattis pellentesque id. Lorem ipsum dolor sit amet consectetur adipiscing. 2. Lorem ipsum dolor sit amet consectetur adipiscing. 3. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Urna nunc id cursus metus aliquam eleifend mi. Vitae elementum curabitur vitae nunc sed. 4. Quis lectus nulla at volutpat diam ut venenatis tellus. Tincidunt vitae semper quis lectus nulla at volutpat. Faucibus interdum posuere lorem ipsum. Natoque penatibus et magnis dis. 5. Eu facilisis sed odio morbi quis. Gravida cum sociis natoque penatibus et magnis dis parturient montes.',9,'2022-03-18 23:01:54');

INSERT INTO users_recipes (user_id, recipe_id) VALUES (3, 6);

## User 4 - foto 10
INSERT INTO image (alt_text, image_url) VALUES ('perfil','https://i.pinimg.com/474x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg');
INSERT INTO users (bio,date_of_birth,full_name,password,profession,phone_number,profile_picture_id,username) VALUES (	'A lacus vestibulum sed arcu non. In fermentum u facilisis sed odio morbi quis.',  '1991-09-29',  'Noah Henrique de Paula',	'8920ec21315262a35479bfca7de004dfebe8df8f',  'Fiscal de Transportes Públicos',  '(65) 98183-6997',  10,  'tst.noah.tst@teste.com.br');

## ------ Recipe 7 - foto 11
INSERT INTO image (alt_text, image_url) VALUES (	'Lemonade Iced Tea',	'https://www.seriouseats.com/thmb/akXUp8i_4NTsbGjDEyHJOx4lEzE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/best-arnold-palmer-iced-tea-lemonade-recipe-hero-03_1-3b9d59fd281242caa5e4b3e38d22d209.JPG');

INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Lemonade Iced Tea','Limonada de chá gelado para refrescar a sua vida. Que tal se aventurar um pouco nesses sabores refrescantes?','12 - 25 minutos','DRINK','1. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. 2. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. 3. Mi sit amet mauris commodo quis imperdiet massa tincidunt nunc. 4. Nibh nisl condimentum id venenatis a condimentum vitae. Sit amet justo donec enim diam vulputate. 5. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim.',11,'2022-03-19 09:12:03');

## ----- Recipe 8 - foto 12
INSERT INTO image (alt_text, image_url) VALUES ('Mexican Kale Salad','https://www.tastingtable.com/img/gallery/mexican-kale-salad-recipe/intro-1647872367.jpg');

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Salada mexicana de couve-flor','Uma salada deliciosa de couve-flor ao melhor estilo mexicano.','12 minutos','VEGETARIAN','1. Nisi porta lorem mollis aliquam ut porttitor. Ut venenatis tellus in metus vulputate. 2. Porttitor rhoncus dolor purus non enim. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ornare lectus sit amet est. In ornare quam viverra orci sagittis eu volutpat odio facilisis. 3. Ut porttitor leo a diam sollicitudin tempor id eu. Eu mi bibendum neque egestas congue quisque. Enim facilisis gravida neque convallis a cras semper auctor.',12,'2022-03-29 10:04:23');

## -- adding recipe to user
INSERT INTO users_recipes (user_id, recipe_id) VALUES (4, 7);
INSERT INTO users_recipes (user_id, recipe_id) VALUES (4, 8);

## ===============================================================================================================

## User 5 - foto 13
INSERT INTO image (alt_text, image_url) VALUES ( 'perfil', 'https://images.pexels.com/photos/1820935/pexels-photo-1820935.jpeg?cs=srgb&dl=pexels-mwabonje-1820935.jpg&fm=jpg');
INSERT INTO users (bio,date_of_birth,full_name,password,profession,phone_number,profile_picture_id,username) VALUES (	'Aliquam id diam maecenas ultricies mi eget. Nam at tellus id interdum. Pretium nibh ipsum consequat nisl vel pretium lectus.',  '2001-07-20',  'Adriana Luna Sales',	'df066fdf144e740d6ae6ff3da65f7d78fe530cef',  'Jornalista de Dados / Jornalismo de Dados',  '(83) 98888-2565',  13,  'tst.adriana.silaa@test.com');

## ----- Recipe 9 - foto 14
INSERT INTO image (alt_text, image_url) VALUES ('Arroz tropeiro','https://www.rampinelli.com.br/uploads/receita/1623163466receitadecarreteirorampinelli.jpg?class=full&h=482');

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Arroz tropeiro','Non diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Eu consequat ac felis donec et odio pellentesque diam volutpat. ','50 - 1h minutos','MEAL','1. Lorem mollis aliquam ut porttitor leo a. Diam ut venenatis tellus in metus. Consequat nisl vel pretium lectus quam. 2. Sit amet porttitor eget dolor morbi non. 3. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Velit laoreet id donec ultrices tincidunt arcu. Risus at ultrices mi tempus imperdiet. 4. Nulla aliquet porttitor lacus luctus. Morbi tristique senectus et netus. Sed risus ultricies tristique nulla aliquet. Viverra maecenas accumsan lacus vel facilisis. 5. In arcu cursus euismod quis viverra nibh cras. Non diam phasellus vestibulum lorem sed risus ultricies tristique nulla. 6. Eu consequat ac felis donec et odio pellentesque diam volutpat. Consequat semper viverra nam libero justo laoreet sit amet cursus. 7. Diam maecenas ultricies mi eget mauris pharetra et ultrices. 8. Neque viverra justo nec ultrices dui sapien eget.',14,'2022-03-30 18:33:18');

## ----- Recipe 10 - foto 15
INSERT INTO image (alt_text, image_url) VALUES ('Lanche de Fast Food caseiro','https://www.lojabrazil.com.br/blog/wp-content/uploads/2022/06/capa-imagem-blog-alimentacao-fast-food1683-x-716-px.png');

##  ingredientes - ketchup, 1 coca-cola, batata, hamburguer, alface
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Lanche de Fast Food caseiro','Ac turpis egestas sed tempus. Enim sit amet venenatis urna cursus. Et netus et malesuada fames ac turpis.','2 - 3 horas','SNACK','1. Quis imperdiet massa tincidunt nunc pulvinar sapien. 2. Eget mauris pharetra et ultrices. Urna porttitor rhoncus dolor purus. Turpis tincidunt id aliquet risus feugiat in ante metus dictum. 3. Tristique sollicitudin nibh sit amet commodo. Nibh ipsum consequat nisl vel pretium lectus quam id leo. Mauris sit amet massa vitae tortor condimentum. 4. arius sit amet mattis vulputate enim. Mi tempus imperdiet nulla malesuada pellentesque elit. 5. Felis bibendum ut tristique et egestas quis ipsum. 6. Mattis vulputate enim nulla aliquet porttitor lacus luctus. 7. Enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Maecenas pharetra convallis posuere morbi leo urna molestie at. Posuere morbi leo urna molestie at elementum eu facilisis sed. Vitae sapien pellentesque habitant morbi tristique senectus et netus et. Id ornare arcu odio ut. Odio pellentesque diam volutpat commodo sed egestas. 8. Mattis rhoncus urna neque viverra justo.',15,'2022-04-02 13:19:48');

## ----- Recipe 11 - foto 16
INSERT INTO image (alt_text, image_url) VALUES ('Frango assado com limão-siciliano','https://cdn.panelinha.com.br/receita/1557156324276-_MGL7602.jpg');

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Frango assado com limão-siciliano','Ornare lectus sit amet est. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor purus. Cras ornare arcu dui vivamus arcu felis bibendum.','40 à 1:30 minutos','MEAL','1. Lectus nulla at volutpat diam ut venenatis tellus in metus. Pretium fusce id velit ut tortor pretium. 2. Aliquet nec ullamcorper sit amet. Vehicula ipsum a arcu cursus. Sit amet massa vitae tortor condimentum lacinia quis vel eros. 3. Porta non pulvinar neque laoreet suspendisse. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Aliquam id diam maecenas ultricies. Nunc mattis enim ut tellus elementum. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. 4. Eget sit amet tellus cras adipiscing enim eu turpis egestas.',16,'2022-04-02 15:49:12');

INSERT INTO users_recipes (user_id, recipe_id) VALUES (5, 9);
INSERT INTO users_recipes (user_id, recipe_id) VALUES (5, 10);
INSERT INTO users_recipes (user_id, recipe_id) VALUES (5, 11);

## ===============================================================================================================

## User 6
INSERT INTO image (alt_text, image_url) VALUES ('perfil','http://static1.squarespace.com/static/5ee2e10a96d83b04476b2b20/t/6330c337440b8c3b6269c8d4/1664140100478/DAV%C3%93NE+Portrait_Photo+by+Noah+Morrison.jpg.JPG?format=1500w');

INSERT INTO users (bio,date_of_birth,full_name,password,profession,phone_number,profile_picture_id,username) VALUES (	'Erat velit scelerisque in dictum non consectetur. Magna etiam tempor orci eu lobortis elementum nibh tellus molestie.',  '1992-02-23',  'Nelson Kevin Edson Campos',	'18bf5f5124ea69d8a9eb343651bad9bff685c2cb',  'Motorista de Táxi',  '(81) 98651-3449',  17,  'nelson.kevin.campos@hushmail.com');

## ----- Recipe 12 - foto 18
INSERT INTO image (alt_text, image_url) VALUES ('Casual Party Snack','https://assets.bonappetit.com/photos/61b7c725ae5736f3022cb4fb/5:4/w_3991,h_3193,c_limit/20211207%20ITS%20Snack%20Mix%20Lede.jpg');

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date) VALUES ('Casual Party Snack','Mauris cursus mattis molestie a iaculis at erat pellentesque snack.','2 horas','SNACK','1. Eget duis at tellus at urna condimentum mattis pellentesque id. Lorem ipsum dolor sit amet consectetur adipiscing. 2. Lorem ipsum dolor sit amet consectetur adipiscing. 3. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Urna nunc id cursus metus aliquam eleifend mi. Vitae elementum curabitur vitae nunc sed. 4. Quis lectus nulla at volutpat diam ut venenatis tellus. Tincidunt vitae semper quis lectus nulla at volutpat. Faucibus interdum posuere lorem ipsum. Natoque penatibus et magnis dis. 5. Eu facilisis sed odio morbi quis. Gravida cum sociis natoque penatibus et magnis dis parturient montes.',18,'2022-04-12 18:21:38');

INSERT INTO users_recipes (user_id, recipe_id) VALUES (6, 12);

# Adding tags =============================================

# Recipe 1 ===============================================

INSERT INTO tag(name) VALUES ('saboroso'); #1
INSERT INTO tag(name) VALUES ('frango'); #2
INSERT INTO tag(name) VALUES ('salpicão'); #3
INSERT INTO tag(name) VALUES ('refeição'); #4
INSERT INTO tag(name) VALUES ('batata'); #5
INSERT INTO tag(name) VALUES ('comida boa'); #6
INSERT INTO tag(name) VALUES ('tradicional'); #7
INSERT INTO tag(name) VALUES ('natal'); #8
INSERT INTO tag(name) VALUES ('salgado'); #9
INSERT INTO tag(name) VALUES ('batata palha'); #10

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 1);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 2);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 3);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 4);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 5);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 6);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 7);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 8);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 9);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (1, 10);

# Recipe 2 ===============================================

INSERT INTO tag(name) VALUES ('massa'); #11
INSERT INTO tag(name) VALUES ('calabresa'); #12
INSERT INTO tag(name) VALUES ('macarrão'); #13
INSERT INTO tag(name) VALUES ('almoço'); #14
INSERT INTO tag(name) VALUES ('massas'); #15
INSERT INTO tag(name) VALUES ('gostosuras'); #16
INSERT INTO tag(name) VALUES ('casual'); #17
INSERT INTO tag(name) VALUES ('molho'); #18

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 11);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 12);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 14);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 4);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 15);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 16);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 17);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 18);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 6);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (2, 1);

# Recipe 3 ===============================================

INSERT INTO tag(name) VALUES ('limonada'); #19
INSERT INTO tag(name) VALUES ('gelado'); #20
INSERT INTO tag(name) VALUES ('bebida'); #21
INSERT INTO tag(name) VALUES ('chá'); #22
INSERT INTO tag(name) VALUES ('chá gelado'); #23
INSERT INTO tag(name) VALUES ('refresco'); #24
INSERT INTO tag(name) VALUES ('refrescante'); #25
INSERT INTO tag(name) VALUES ('cereja'); #26
INSERT INTO tag(name) VALUES ('liquor'); #27
INSERT INTO tag(name) VALUES ('gostosa'); #28

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 17);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 19);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 20);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 21);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 22);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 23);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 24);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 25);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 26);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 27);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 28);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 16);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 7);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (3, 1);

# Recipe 4 ===============================================

INSERT INTO tag(name) VALUES ('catchup'); #29
INSERT INTO tag(name) VALUES ('ketchup'); #30
INSERT INTO tag(name) VALUES ('lanche'); #31
INSERT INTO tag(name) VALUES ('lanche rápido'); #32
INSERT INTO tag(name) VALUES ('comida rápida'); #33
INSERT INTO tag(name) VALUES ('fritura'); #34
INSERT INTO tag(name) VALUES ('festa'); #35
INSERT INTO tag(name) VALUES ('refrigerante'); #36
INSERT INTO tag(name) VALUES ('bebidas'); #37
INSERT INTO tag(name) VALUES ('gostoso'); #38

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 5);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 17);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 18);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 29);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 30);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 31);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 32);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 33);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 34);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 35);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 36);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 37);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (4, 38);

# Recipe 5 ===============================================

INSERT INTO tag(name) VALUES ('caracollino'); #39
INSERT INTO tag(name) VALUES ('macarronada'); #40
INSERT INTO tag(name) VALUES ('encaracolado'); #41
INSERT INTO tag(name) VALUES ('verduras'); #42
INSERT INTO tag(name) VALUES ('molho de tomate'); #43
INSERT INTO tag(name) VALUES ('queijo'); #44
INSERT INTO tag(name) VALUES ('boa refeição'); #45

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 39);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 40);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 41);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 42);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 43);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 44);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 45);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 13);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 1);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 4);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 11);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 15);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (5, 28);

# Recipe 6 ===============================================

INSERT INTO tag(name) VALUES ('maracujá'); #46
INSERT INTO tag(name) VALUES ('fruta'); #47
INSERT INTO tag(name) VALUES ('bolo'); #48
INSERT INTO tag(name) VALUES ('doce'); #49
INSERT INTO tag(name) VALUES ('cremoso'); #50
INSERT INTO tag(name) VALUES ('creme'); #51
INSERT INTO tag(name) VALUES ('creme de leite'); #52
INSERT INTO tag(name) VALUES ('festas'); #53
INSERT INTO tag(name) VALUES ('confeitaria'); #54

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 16);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 35);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 38);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 6);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 46);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 47);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 48);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 49);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 50);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 51);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 52);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 53);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (6, 54);

# Recipe 7 ===============================================

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 17);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 19);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 20);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 21);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 22);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 23);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 24);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 25);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 27);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 28);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 16);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 7);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (7, 1);

# Recipe 8 ===============================================

INSERT INTO tag(name) VALUES ('salada'); #55
INSERT INTO tag(name) VALUES ('saudável'); #56
INSERT INTO tag(name) VALUES ('legume'); #57
INSERT INTO tag(name) VALUES ('saladas'); #58
INSERT INTO tag(name) VALUES ('legumes'); #59
INSERT INTO tag(name) VALUES ('couve-flor'); #60
INSERT INTO tag(name) VALUES ('mexicano'); #61
INSERT INTO tag(name) VALUES ('vegetariano'); #62

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 38);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 42);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 6);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 7);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 55);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 56);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 57);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 58);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 59);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 61);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 62);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 1);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (8, 16);

# Recipe 9 ===============================================

INSERT INTO tag(name) VALUES ('brasileiro'); #63
INSERT INTO tag(name) VALUES ('arroz'); #64
INSERT INTO tag(name) VALUES ('tropeiro'); #65

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 56);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 7);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 6);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 4);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 1);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 57);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 58);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 18);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 42);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 63);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 64);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (9, 65);

# Recipe 10 ===============================================

INSERT INTO tag(name) VALUES ('fast food'); #66
INSERT INTO tag(name) VALUES ('caseiro'); #67
INSERT INTO tag(name) VALUES ('batata frita'); #68

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 66);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 67);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 68);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 34);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 5);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 31);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 38);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 1);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (10, 16);

# Recipe 11 ===============================================

INSERT INTO tag(name) VALUES ('frango assado'); #69
INSERT INTO tag(name) VALUES ('assadura'); #70
INSERT INTO tag(name) VALUES ('limão'); #71

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (11, 69);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (11, 70);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (11, 71);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (11, 4);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (11, 2);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (11, 8);

# Recipe 12 ===============================================

INSERT INTO tag(name) VALUES ('petiscos'); #72
INSERT INTO tag(name) VALUES ('petisco'); #73

INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (12, 30);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (12, 35);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (12, 68);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (12, 72);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (12, 73);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (12, 1);
INSERT INTO recipe_tags(recipe_id, tags_id) VALUES (12, 31);

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 1 =========================

INSERT INTO ingredient (name) VALUES ('2 xícaras de chá de frango cozido e desfiado'); # ingredient 1
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 1); # recipe 1

INSERT INTO ingredient (name) VALUES ('1 lata de milho-verde'); # ingredient 2
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 2); # recipe 1

INSERT INTO ingredient (name) VALUES ('2 pimentões amarelos em tiras finas'); # ingredient 3
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 3); # recipe 1

INSERT INTO ingredient (name) VALUES ('1 lata de ervilha'); # ingredient 4
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 4); # recipe 1

INSERT INTO ingredient (name) VALUES ('2 batatas cozidas e cortadas em cubos pequenos'); # ingredient 5
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 5); # recipe 1

INSERT INTO ingredient (name) VALUES ('1 maçã sem casca e sem sementes'); # ingredient 6
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 6); # recipe 1

INSERT INTO ingredient (name) VALUES ('2 cenouras grandes raladas'); # ingredient 7
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 7); # recipe 1

INSERT INTO ingredient (name) VALUES ('1/2 latas de maionese'); # ingredient 8
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 8); # recipe 1

INSERT INTO ingredient (name) VALUES ('cheiro-verde a gosto'); # ingredient 9
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 9); # recipe 1

INSERT INTO ingredient (name) VALUES ('1 pacote de batata palha'); # ingredient 10
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 10); # recipe 1

INSERT INTO ingredient (name) VALUES ('200 gramas de uva passa'); # ingredient 11
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (1, 11); # recipe 1

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 2 =========================


INSERT INTO ingredient (name) VALUES ('1 pacote de macarrão de macarrão'); # ingredient 12
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (2, 12); # recipe 2

INSERT INTO ingredient (name) VALUES ('2 à 5 alhos picados'); # ingredient 13
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (2, 13); # recipe 2

INSERT INTO ingredient (name) VALUES ('1 cebola picada'); # ingredient 14
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (2, 14); # recipe 2

INSERT INTO ingredient (name) VALUES ('1 calabresa picada'); # ingredient 15
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (2, 15); # recipe 2

INSERT INTO ingredient (name) VALUES ('1 sachê ou lata de molho de tomate'); # ingredient 16
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (2, 16); # recipe 2

INSERT INTO ingredient (name) VALUES ('1 pimentão picado'); # ingredient 17
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (2, 17); # recipe 2

INSERT INTO ingredient (name) VALUES ('2 tomates picados'); # ingredient 18
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (2, 18); # recipe 2

INSERT INTO ingredient (name) VALUES ('20 ml de óleo'); # ingredient 19
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (2, 19); # recipe 2

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 3 =========================

INSERT INTO ingredient (name) VALUES ('3 xícaras de suco de cerejas em conserva'); # ingredient 20
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (3, 20); # recipe 3

INSERT INTO ingredient (name) VALUES ('2 limões cortados'); # ingredient 21
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (3, 21); # recipe 3

INSERT INTO ingredient (name) VALUES ('1 copo de cereja'); # ingredient 22
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (3, 22); # recipe 3

INSERT INTO ingredient (name) VALUES ('5 xícaras de água gelada'); # ingredient 23
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (3, 23); # recipe 3

INSERT INTO ingredient (name) VALUES ('3 colheres de chá de açúcar'); # ingredient 24
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (3, 24); # recipe 3

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 4 =========================

INSERT INTO ingredient (name) VALUES ('4 batatas descascadas e picadas'); # ingredient 25
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (4, 25); # recipe 4

INSERT INTO ingredient (name) VALUES ('Sal a gosto'); # ingredient 26
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (4, 26); # recipe 4

INSERT INTO ingredient (name) VALUES ('1 pote de catchup'); # ingredient 27
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (4, 27); # recipe 4

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 5 =========================

INSERT INTO ingredient (name) VALUES ('1 pacote de macarrão caracolino'); # ingredient 28
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (5, 28); # recipe 5

INSERT INTO ingredient (name) VALUES ('2 alhos esmagados'); # ingredient 29
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (5, 29); # recipe 5

INSERT INTO ingredient (name) VALUES ('1 cebola picada'); # ingredient 30
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (5, 30); # recipe 5

INSERT INTO ingredient (name) VALUES ('250 gramas de queijo cheddar'); # ingredient 31
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (5, 31); # recipe 5

INSERT INTO ingredient (name) VALUES ('Metade de um pimentão picado'); # ingredient 32
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (5, 32); # recipe 5

INSERT INTO ingredient (name) VALUES ('Orégano a gosto'); # ingredient 33
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (5, 33); # recipe 5

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 6 =========================

INSERT INTO ingredient (name) VALUES ('1 xícara de suco de maracujá'); # ingredient 34
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (6, 34); # recipe 6

INSERT INTO ingredient (name) VALUES ('2/4 xícara de óleo'); # ingredient 35
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (6, 35); # recipe 6

INSERT INTO ingredient (name) VALUES ('2 xícaras de açúcar'); # ingredient 36
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (6, 36); # recipe 6

INSERT INTO ingredient (name) VALUES ('1 colher de sopa de fermento'); # ingredient 37
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (6, 37); # recipe 6

INSERT INTO ingredient (name) VALUES ('3 xícaras de farinha de trigo'); # ingredient 38
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (6, 38); # recipe 6

INSERT INTO ingredient (name) VALUES ('3 ovos'); # ingredient 39
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (6, 39); # recipe 6

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 7 =========================

INSERT INTO ingredient (name) VALUES ('5 cubos de gelo'); # ingredient 40
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (7, 40); # recipe 7

INSERT INTO ingredient (name) VALUES ('1 litro de água gelada'); # ingredient 41
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (7, 41); # recipe 7

INSERT INTO ingredient (name) VALUES ('2 limões esprimidos'); # ingredient 42
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (7, 42); # recipe 7

INSERT INTO ingredient (name) VALUES ('5 colheres de açúcar'); # ingredient 43
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (7, 43); # recipe 7

INSERT INTO ingredient (name) VALUES ('Chá de bordo'); # ingredient 44
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (7, 44); # recipe 7

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 8 =========================

INSERT INTO ingredient (name) VALUES ('250 gramadas de maionese'); # ingredient 45
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (8, 45); # recipe 8

INSERT INTO ingredient (name) VALUES ('1 Couve-flor cortado'); # ingredient 46
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (8, 46); # recipe 8

INSERT INTO ingredient (name) VALUES ('2 alfaces picados'); # ingredient 47
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (8, 47); # recipe 8

INSERT INTO ingredient (name) VALUES ('Sal a gosto'); # ingredient 48
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (8, 48); # recipe 8

INSERT INTO ingredient (name) VALUES ('Pimenta do reino'); # ingredient 49
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (8, 49); # recipe 8

INSERT INTO ingredient (name) VALUES ('Vinagre e/ou azeite'); # ingredient 50
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (8, 50); # recipe 8

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 9 =========================

INSERT INTO ingredient (name) VALUES ('1/2kg de carne seca'); # ingredient 51
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 51); # recipe 9

INSERT INTO ingredient (name) VALUES ('1 dente de alho picado'); # ingredient 52
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 52); # recipe 9

INSERT INTO ingredient (name) VALUES ('23 colheres de sopa de toucinho'); # ingredient 53
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 53); # recipe 9

INSERT INTO ingredient (name) VALUES ('100g de linguiça calabresa em rodelas'); # ingredient 54
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 54); # recipe 9

INSERT INTO ingredient (name) VALUES ('2 xícaras de chá de arroz'); # ingredient 55
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 55); # recipe 9

INSERT INTO ingredient (name) VALUES ('Sal a gosto'); # ingredient 56
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 56); # recipe 9

INSERT INTO ingredient (name) VALUES ('Cheiro-verde a gosto'); # ingredient 57
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 57); # recipe 9

INSERT INTO ingredient (name) VALUES ('3 colheres de chá de bacon em cubos'); # ingredient 58
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 58); # recipe 9

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 10 =========================

INSERT INTO ingredient (name) VALUES ('2 fatias de tomate'); # ingredient 59
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (9, 59); # recipe 10

INSERT INTO ingredient (name) VALUES ('duas ou mais folhas de alface'); # ingredient 60
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (10, 60); # recipe 10

INSERT INTO ingredient (name) VALUES ('1 pote ou sachê de catchup'); # ingredient 61
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (10, 61); # recipe 10

INSERT INTO ingredient (name) VALUES ('1 garrafa de refrigerante coca-cola'); # ingredient 62
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (10, 62); # recipe 10

INSERT INTO ingredient (name) VALUES ('um ou mais pãos cortados ao meio'); # ingredient 63
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (10, 63); # recipe 10

INSERT INTO ingredient (name) VALUES ('1 ou mais hamburguer de carne'); # ingredient 64
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (10, 64); # recipe 10

INSERT INTO ingredient (name) VALUES ('temperos a gosto'); # ingredient 65
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (10, 65); # recipe 10

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 11 =========================

INSERT INTO ingredient (name) VALUES ('1 limão siciliano espremido'); # ingredient 66
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (11, 66); # recipe 11

INSERT INTO ingredient (name) VALUES ('2 ou mais batatas'); # ingredient 67
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (11, 67); # recipe 11

INSERT INTO ingredient (name) VALUES ('Sal a gosto'); # ingredient 68
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (11, 68); # recipe 11

INSERT INTO ingredient (name) VALUES ('1 frango'); # ingredient 69
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (11, 69); # recipe 11

INSERT INTO ingredient (name) VALUES ('Temperos a gosto'); # ingredient 70
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (11, 70); # recipe 11

# ========================================================================
# ====================== INGREDIENTS OF RECIPE 12 =========================

INSERT INTO ingredient (name) VALUES ('Batatas a gosto'); # ingredient 71
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (12, 71); # recipe 12

INSERT INTO ingredient (name) VALUES ('Refrigerante'); # ingredient 72
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (12, 72); # recipe 12

INSERT INTO ingredient (name) VALUES ('Chocolate'); # ingredient 73
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (12, 73); # recipe 12

INSERT INTO ingredient (name) VALUES ('Pipoca'); # ingredient 74
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (12, 74); # recipe 12

INSERT INTO ingredient (name) VALUES ('Suco'); # ingredient 75
INSERT INTO recipe_ingredients(recipe_id, ingredients_id) VALUES (12, 75); # recipe 12

# =============================================================================
# ======================== Favorite List of User 1 ============================

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-04-22 10:04:23', 12); # favorite recipe 1
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (1, 1); # favorite list  of user 1

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-04-23 14:48:20', 2); # favorite recipe 2
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (1, 2); # favorite list  of user 1

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-04-25 10:04:56', 8); # favorite recipe 3
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (1, 3); # favorite list  of user 1

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-04-29 07:52:31', 3); # favorite recipe 4
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (1, 4); # favorite list  of user 1

# =============================================================================
# ======================== Favorite List of User 2 ============================

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-04-29 08:49:17', 4); # favorite recipe 5
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (2, 5); # favorite list  of user 2

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-04-29 09:29:10', 7); # favorite recipe 6
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (2, 6); # favorite list  of user 2

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-04-30 12:59:34', 5); # favorite recipe 7
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (2, 7); # favorite list  of user 2

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-04-30 13:32:01', 9); # favorite recipe 8
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (2, 8); # favorite list  of user 2

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-01 12:02:43', 1); # favorite recipe 9
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (2, 9); # favorite list  of user 2

# =============================================================================
# ======================== Favorite List of User 3 ============================

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-01 13:29:17', 8); # favorite recipe 10
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 10); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-01 09:31:58', 9); # favorite recipe 11
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 11); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-01 10:12:47', 3); # favorite recipe 12
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 12); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-02 05:48:29', 11); # favorite recipe 13
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 13); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-02 08:42:59', 12); # favorite recipe 14
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 14); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-02 08:51:34', 5); # favorite recipe 15
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 15); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-04 23:19:25', 7); # favorite recipe 16
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 16); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-07 17:59:48', 6); # favorite recipe 17
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 17); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-13 02:34:39', 1); # favorite recipe 18
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 18); # favorite list  of user 3

# Favorite Recipe 1 - User 1 - 3 receitas favoritas
INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-13 18:02:11', 2); # favorite recipe 19
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (3, 19); # favorite list  of user 3

# =============================================================================
# ======================== Favorite List of User 4 ============================

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-13 19:39:27', 2); # favorite recipe 20
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 20); # favorite list  of user 3

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-13 20:23:38', 3); # favorite recipe 21
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 21); # favorite list  of user 4

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-13 22:30:23', 9); # favorite recipe 22
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 22); # favorite list  of user 4

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-13 23:43:10', 1); # favorite recipe 23
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 23); # favorite list  of user 4

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-14 09:49:03', 4); # favorite recipe 24
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 24); # favorite list  of user 4

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-15 03:48:45', 11); # favorite recipe 25
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 25); # favorite list  of user 4

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 19:39:04', 8); # favorite recipe 26
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 26); # favorite list  of user 4

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 20:48:29', 7); # favorite recipe 27
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 27); # favorite list  of user 4

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 22:39:12', 10); # favorite recipe 28
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 28); # favorite list  of user 4

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 23:28:35', 5); # favorite recipe 29
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (4, 29); # favorite list  of user 4

# =============================================================================
# ======================== Favorite List of User 5 ============================

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 23:29:35', 9); # favorite recipe 30
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 30); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 23:29:42', 2); # favorite recipe 31
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 31); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 23:34:19', 5); # favorite recipe 32
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 32); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 23:42:02', 1); # favorite recipe 33
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 33); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 23:47:29', 6); # favorite recipe 34
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 34); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-19 23:52:13', 8); # favorite recipe 35
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 35); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-21 07:43:54', 3); # favorite recipe 36
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 36); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-21 07:51:03', 10); # favorite recipe 37
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 37); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-21 07:54:21', 4); # favorite recipe 38
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 38); # favorite list  of user 5

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-21 19:12:38', 7); # favorite recipe 39
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (5, 39); # favorite list  of user 5

# =============================================================================
# ======================== Favorite List of User 6 ============================

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-21 19:48:17', 3); # favorite recipe 40
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (6, 40); # favorite list  of user 6

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-23 12:23:02', 10); # favorite recipe 41
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (6, 41); # favorite list  of user 6

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-28 02:49:10', 2); # favorite recipe 42
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (6, 42); # favorite list  of user 6

INSERT INTO favorite_recipe (addition_date, recipe_id) VALUES ('2022-05-29 05:28:39', 9); # favorite recipe 43
INSERT INTO users_favorite_recipes_list (user_entity_id, favorite_recipes_list_id) VALUES (6, 43); # favorite list  of user 6

SELECT * FROM db_tastyeat.recipe_reviews;

# ===================================================================================
# ================================ Reviews of Recipe 1 ==============================

#Review 1
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (5, 5, '2022-05-12 08:47:25', 'ótima receita  U+1F60D! Ameei!! Fiz para meus filhos eeles amaram U+2764 ❤️ Meus almoços agora não podem faltar esse prato !! Obrigado por compartilhar quero mais receitas U+2763 ');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (1, 1);

#Review 2
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (3, 5, '2022-06-18 12:32:58', 'Receita realmente muito boa, recomendo! U+1F609');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (1, 2);

#Review 3
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (4, 4, '2022-07-21 14:09:38', 'Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum.');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (1, 3);

#Review 4
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (2, 3, '2022-08-18 15:07:26', 'Vel elit scelerisque mauris pellentesque. In nisl nisi scelerisque eu ultrices vitae. Elementum pulvinar etiam non quam. Erat velit scelerisque in dictum non consectetur.');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (1, 4);

# ===================================================================================
# ================================ Reviews of Recipe 2 ==============================

#Review 5
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (2, 4, '2022-09-23 09:11:25', 'At imperdiet dui accumsan sit. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. ');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (2, 5);

#Review 6
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (6, 2, '2022-11-23 17:02:56', 'In nisl nisi scelerisque eu ultrices vitae. Elementum pulvinar etiam non quam. Erat velit scelerisque in dictum non consectetur.');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (2, 6);

#Review 7
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (4, 3, '2022-06-18 12:32:58', 'Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. In vitae turpis massa sed elementum tempus egestas sed. ');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (2, 7);

#Review 8
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (5, 1, '2022-06-18 15:11:24', 'Ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae. ');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (2, 8);

#Review 9
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (4, 4, '2022-06-26 05:35:18', '');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (2, 9);

# ===================================================================================
# ================================ Reviews of Recipe 3 ==============================

#Review 10
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (2, 2, '2022-03-18 18:36:20', 'ellentesque sit amet porttitor eget dolor morbi non. U+1F92E');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (3, 10);

#Review 11
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (4, 5, '2022-05-23 07:52:37', 'Excelente!!! U+1F63B U+1F639');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (3, 11);

#Review 12
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (6, 5, '2022-05-25 19:36:14', '');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (3, 12);

#Review 13
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (3, 3, '2022-06-03 17:14:28', ' Integer feugiat scelerisque varius morbi enim nunc faucibus a. Sed elementum tempus egestas sed sed. Proin nibh nisl condimentum id venenatis a. Fermentum et sollicitudin ac orci phasellus egestas tellus rutrum tellus. ');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (3, 13);

#Review 14
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (1, 2, '2022-06-17 16:25:39', 'Ut ornare lectus sit amet. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. U+2763 U+1F495');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (3, 14);

#Review 15
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (5, 4, '2022-07-15 18:22:16', '');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (3, 15);

# ===================================================================================
# ================================ Reviews of Recipe 4 ==============================

#Review 16
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (1, 4, '2022-02-11 10:27:54', '');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (4, 16);

#Review 17
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (5, 5, '2022-08-17 21:49:26', '');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (4, 17);

# ===================================================================================
# ================================ Reviews of Recipe 5 ==============================

#Review 18
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (2, 5, '2022-03-27 13:59:19', 'Enim sed faucibus turpis in eu mi bibendum. U+1F601');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (5, 18);

#Review 19
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (4, 5, '2022-04-04 17:29:10', 'U+1F601');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (5, 19);

#Review 20
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (3, 2, '2022-05-16 20:17:46', 'Nulla aliquet porttitor lacus luctus accumsan tortor posuere. Id cursus metus aliquam eleifend mi in nulla posuere sollicitudin.  U+1F438 U+270C');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (5, 20);

# ===================================================================================
# ================================ Reviews of Recipe 7 ==============================

#Review 21
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (3, 4, '2022-04-06 17:29:58', 'Enim sed faucibus turpis in eu mi bibendum. U+1F601');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (7, 21);

# ===================================================================================
# ================================ Reviews of Recipe 8 ==============================

#Review 22
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (5, 2, '2022-04-19 13:16:18', 'Laoreet suspendisse interdum consectetur libero id. Nulla pellentesque dignissim enim sit. Ac turpis egestas sed tempus urna et. Tincidunt arcu non sodales neque sodales. Est ante in nibh mauris. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Curabitur gravida arcu ac tortor dignissim convallis aenean et. Ultricies lacus sed turpis tincidunt id aliquet. U+1F61C');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (8, 22);

#Review 23
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (6, 3, '2022-05-13 17:24:28', 'U+1F619');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (8, 23);

#Review 24
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (1, 4, '2022-06-24 18:12:09', 'Velit scelerisque in dictum non consectetur. Venenatis lectus magna fringilla urna porttitor rhoncus. U+1F618');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (8, 24);

# ===================================================================================
# ================================ Reviews of Recipe 9 ==============================

#Review 25
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (2, 3, '2022-01-30 10:49:21', 'U+1F618');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (9, 25);

# ====================================================================================
# ================================ Reviews of Recipe 10 ==============================

#Review 26
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (2, 3, '2022-06-24 18:12:09', 'U+1F924 U+1F924 U+1F924');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (10, 26);

#Review 27
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (5, 3, '2022-07-12 21:20:32', 'U+1F924');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (10, 27);

#Review 28
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (1, 3, '2022-07-18 04:42:19', 'Arcu felis bibendum ut tristique et. U+1F924');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (10, 28);

#Review 29
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (4, 3, '2022-08-12 13:18:21', 'Curabitur gravida arcu ac tortor dignissim convallis aenean et. Ultricies lacus sed turpis tincidunt id aliquet.');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (10, 29);

# ====================================================================================
# ================================ Reviews of Recipe 11 ==============================

#Review 30
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (4, 5, '2022-06-24 18:12:09', 'Muito bom U+1F924 !!!');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (11, 30);

#Review 31
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (3, 4, '2022-07-12 21:20:32', 'Cras sed felis eget velit aliquet. Pulvinar pellentesque habitant morbi tristique senectus. U+1F975');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (11, 31);

# ====================================================================================
# ================================ Reviews of Recipe 12 ==============================

#Review 32
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (3, 5, '2022-06-24 18:12:09', 'Muito bom U+1F924 !!!');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (12, 32);

#Review 33
INSERT INTO review (review_author_id, recipe_rating, publication_date, comment_content) VALUES (1, 4, '2022-07-12 21:20:32', 'Cras sed felis eget velit aliquet. Pulvinar pellentesque habitant morbi tristique senectus. U+1F975');
INSERT INTO recipe_reviews (recipe_id, reviews_id) VALUES (12, 33);