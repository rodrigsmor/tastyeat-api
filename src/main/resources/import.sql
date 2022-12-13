## User 1
INSERT INTO image (alt_text, image_url)
VALUES (
	'perfil',
	'https://media.istockphoto.com/id/517234226/photo/i-see-no-good-reason-to-act-my-age.jpg?s=612x612&w=0&k=20&c=qx2j21ZtwPWJuvrLD8uvegXz9z4YSQQnflUyGlBkyic='
);

INSERT INTO users (
	bio,
    date_of_birth,
    full_name,
    password,
    profession,
    phone_number,
    profile_picture_id,
    username
)
VALUES (
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non ipsum et',
    '1984-04-25',
    'Olivia Vanessa Assis',
	'8920ec21315262a35479bfca7de004dfebe8df8f',
    'Analista de Pesquisa de Mercado',
    '(24) 98934-9593',
    1,
    'tst.olivia@teste.com.br'
);

## ------ Recipe 1 - foto 2
INSERT INTO image (alt_text, image_url)
VALUES (
	'Salpicão tradicional',
	'https://s2.glbimg.com/u9kstOm3k0vIImlaNSkcp9qaCqY=/0x0:1000x667/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/r/u/t4X4VuRwaKnmRygd5D6A/salpicao-is-typical-brazilian-salad-made-with-shredded-chicken-raisin-grated-carrot-potato-sticks-mayonnaise.jpg'
);

INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Salpicão tradicional',
	'Receita de salpicão simples e rápida: a receita leva frango desfiado, cenoura, azeitona, pimentão, maçã, cebola, uva-passa e outros ingredientes econômicos. Tradição para as famílias brasileiras, o salpicão tradicional é uma receita muito fácil, econômica e prática.',
	'1:05 minutos',
	'MEAL',
	'1. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. 2. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. 3. Mi sit amet mauris commodo quis imperdiet massa tincidunt nunc. 4. Nibh nisl condimentum id venenatis a condimentum vitae. Sit amet justo donec enim diam vulputate. 5. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim.',
    2,
	'2022-01-10 08:48:12'
);

## ----- Recipe 2 - foto 3
INSERT INTO image (alt_text, image_url)
VALUES (
	'Macarrão simples com Calabresa',
	'https://t2.rg.ltmcdn.com/pt/posts/3/2/6/macarrao_com_calabresa_5623_600.jpg'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Macarrão simples com calabresa',
	'Um macarrão delicioso e simples para aquele almoço casual que a gente ama, né? Uma receita simples e saborosa com calabresa que vai fazer o seu dia.',
	'40 à 1:30 minutos',
	'PASTA',
	'1. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. 2. Cursus vitae congue mauris rhoncus. Aliquet risus feugiat in ante metus dictum at tempor. 3. Sit amet justo donec enim diam vulputate. Lectus urna duis convallis convallis. 4. Pretium fusce id velit ut tortor pretium viverra. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. Amet cursus sit amet dictum sit amet justo. 5. Libero nunc consequat interdum varius. Volutpat diam ut venenatis tellus in metus vulputate eu',
    3,
	'2022-02-28 12:38:34'
);

## -- adding recipe to user
INSERT INTO users_recipes (user_id, recipe_id)
VALUES (1, 1);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (1, 2);

## ===============================================================================================================

## User 2
INSERT INTO image (alt_text, image_url)
VALUES (
	'perfil',
    'https://img.freepik.com/free-photo/half-profile-image-beautiful-young-woman-with-bob-hairdo-posing-gazing-with-eyes-full-reproach-suspicion-human-facial-expressions-emotions-reaction-feelings_343059-4660.jpg?w=2000'
);

INSERT INTO users (
	bio,
    date_of_birth,
    full_name,
    password,
    profession,
    phone_number,
    profile_picture_id,
    username
)
VALUES (
	'O nosso passado, aí tendes o que nós somos. Não há outra forma de julgar as pessoas.',
    '1994-02-23',
    'Juliana Adriana Novaes',
	'df066fdf144e740d6ae6ff3da65f7d78fe530cef',
    'Especialista em Análises contemporâneas',
    '(21) 92741-4170',
    4,
    'tst.julianaadriana@test.com'
);

