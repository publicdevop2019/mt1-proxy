-- *** manually insert below record if you running it in development mode for fist time***
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(0,'oauth2-id','/auth-svc/clients','GET','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/clients');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(1,'oauth2-id','/auth-svc/clients/autoApprove','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''write'') and #oauth2.isUser()','http','localhost',8080,'/clients/autoApprove');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(2,'oauth2-id','/auth-svc/clients','POST','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/clients');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(3,'oauth2-id','/auth-svc/clients/**','PUT','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/clients/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(4,'oauth2-id','/auth-svc/clients/**','DELETE','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/clients/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(5,'oauth2-id','/auth-svc/resourceOwners','POST','hasRole(''ROLE_FRONTEND'') and hasRole(''ROLE_FIRST_PARTY'') and #oauth2.hasScope(''write'') and #oauth2.isClient()','http','localhost',8080,'/resourceOwners');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(6,'oauth2-id','/auth-svc/resourceOwners','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/resourceOwners');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(7,'oauth2-id','/auth-svc/resourceOwners/**','PUT','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/resourceOwners/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(8,'oauth2-id','/auth-svc/resourceOwners/**','DELETE','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/resourceOwners/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(9,'oauth2-id','/auth-svc/resourceOwner/pwd','PATCH','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/resourceOwner/pwd');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(10,'oauth2-id','/auth-svc/authorize','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8080,'/authorize');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(11,'oauth2-id','/auth-svc/email/subscriber','GET','hasRole(''ROLE_BACKEND'') and hasRole(''ROLE_FIRST_PARTY'') and #oauth2.hasScope(''read'') and #oauth2.isClient()','http','localhost',8080,'/email/subscriber');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(12,'oauth2-id','/auth-svc/resourceOwners/register','POST','hasRole(''ROLE_FRONTEND'') and hasRole(''ROLE_FIRST_PARTY'') and #oauth2.hasScope(''write'') and #oauth2.isClient()','http','localhost',8080,'/resourceOwners/register');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(13,'oauth2-id','/auth-svc/resourceOwners/forgetPwd','POST','hasRole(''ROLE_FRONTEND'') and hasRole(''ROLE_FIRST_PARTY'') and #oauth2.hasScope(''write'') and #oauth2.isClient()','http','localhost',8080,'/resourceOwners/forgetPwd');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(14,'oauth2-id','/auth-svc/resourceOwners/resetPwd','POST','hasRole(''ROLE_FRONTEND'') and hasRole(''ROLE_FIRST_PARTY'') and #oauth2.hasScope(''write'') and #oauth2.isClient()','http','localhost',8080,'/resourceOwners/resetPwd');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(15,'oauth2-id','/auth-svc/oauth/token','POST','http','localhost',8080,'/oauth/token');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression) VALUES(16,'edge-proxy','/proxy/blacklist/client','POST','(hasRole(''ROLE_ROOT'')) and #oauth2.hasScope(''trust'')');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression) VALUES(17,'edge-proxy','/proxy/blacklist/resourceOwner','POST','(hasRole(''ROLE_ADMIN'') or hasRole(''ROLE_ROOT'')) and #oauth2.hasScope(''trust'')');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression) VALUES(18,'edge-proxy','/proxy/security/profile','POST','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'')');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression) VALUES(19,'edge-proxy','/proxy/security/profiles','GET','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'')');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression) VALUES(20,'edge-proxy','/proxy/security/profile/**','PUT','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'')');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression) VALUES(21,'edge-proxy','/proxy/security/profile/**','DELETE','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'')');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression) VALUES(22,'edge-proxy','/proxy/security/profile/batch/url','PATCH','hasRole(''ROLE_ROOT'') and #oauth2.hasScope(''trust'')');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(23,'user-profile','/profile-svc/profiles/search','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/search');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(24,'user-profile','/profile-svc/profiles','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(25,'user-profile','/profile-svc/profiles/**/addresses','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/addresses');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(26,'user-profile','/profile-svc/profiles/**/addresses/**','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/addresses/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(27,'user-profile','/profile-svc/profiles/**/addresses','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/addresses');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(28,'user-profile','/profile-svc/profiles/**/addresses/**','PUT','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/addresses/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(29,'user-profile','/profile-svc/profiles/**/addresses/**','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/addresses/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(30,'user-profile','/profile-svc/profiles/**/orders/**/confirm','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/orders/**/confirm');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(31,'user-profile','/profile-svc/profiles/**/orders','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/orders');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(32,'user-profile','/profile-svc/profiles/**/orders/**','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/orders/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(33,'user-profile','/profile-svc/profiles/**/orders/**','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/orders/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(34,'user-profile','/profile-svc/profiles/**/orders/**','PUT','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/orders/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(35,'user-profile','/profile-svc/profiles/**/orders/**','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/orders/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(36,'user-profile','/profile-svc/profiles/**/cart','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/cart');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(37,'user-profile','/profile-svc/profiles/**/cart','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/cart');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(38,'user-profile','/profile-svc/profiles/**/cart/**','PUT','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/cart/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(39,'user-profile','/profile-svc/profiles/**/cart/**','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/cart/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(40,'user-profile','/profile-svc/orders','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/orders');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(41,'user-profile','/profile-svc/profiles/**/orders/**/replace','PUT','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profiles/**/orders/**/replace');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(57,'messenger','/messenger-svc/notifyBy/email/newOrder','POST','hasRole(''ROLE_BACKEND'') and hasRole(''ROLE_FIRST_PARTY'') and #oauth2.hasScope(''trust'') and #oauth2.isClient()','http','localhost',8085,'/notifyBy/email/newOrder');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(58,'messenger','/messenger-svc/notifyBy/email/activationCode','POST','hasRole(''ROLE_BACKEND'') and hasRole(''ROLE_FIRST_PARTY'') and #oauth2.hasScope(''trust'') and #oauth2.isClient()','http','localhost',8085,'/notifyBy/email/activationCode');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(59,'messenger','/messenger-svc/notifyBy/email/pwdReset','POST','hasRole(''ROLE_BACKEND'') and hasRole(''ROLE_FIRST_PARTY'') and #oauth2.hasScope(''trust'') and #oauth2.isClient()','http','localhost',8085,'/notifyBy/email/pwdReset');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(60,'file-upload','/file-upload-svc/files','POST','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.hasScope(''write'') and #oauth2.isUser()','http','localhost',8086,'/files');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(61,'file-upload','/file-upload-svc/files/**','GET','http','localhost',8086,'/files/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(62,'payment','/payment-svc/paymentLink','POST','hasRole(''ROLE_BACKEND'') and #oauth2.hasScope(''trust'') and #oauth2.isClient()','http','localhost',8087,'/paymentLink');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(63,'payment','/payment-svc/paymentStatus/**','GET','hasRole(''ROLE_BACKEND'') and #oauth2.hasScope(''trust'') and #oauth2.isClient()','http','localhost',8087,'/paymentStatus/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(65,'bbs','/bbs-svc/private/comments','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(66,'bbs','/bbs-svc/public/posts/**/comments','GET','http','localhost',8088,'/public/posts/**/comments');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(67,'bbs','/bbs-svc/private/posts/**/comments','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/comments');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(68,'bbs','/bbs-svc/private/comments/**','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(69,'bbs','/bbs-svc/public/posts','GET','http','localhost',8088,'/public/posts');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(70,'bbs','/bbs-svc/private/posts','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(71,'bbs','/bbs-svc/private/posts','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(72,'bbs','/bbs-svc/public/posts/**','GET','http','localhost',8088,'/public/posts/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(73,'bbs','/bbs-svc/private/posts/**','PUT','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(74,'bbs','/bbs-svc/private/posts/**','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(75,'bbs','/bbs-svc/private/posts/**/likes','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/likes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(76,'bbs','/bbs-svc/private/posts/**/likes','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/likes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(77,'bbs','/bbs-svc/private/comments/**/likes','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**/likes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(78,'bbs','/bbs-svc/private/comments/**/likes','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**/likes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(79,'bbs','/bbs-svc/private/posts/**/dislikes','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/dislikes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(80,'bbs','/bbs-svc/private/posts/**/dislikes','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/dislikes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(81,'bbs','/bbs-svc/private/comments/**/dislikes','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**/dislikes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(82,'bbs','/bbs-svc/private/comments/**/dislikes','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**/dislikes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(83,'bbs','/bbs-svc/private/posts/**/reports','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/reports');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(84,'bbs','/bbs-svc/private/posts/**/reports','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/reports');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(85,'bbs','/bbs-svc/private/comments/**/reports','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**/reports');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(86,'bbs','/bbs-svc/private/comments/**/reports','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**/reports');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(87,'bbs','/bbs-svc/private/posts/**/notInterested','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/notInterested');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(88,'bbs','/bbs-svc/private/posts/**/notInterested','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/posts/**/notInterested');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(89,'bbs','/bbs-svc/private/comments/**/notInterested','POST','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**/notInterested');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(90,'bbs','/bbs-svc/private/comments/**/notInterested','DELETE','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/private/comments/**/notInterested');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(91,'bbs','/bbs-svc/admin/posts','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/admin/posts');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(92,'bbs','/bbs-svc/admin/posts/**','DELETE','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/admin/posts/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(93,'bbs','/bbs-svc/admin/comments','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/admin/comments');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(94,'bbs','/bbs-svc/admin/comments/**','DELETE','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/admin/comments/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(95,'bbs','/bbs-svc/admin/likes','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/admin/likes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(96,'bbs','/bbs-svc/admin/dislikes','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/admin/dislikes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(97,'bbs','/bbs-svc/admin/reports','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/admin/reports');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(98,'bbs','/bbs-svc/admin/notInterested','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8088,'/admin/notInterested');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(99,'user-profile','/profile-svc/profiles/orders/id','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profile-svc/profiles/orders/id');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(100,'user-profile','/profile-svc/profiles/orders/scheduler/resubmit','GET','hasRole(''ROLE_USER'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8082,'/profile-svc/profiles/orders/scheduler/resubmit');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(42,'product','/product-svc/catalogs/admin','POST','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/catalogs');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(43,'product','/product-svc/catalogs/admin/**','PUT','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'admin//catalogs/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(44,'product','/product-svc/catalogs/admin/**','DELETE','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/catalogs/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(114,'product','/product-svc/filters/public','GET','http','localhost',8083,'/public/filters');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(101,'product','/product-svc/catalogs/admin','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/catalogs');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(105,'product','/product-svc/attributes/admin','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/attributes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(106,'product','/product-svc/attributes/admin','POST','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/attributes');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(107,'product','/product-svc/attributes/admin/**','PUT','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/attributes/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(108,'product','/product-svc/attributes/admin/**','DELETE','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/attributes/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(109,'product','/product-svc/filters/admin','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/filters');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(110,'product','/product-svc/filters/admin/**','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/filters/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(111,'product','/product-svc/filters/admin','POST','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/filters');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(112,'product','/product-svc/filters/admin/**','PUT','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/filters/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(53,'product','/product-svc/catalogs/public','GET','http','localhost',8083,'/public/catalogs');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(113,'product','/product-svc/filters/admin/**','DELETE','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/filters/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(116,'product','/product-svc/attributes/admin/**','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/attributes/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(117,'product','/product-svc/catalogs/admin/**','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'admin//catalogs/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(54,'product','/product-svc/products/public','GET','http','localhost',8083,'/public/products');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,scheme,host,port,path) VALUES(55,'product','/product-svc/products/public/**','GET','http','localhost',8083,'/public/products/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(103,'product','/product-svc/products/admin','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/products');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(47,'product','/product-svc/products/admin','POST','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/products');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(119,'product','/product-svc/products/admin','PATCH','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/products');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(120,'product','/product-svc/products/admin','DELETE','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/products');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(52,'product','/product-svc/products/admin/**','GET','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/products/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(48,'product','/product-svc/products/admin/**','PUT','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/products/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(118,'product','/product-svc/products/admin/**','PATCH','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/admin/products/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(49,'product','/product-svc/products/admin/**','DELETE','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/products/**');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(121,'product','/product-svc/products/app','GET','hasRole(''ROLE_BACKEND'') and #oauth2.hasScope(''trust'') and #oauth2.isClient()','http','localhost',8083,'/admin/products');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(46,'product','/product-svc/products/app','PATCH','hasRole(''ROLE_BACKEND'') and #oauth2.hasScope(''trust'') and #oauth2.isClient()','http','localhost',8083,'/products/storageActual/decrease');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(122,'product','/product-svc/products/change/app/**','DELETE','hasRole(''ROLE_BACKEND'') and #oauth2.hasScope(''trust'') and #oauth2.isClient()','http','localhost',8083,'/products/storageActual/decrease');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(123,'product','/product-svc/attributes/admin/**','PATCH','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/products/storageActual/decrease');
INSERT INTO security_profile_list (ID,resource_Id,lookup_path,method,expression,scheme,host,port,path) VALUES(124,'product','/product-svc/catalogs/admin/**','PATCH','hasRole(''ROLE_ADMIN'') and #oauth2.hasScope(''trust'') and #oauth2.isUser()','http','localhost',8083,'/products/storageActual/decrease');
