create table adv(
no serial,
sid varchar(50),
title varchar(500),
price varchar(50),
content varchar(5000),
img varchar(500)
);

create table review(
no serial,
mid varchar(50),
sid varchar(50),
adno int,
content varchar(5000),
starsc int,
date varchar(20)
);

create table cart(
mid varchar(50),
adno int,
date varchar(20)
);

create table sales(
no serial,
mid varchar(50),
sid varchar(50),
price int,
date varchar(20)
);

create table member(
id varchar(50),
pw varchar(50),
tel varchar(50),
name varchar(50),
category boolean,
salt varchar(50)
);


insert into adv(sid,title,price,content,img) values("s100","고급퀄리티의 반응형 홈페이지로 기업홍보에 도움을 드립니다",
"9000","안녕하세요!고객이 원하는 맞춤형디자인, 깔끔하고 심플한 디자인, 감각적인 세련된디자인 으로 사이트전체 제작을 미디어아이가 만들어드리겠습니다.",
"..\\images\\productImg\\i101.jpg");
insert into adv(sid,title,price,content,img)(sid,title,price,content,img) values("s200","게시판 포함 서브페이지 13장 내외의 홈페이를 만들어드립니다.",
"5000","모든 작업의 견적 사항이 다를수 있기 때문에 원하시는 참고사이트가 있으실 경우 먼저 메세지로 말씀해주신 후 상담후에 구매결정해주세요^^",
"..\\images\\productImg\\i102.jpg");
insert into adv(sid,title,price,content,img) values("s300","홈페이지 디자인부터 제작까지 고급스럽게! 고객님의 꿈을 이뤄 드립니다",
"12000","저렴한 견적? 합리적인 절차? 그보다 중요한 무기가 있습니다. 바로 디자인 퀄리티입니다.",
"..\\images\\productImg\\i103.jpg");
insert into adv(sid,title,price,content,img) values("s400","원페이지 스크롤형 반응형 랜딩페이지 제작 ㅡ 입력폼, 소셜로그인, 관리자페이지 등",
"52000","CHAPTER 2. 웹드림이 제공해드리는 혜택에 대하여 설명드리겠습니다 !",
"..\\images\\productImg\\i104.jpg");
insert into adv(sid,title,price,content,img) values("s500","100% 고객 맞춤형 홈페이지 디자인제작해 드립니다",
"16000","안녕하세요.DESIGN SEOUL 입니다.",
"..\\images\\productImg\\i105.jpg");
insert into adv(sid,title,price,content,img) values("s100","속까지 완벽한 퍼블리싱(HTML,CSS,jQuery)을 해 드립니다",
"42000","안녕하세요. 다소니입니다.저는 웹 표준과 웹 접근성을 준수하는 현직 퍼블리셔입니다.",
"..\\images\\productImg\\i106.jpg");
insert into adv(sid,title,price,content,img) values("s100","홈페이지 퍼블리싱 해 드립니다",
"88000","저는 고객님의 디자인을 웹 사이트로 완벽히 옮겨드립니다.빠른 손과 원활한 소통으로 신속하게 완성합니다.",
"..\\images\\productImg\\i107.jpg");
insert into adv(sid,title,price,content,img) values("s100","서브페이지 1 기준 반응형 웹사이트 퍼블리싱",
"15000","작업 과정은 1. 디자인 시안과 유의사항 전달, 2. 견적 산정과 기간 협의, 3. 결제 요청 메시지 발송, 4. 작업 착수의 단계로 이루어집니다.",
"..\\images\\productImg\\i108.jpg");
insert into adv(sid,title,price,content,img) values("s100","커뮤니티, 기업 홈페이지를 제작해 드립니다",
"42000","풍부한 경험으로 홈페이지 퍼블리싱 해드립니다.",
"..\\images\\productImg\\i109.jpg");
insert into adv(sid,title,price,content,img) values("s100","STANDARD + 디자인 시안2종, 적용, 스토리텔링",
"73000","작업 시작전 주신 가이드와 맞지 않는 경우 책임지고 끝까지 수정해드립니다.",
"..\\images\\productImg\\i110.jpg");
insert into adv(sid,title,price,content,img) values("s100","그룹 PETORI 기획 및 제작",
"90000","그룹 PETORI는 사용자의 눈높이를 만족시키는 탁월한 전략구성과 수준 높은 디자인, 크리에이티브 디렉터, PR플래너, 전문 카피라이터 등 전문가 집단으로 구성된 최고의 디자이너 그룹입니다.",
"..\\images\\productImg\\i101.jpg");
insert into adv(sid,title,price,content,img) values("s200","PHP/ASP/그누보드 등 기능추가, 오류수정, 개발 해 드립니다",
"5000","안녕하세요. 고객의 문제를 저의 문제같이 생각하는 개발자입니다.",
"..\\images\\productImg\\i102.jpg");
insert into adv(sid,title,price,content,img) values("s300","웹개발 작업해 드립니다",
"12000","10년이상 경력의 php 주력 프로그래머 입니다.",
"..\\images\\productImg\\i103.jpg");
insert into adv(sid,title,price,content,img) values("s400","5년차 디자이너가 WIX(윅스)로 홈페이지를 만들어 드립니다",
"52000","웹사이트에 문제가 생겨 고민이시거나 관리상, 운영상 부족한 기능을 추가 하고 싶으실때,  웹개발 문제로 막막하실때 연락주세요.",
"..\\images\\productImg\\i104.jpg");
insert into adv(sid,title,price,content,img) values("s500","WIX 홈페이지 제작 (딜럭스)",
"16000","5년차 디자이너가 저렴하게 홈페이지를 만들어드립니다.",
"..\\images\\productImg\\i105.jpg");
insert into adv(sid,title,price,content,img) values("s100","고퀄리티 이미지. 맞춤형 디자인. 문의하기 입력폼 1개. 반응형웹 지원. .7page 맞춤형",
"42000","WIX 를 이용하여 홍보용 홈페이지를 만들어 드립니다.",
"..\\images\\productImg\\i106.jpg");
insert into adv(sid,title,price,content,img) values("s100","이벤트 및 랜딩페이지 만들어 드립니다",
"88000","안녕하세요 더 좋은 결과물을 전해드리는  ALIVE 입니다.",
"..\\images\\productImg\\i107.jpg");
insert into adv(sid,title,price,content,img) values("s100","깔끔하고 심플한 원페이지 홈페이지 제작해 드립니다",
"15000","복잡한 기능 필요없이 심플하고 깔끔한 원페이지 제작을 원하시는 분!",
"..\\images\\productImg\\i108.jpg");
insert into adv(sid,title,price,content,img) values("s100","깔끔하고 심플한 텍스트형 원페이지",
"42000","저렴한 가격으로 가성비 좋은 모두 홈페이지를 만들어 보세요. 모두 홈페이지 30개 이상 제작 경험으로 입맛에 맞는 홈페이지를 제작해드립니다.",
"..\\images\\productImg\\i109.jpg");
insert into adv(sid,title,price,content,img) values("s100","깔끔하고 고급스런 이미지형 원페이지",
"73000","웹사이트 수정 및 유지보수 전문가 입니다.php개발 경력 8년차이며,php,nodejs로 자체 제작한 게시판 솔루션으로 실 서비스 경력 있습니다.",
"..\\images\\productImg\\i110.jpg");