## ----- Recipe 3 - foto 5
INSERT INTO image (alt_text, image_url)
VALUES (
	'Homemade Cherry Limeade',
	'https://www.southernliving.com/thmb/RT1t_s3oV4MvvErMLR1WA9G6G28=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/4ab70ff2-4373-4805-985f-005ee5256743_0-76feabfb1458442d8aaef8e5bd1bcc7e.png'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Homemade Cherry Limeade',
	'Don’t prep this one too far in advance or it will go flat. This fun drink reminds us of summer, so serve it for gamedays while it’s still hot out.',
	'14 minutos',
	'DRINK',
	'1. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. 2. Cursus vitae congue mauris rhoncus. Aliquet risus feugiat in ante metus dictum at tempor. 3. Sit amet justo donec enim diam vulputate. Lectus urna duis convallis convallis. 4. Pretium fusce id velit ut tortor pretium viverra. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. Amet cursus sit amet dictum sit amet justo. 5. Libero nunc consequat interdum varius. Volutpat diam ut venenatis tellus in metus vulputate eu',
    5,
	'2022-03-12 18:43:52'
);

## ----- Recipe 4 - foto 6
INSERT INTO image (alt_text, image_url)
VALUES (
	'Batata frita e ketchup',
	'https://i1.wp.com/smittenkitchen.com/wp-content/uploads//2017/03/easier-french-fries.jpg?fit=1200%2C800&ssl=1'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Batata frita e Ketchup',
	'Tincidunt id aliquet risus feugiat in ante metus dictum at. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. ',
	'20 minutos',
	'SNACK',
	'1. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. 2. Cursus vitae congue mauris rhoncus. Aliquet risus feugiat in ante metus dictum at tempor. 3. Sit amet justo donec enim diam vulputate. Lectus urna duis convallis convallis. 4. Pretium fusce id velit ut tortor pretium viverra. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. Amet cursus sit amet dictum sit amet justo. 5. Libero nunc consequat interdum varius. Volutpat diam ut venenatis tellus in metus vulputate eu',
    6,
	'2022-03-14 02:12:48'
);

## ----- Recipe 5 - foto 7
INSERT INTO image (alt_text, image_url)
VALUES (
	'Macarrão caracollino',
	'https://renata.com.br/images/receitas/43/renata-imagem-receitas-macarrao-alla-norma-share.jpg'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Macarrão caracollino (encaracolado)',
	'Ornare lectus sit amet est. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor purus. Cras ornare arcu dui vivamus arcu felis bibendum.',
	'40 à 1:30 minutos',
	'PASTA',
	'1. Lectus nulla at volutpat diam ut venenatis tellus in metus. Pretium fusce id velit ut tortor pretium. 2. Aliquet nec ullamcorper sit amet. Vehicula ipsum a arcu cursus. Sit amet massa vitae tortor condimentum lacinia quis vel eros. 3. Porta non pulvinar neque laoreet suspendisse. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Aliquam id diam maecenas ultricies. Nunc mattis enim ut tellus elementum. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. 4. Eget sit amet tellus cras adipiscing enim eu turpis egestas.',
    7,
	'2022-03-15 12:49:22'
);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (2, 3);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (2, 4);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (2, 5);

## ===============================================================================================================

## User 3
INSERT INTO image (alt_text, image_url)
VALUES (
	'perfil',
    'https://www.wsb.com/wp-content/uploads/2021/06/Krawcheck_Sallie_PROMOPIC-682x830.jpg?bust=d5ab10156c79b246b18ebd552e1d7632'
);

INSERT INTO users (
	bio,
    date_of_birth,
    full_name,
    password,
    profession,
    phone_number,
    profile_picture_id,
    username
)
VALUES (
	'Enim neque volutpat ac tincidunt vitae semper quis lectus.',
    '1985-12-10',
    'Lúcia Aline Mirella Bernardes',
	'18bf5f5124ea69d8a9eb343651bad9bff685c2cb',
    'Design de Ambientes',
    '(48) 99514-5754',
    8,
    'tst.lucialine.mirela@test.com'
);

## ----- Recipe 6 - foto 9
INSERT INTO image (alt_text, image_url)
VALUES (
	'Bolo de macaracuja',
	'https://www.oldenburger-professional.com/fileadmin/recipes/Passionfruit_Cake.jpg'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Bolo de maracuja cremoso',
	'Mauris cursus mattis molestie a iaculis at erat pellentesque Maracuja.',
	'40 à 1:30 minutos',
	'DESSERT',
	'1. Eget duis at tellus at urna condimentum mattis pellentesque id. Lorem ipsum dolor sit amet consectetur adipiscing. 2. Lorem ipsum dolor sit amet consectetur adipiscing. 3. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Urna nunc id cursus metus aliquam eleifend mi. Vitae elementum curabitur vitae nunc sed. 4. Quis lectus nulla at volutpat diam ut venenatis tellus. Tincidunt vitae semper quis lectus nulla at volutpat. Faucibus interdum posuere lorem ipsum. Natoque penatibus et magnis dis. 5. Eu facilisis sed odio morbi quis. Gravida cum sociis natoque penatibus et magnis dis parturient montes.',
    9,
	'2022-03-18 23:01:54'
);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (3, 6);

## User 4 - foto 10
INSERT INTO image (alt_text, image_url)
VALUES (
	'perfil',
	'https://i.pinimg.com/474x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg'
);

INSERT INTO users (
	bio,
    date_of_birth,
    full_name,
    password,
    profession,
    phone_number,
    profile_picture_id,
    username
)
VALUES (
	'A lacus vestibulum sed arcu non. In fermentum u facilisis sed odio morbi quis.',
    '1991-09-29',
    'Noah Henrique de Paula',
	'8920ec21315262a35479bfca7de004dfebe8df8f',
    'Fiscal de Transportes Públicos',
    '(65) 98183-6997',
    10,
    'tst.noah.tst@teste.com.br'
);

## ------ Recipe 7 - foto 11
INSERT INTO image (alt_text, image_url)
VALUES (
	'Lemonade Iced Tea',
	'https://www.seriouseats.com/thmb/akXUp8i_4NTsbGjDEyHJOx4lEzE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/best-arnold-palmer-iced-tea-lemonade-recipe-hero-03_1-3b9d59fd281242caa5e4b3e38d22d209.JPG'
);

INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Lemonade Iced Tea',
	'Limonada de chá gelado para refrescar a sua vida. Que tal se aventurar um pouco nesses sabores refrescantes?',
	'12 - 25 minutos',
	'DRINK',
	'1. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. 2. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Odio eu feugiat pretium nibh ipsum consequat nisl. 3. Mi sit amet mauris commodo quis imperdiet massa tincidunt nunc. 4. Nibh nisl condimentum id venenatis a condimentum vitae. Sit amet justo donec enim diam vulputate. 5. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim.',
    11,
	'2022-03-19 09:12:03'
);

## ----- Recipe 8 - foto 12
INSERT INTO image (alt_text, image_url)
VALUES (
	'Mexican Kale Salad',
	'https://www.tastingtable.com/img/gallery/mexican-kale-salad-recipe/intro-1647872367.jpg'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Salada mexicana de couve-flor',
	'Uma salada deliciosa de couve-flor ao melhor estilo mexicano.',
	'12 minutos',
	'VEGETARIAN',
	'1. Nisi porta lorem mollis aliquam ut porttitor. Ut venenatis tellus in metus vulputate. 2. Porttitor rhoncus dolor purus non enim. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ornare lectus sit amet est. In ornare quam viverra orci sagittis eu volutpat odio facilisis. 3. Ut porttitor leo a diam sollicitudin tempor id eu. Eu mi bibendum neque egestas congue quisque. Enim facilisis gravida neque convallis a cras semper auctor.',
    12,
	'2022-03-29 10:04:23'
);