insert into review(mid,sid,adno,content,starsc,date) values("m110","s100",1,"작업 빠르고 원하는 결과물 얻었습니다. ^^",3,"2018.01.07");
insert into review(mid,sid,adno,content,starsc,date) values("m120","s100",1,"많은 도움 되었습니다. ^^",5,"2018.02.06");
insert into review(mid,sid,adno,content,starsc,date) values("m130","s100",1,"서비스굿",4,"2018.02.07");
insert into review(mid,sid,adno,content,starsc,date) values("m140","s100",1,"친절한 설명과 빠른 제작, 훌륭한 퀄리티 감사합니다~",3,"2018.02.12");
insert into review(mid,sid,adno,content,starsc,date) values("m250","s100",1,"정말 친절하고 제가 생각못한 부분까지도 상세하게 잘 만들어주셨습니다.
별5개 뿐만아니라 10개도 더 드리고 싶네요. 감사합니다~!",5,"2018.02.15");
insert into review(mid,sid,adno,content,starsc,date) values("m210","s200",2,"빠르고 친절하게 작업해주셨습니다 감사합니다ㅎㅎ",4,"2018.02.27");
insert into review(mid,sid,adno,content,starsc,date) values("m220","s200",2,"응대도 친절히 잘해주시고 작업기한 및 수정에 관한 부분도 친절하시고 좋습니다. 감사합니다.",2,"2018.03.09");
insert into review(mid,sid,adno,content,starsc,date) values("m230","s200",2,"친절한상담 빠른답변 완벽한결과물 감사합니다~!",4,"2018.03.12");
insert into review(mid,sid,adno,content,starsc,date) values("m240","s200",2,"깔끔하게 잘해주셨습니다",5,"2018.03.15");
insert into review(mid,sid,adno,content,starsc,date) values("m250","s200",2,"감사합니다~!",5,"2018.04.01");
insert into review(mid,sid,adno,content,starsc,date) values("m310","s300",3,"자료가 부족 했는데도 잘 해주셔서 감사합니다.",2,"2018.04.06");
insert into review(mid,sid,adno,content,starsc,date) values("m320","s300",3,"친절하게 잘 설명해주시네요",5,"2018.04.12");
insert into review(mid,sid,adno,content,starsc,date) values("m330","s300",3,"깔끔하게 잘나온거같네요 감사합니다",4,"2018.04.17");
insert into review(mid,sid,adno,content,starsc,date) values("m340","s300",3,"세심하게 신경써서 작업해주셔서 감사합니다 ^^",5,"2018.04.26");
insert into review(mid,sid,adno,content,starsc,date) values("m350","s300",3,"정말 될 때 까지 책임져주시네요. 친절하게 해주셔서 감사합니다.",5,"2018.05.06");
insert into review(mid,sid,adno,content,starsc,date) values("m410","s400",4,"잘 마무리 해주실 것을 믿습니다. 결과물이 기대가 되네요 ^^ 감사합니다.",3,"2018.05.07");
insert into review(mid,sid,adno,content,starsc,date) values("m420","s400",4,"감사합니다^^ 수고하셨어요~",3,"2018.05.27");
insert into review(mid,sid,adno,content,starsc,date) values("m430","s400",4,"친절한 설명과 함께 멋진 홈페이지를 만들어 주셔서 감사합니다~",3,"2018.06.04");
insert into review(mid,sid,adno,content,starsc,date) values("m440","s400",4,"꼼꼼하게 진행해주셔서 감사합니다.",3,"2018.06.12");
insert into review(mid,sid,adno,content,starsc,date) values("m450","s400",4,"친절하게 세부적인 부분까지 챙겨주십니다. 감사합니다",5,"2018.06.22");
insert into review(mid,sid,adno,content,starsc,date) values("m510","s500",5,"사이트 퀄리티 좋습니다. 만족합니다.",4,"2018.06.27");
insert into review(mid,sid,adno,content,starsc,date) values("m520","s500",5,"친절하고 꼼꼼하게 작업해주셔서 감사합니다.매우 수고 많으셨습니다!",5,"2018.07.06");
insert into review(mid,sid,adno,content,starsc,date) values("m530","s500",5,"친절하게 진행해주셔서 감사합니다~! 사업 항상 번창하시길 바랍니다^^",4,"2018.08.14");
insert into review(mid,sid,adno,content,starsc,date) values("m540","s500",5,"네 정말 깔끔하게 잘나왔네요",4,"2018.09.29");
insert into review(mid,sid,adno,content,starsc,date) values("m550","s500",5,"지속적인 관리 도와주세요",5,"2018.10.19");

insert into cart values("m110",1,"2018.04.01");
insert into cart values("m110",2,"2018.05.06");
insert into cart values("m110",3,"2018.06.12");
insert into cart values("m110",4,"2018.07.06");
insert into cart values("m110",5,"2018.09.29");

insert into sales values(1,"m110","s100",10000,"2018.01.02");
insert into sales values(2,"m110","s200",12200,"2018.01.07");
insert into sales values(3,"m110","s300",32200,"2018.01.14");
insert into sales values(4,"m110","s400",45000,"2018.02.12");
insert into sales values(5,"m110","s500",8500,"2018.02.22");
insert into sales values(6,"m120","s100",61100,"2018.02.24");
insert into sales values(7,"m120","s200",12000,"2018.03.27");
insert into sales values(8,"m130","s300",300000,"2018.03.03");
insert into sales values(9,"m140","s400",54000,"2018.03.05");
insert into sales values(10,"m150","s500",55000,"2018.04.03");
insert into sales values(11,"m110","s100",10000,"2018.04.07");
insert into sales values(12,"m110","s200",62000,"2018.05.08");
insert into sales values(13,"m110","s300",83000,"2018.05.09");
insert into sales values(14,"m110","s400",74000,"2018.05.12");
insert into sales values(15,"m110","s500",95000,"2018.06.11");
insert into sales values(16,"m110","s100",21000,"2018.06.27");
insert into sales values(17,"m110","s200",52000,"2018.07.12");
insert into sales values(18,"m110","s300",23000,"2018.07.24");
insert into sales values(19,"m110","s400",84000,"2018.09.11");
insert into sales values(20,"m110","s500",25000,"2018.10.07");

insert into member(id,pw,tel,name) values('s100','s100','s100','name100');
insert into member(id,pw,tel,name) values('s200','s200','s200','name200');
insert into member(id,pw,tel,name) values('s300','s300','s300','name300');
insert into member(id,pw,tel,name) values('s400','s400','s400','name400');
insert into member(id,pw,tel,name) values('s500','s500','s500','name500');

insert into member(id,pw,tel,name) values('m110','m100','m100','name110');
insert into member(id,pw,tel,name) values('m210','m200','m200','name210');
insert into member(id,pw,tel,name) values('m310','m300','m300','name310');
insert into member(id,pw,tel,name) values('m410','m400','m400','name410');
insert into member(id,pw,tel,name) values('m510','m500','m500','name510');

insert into member(id,pw,tel,name) values('m120','m100','m100','name120');
insert into member(id,pw,tel,name) values('m220','m200','m200','name220');
insert into member(id,pw,tel,name) values('m320','m300','m300','name320');
insert into member(id,pw,tel,name) values('m420','m400','m400','name420');
insert into member(id,pw,tel,name) values('m520','m500','m500','name520');

insert into member(id,pw,tel,name) values('m130','m100','m100','name130');
insert into member(id,pw,tel,name) values('m230','m200','m200','name230');
insert into member(id,pw,tel,name) values('m330','m300','m300','name330');
insert into member(id,pw,tel,name) values('m430','m400','m400','name430');
insert into member(id,pw,tel,name) values('m530','m500','m500','name530');

insert into member(id,pw,tel,name) values('m140','m100','m100','name140');
insert into member(id,pw,tel,name) values('m240','m200','m200','name240');
insert into member(id,pw,tel,name) values('m340','m300','m300','name340');
insert into member(id,pw,tel,name) values('m440','m400','m400','name440');
insert into member(id,pw,tel,name) values('m540','m500','m500','name540');

insert into member(id,pw,tel,name) values('m150','m100','m100','name150');
insert into member(id,pw,tel,name) values('m250','m200','m200','name250');
insert into member(id,pw,tel,name) values('m350','m300','m300','name350');
insert into member(id,pw,tel,name) values('m450','m400','m400','name450');
insert into member(id,pw,tel,name) values('m550','m500','m500','name550');