## -- adding recipe to user
INSERT INTO users_recipes (user_id, recipe_id)
VALUES (4, 7);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (4, 8);

## ===============================================================================================================

## User 5 - foto 13
INSERT INTO image (alt_text, image_url)
VALUES (
	'perfil',
    'https://images.pexels.com/photos/1820935/pexels-photo-1820935.jpeg?cs=srgb&dl=pexels-mwabonje-1820935.jpg&fm=jpg'
);

INSERT INTO users (
	bio,
    date_of_birth,
    full_name,
    password,
    profession,
    phone_number,
    profile_picture_id,
    username
)
VALUES (
	'Aliquam id diam maecenas ultricies mi eget. Nam at tellus id interdum. Pretium nibh ipsum consequat nisl vel pretium lectus.',
    '2001-07-20',
    'Adriana Luna Sales',
	'df066fdf144e740d6ae6ff3da65f7d78fe530cef',
    'Jornalista de Dados / Jornalismo de Dados',
    '(83) 98888-2565',
    13,
    'tst.adriana.silaa@test.com'
);

## ----- Recipe 9 - foto 14
INSERT INTO image (alt_text, image_url)
VALUES (
	'Arroz tropeiro',
	'https://www.rampinelli.com.br/uploads/receita/1623163466receitadecarreteirorampinelli.jpg?class=full&h=482'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Arroz tropeiro',
	'Non diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Eu consequat ac felis donec et odio pellentesque diam volutpat. ',
	'50 - 1h minutos',
	'MEAL',
	'1. Lorem mollis aliquam ut porttitor leo a. Diam ut venenatis tellus in metus. Consequat nisl vel pretium lectus quam. 2. Sit amet porttitor eget dolor morbi non. 3. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Velit laoreet id donec ultrices tincidunt arcu. Risus at ultrices mi tempus imperdiet. 4. Nulla aliquet porttitor lacus luctus. Morbi tristique senectus et netus. Sed risus ultricies tristique nulla aliquet. Viverra maecenas accumsan lacus vel facilisis. 5. In arcu cursus euismod quis viverra nibh cras. Non diam phasellus vestibulum lorem sed risus ultricies tristique nulla. 6. Eu consequat ac felis donec et odio pellentesque diam volutpat. Consequat semper viverra nam libero justo laoreet sit amet cursus. 7. Diam maecenas ultricies mi eget mauris pharetra et ultrices. 8. Neque viverra justo nec ultrices dui sapien eget.',
    14,
	'2022-03-30 18:33:18'
);

## ----- Recipe 10 - foto 15
INSERT INTO image (alt_text, image_url)
VALUES (
	'Lanche de Fast Food caseiro',
	'https://www.lojabrazil.com.br/blog/wp-content/uploads/2022/06/capa-imagem-blog-alimentacao-fast-food1683-x-716-px.png'
);

##  ingredientes - ketchup, 1 coca-cola, batata, hamburguer, alface
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Lanche de Fast Food caseiro',
	'Ac turpis egestas sed tempus. Enim sit amet venenatis urna cursus. Et netus et malesuada fames ac turpis.',
	'2 - 3 horas',
	'SNACK',
	'1. Quis imperdiet massa tincidunt nunc pulvinar sapien. 2. Eget mauris pharetra et ultrices. Urna porttitor rhoncus dolor purus. Turpis tincidunt id aliquet risus feugiat in ante metus dictum. 3. Tristique sollicitudin nibh sit amet commodo. Nibh ipsum consequat nisl vel pretium lectus quam id leo. Mauris sit amet massa vitae tortor condimentum. 4. arius sit amet mattis vulputate enim. Mi tempus imperdiet nulla malesuada pellentesque elit. 5. Felis bibendum ut tristique et egestas quis ipsum. 6. Mattis vulputate enim nulla aliquet porttitor lacus luctus. 7. Enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Maecenas pharetra convallis posuere morbi leo urna molestie at. Posuere morbi leo urna molestie at elementum eu facilisis sed. Vitae sapien pellentesque habitant morbi tristique senectus et netus et. Id ornare arcu odio ut. Odio pellentesque diam volutpat commodo sed egestas. 8. Mattis rhoncus urna neque viverra justo.',
    15,
	'2022-04-02 13:19:48'
);

## ----- Recipe 11 - foto 16
INSERT INTO image (alt_text, image_url)
VALUES (
	'Frango assado com limão-siciliano',
	'https://cdn.panelinha.com.br/receita/1557156324276-_MGL7602.jpg'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Frango assado com limão-siciliano',
	'Ornare lectus sit amet est. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor purus. Cras ornare arcu dui vivamus arcu felis bibendum.',
	'40 à 1:30 minutos',
	'MEAL',
	'1. Lectus nulla at volutpat diam ut venenatis tellus in metus. Pretium fusce id velit ut tortor pretium. 2. Aliquet nec ullamcorper sit amet. Vehicula ipsum a arcu cursus. Sit amet massa vitae tortor condimentum lacinia quis vel eros. 3. Porta non pulvinar neque laoreet suspendisse. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Aliquam id diam maecenas ultricies. Nunc mattis enim ut tellus elementum. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. 4. Eget sit amet tellus cras adipiscing enim eu turpis egestas.',
    16,
	'2022-04-02 15:49:12'
);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (5, 9);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (5, 10);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (5, 11);

## ===============================================================================================================

## User 6
INSERT INTO image (alt_text, image_url)
VALUES (
	'perfil',
    'http://static1.squarespace.com/static/5ee2e10a96d83b04476b2b20/t/6330c337440b8c3b6269c8d4/1664140100478/DAV%C3%93NE+Portrait_Photo+by+Noah+Morrison.jpg.JPG?format=1500w'
);

INSERT INTO users (
	bio,
    date_of_birth,
    full_name,
    password,
    profession,
    phone_number,
    profile_picture_id,
    username
)
VALUES (
	'Erat velit scelerisque in dictum non consectetur. Magna etiam tempor orci eu lobortis elementum nibh tellus molestie.',
    '1992-02-23',
    'Nelson Kevin Edson Campos',
	'18bf5f5124ea69d8a9eb343651bad9bff685c2cb',
    'Motorista de Táxi',
    '(81) 98651-3449',
    17,
    'nelson.kevin.campos@hushmail.com'
);

## ----- Recipe 12 - foto 18
INSERT INTO image (alt_text, image_url)
VALUES (
	'Casual Party Snack',
	'https://assets.bonappetit.com/photos/61b7c725ae5736f3022cb4fb/5:4/w_3991,h_3193,c_limit/20211207%20ITS%20Snack%20Mix%20Lede.jpg'
);

##  ingredientes - 1 pimentão picado, 2 tomates picados, 1 calabresa picada, 1 pacote de macarrão, 1 alho esprimido, 20ml de óleo e 1 sachê ou lata de molho de tomate
INSERT INTO recipe (recipe_title, description, average_cooking_time, category, how_to_prepare, recipe_cover_id, publication_date)
VALUES (
	'Casual Party Snack',
	'Mauris cursus mattis molestie a iaculis at erat pellentesque snack.',
	'2 horas',
	'SNACK',
	'1. Eget duis at tellus at urna condimentum mattis pellentesque id. Lorem ipsum dolor sit amet consectetur adipiscing. 2. Lorem ipsum dolor sit amet consectetur adipiscing. 3. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Urna nunc id cursus metus aliquam eleifend mi. Vitae elementum curabitur vitae nunc sed. 4. Quis lectus nulla at volutpat diam ut venenatis tellus. Tincidunt vitae semper quis lectus nulla at volutpat. Faucibus interdum posuere lorem ipsum. Natoque penatibus et magnis dis. 5. Eu facilisis sed odio morbi quis. Gravida cum sociis natoque penatibus et magnis dis parturient montes.',
    18,
	'2022-04-12 18:21:38'
);

INSERT INTO users_recipes (user_id, recipe_id)
VALUES (6, 12);

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