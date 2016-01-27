--============================================================
-- descript : 다음 함수들을 이용해서 이벤트 리시버를 작성하세요.
--
--   Command       ( 명령어 )                 : 명령어 실행 (ex. Command( "/ITEM PORING" ) )
--   UseItem       ( 이름, 개수 )             : 아이템 사용
--   BaseLevelUp   ( 상승 수치 )              : 캐릭터 Base 레벨 상승
--   JobLevelUp    ( 상승 수치 )              : 캐릭터 Job  레벨 상승
--   UpgradeSkill  ( 스킬 아이디, 상승 수치 ) : 캐릭터 스킬 레벨 상승
--   MoveMap       ( 맵이름 )                 : 맵 이동
--   ChangeJob     ( 직업 이름 )              : 직업 변경
--   StatusUp_STR  ( 상승 수치 )              : 캐릭터 STR 능력치 올리기
--   StatusUp_AGI  ( 상승 수치 )              : 캐릭터 AGI 능력치 올리기
--   StatusUp_VIT  ( 상승 수치 )              : 캐릭터 VIT 능력치 올리기
--   StatusUp_INT  ( 상승 수치 )              : 캐릭터 INT 능력치 올리기
--   StatusUp_DEX  ( 상승 수치 )              : 캐릭터 DEX 능력치 올리기
--   StatusUp_LUK  ( 상승 수치 )              : 캐릭터 LUK 능력치 올리기
--   GetJobId      ( )                        : 캐릭터 잡 ID 얻기
--   GetMapName    ( )                        : 현재 맵 이름 얻기
--   GetHp         ( )                        : Hp 얻기
--   GetSp         ( )                        : Sp 얻기
--   GetMaxhp      ( )                        : Maxhp 얻기
--   GetMaxsp      ( )                        : MaxSp 얻기
--   GetBaseExp    ( )                        : Base Exp 얻기
--   GetBaseMaxExp ( )                        : Base MaxExp 얻기
--   GetJobExp     ( )                        : JobExp 얻기
--   GetJobMaxExp  ( )                        : Job MaxExp 얻기
--   GetBaseLevel  ( )                        : Base Level 얻기
--   GetJobLevel   ( )                        : Job Level 얻기
--   GetCharName   ( )                        : 캐릭터 이름 얻기
--
--============================================================




--============================================================
-- 운영자템 소환하기
--============================================================

function gmitem()
	Command ( "/아이템 앙그라마이뉴" )
	Command ( "/아이템 아후라마즈다" )
end

function buttonEventReceiver_spectacles()
	IdentifyItems()
end

function buttonEventReceiver_GmItem()
	gmitem()
	IdentifyItems()
end

function buttonEventReceiver_InsertMoney()
	UseItem("파리의날개", 100 )
end

function buttonEventReceiver_yggdrasilberry ()
	UseItem("이그드라실열매" , 1 )
end

--============================================================
-- 렙업하기
--============================================================

function buttonEventReceiver_TestMonster()
	for i = 1, 50 do
		Command ( "/ITEM KOBOLD_4" )
	end
end

function buttonEventReceiver_baselevelup()
	UseItem("삼겹살" , 120 )
end

function buttonEventReceiver_joblevelup()
	UseItem("갈비살" , 80 )
end

--============================================================
-- 호문S 만들기
--============================================================

function buttonEventReceiver_homunlevelup ()
	UseItem("삼겹살H" , 99 )
end

function buttonEventReceiver_use_friend ()
	UseItem( "오겹살H" , 20 )
end

function buttonEventReceiver_homunstone ()
	UseItem( "현자의돌_" , 1 )
end

function mapmove_homun()
	Command("/mm prontera.gat 239 195")
end

function buttonEventReceiver_homuns ()
	buttonEventReceiver_use_friend ()
	buttonEventReceiver_homunstone ()
	buttonEventReceiver_homunlevelup()
	buttonEventReceiver_use_friend ()
	mapmove_homun()
end

--============================================================
-- 맵이동 하기
--============================================================
function buttonEventReceiver_sec_in02_1()
	Command("/mm sec_in02.gat 20 180")
end

function buttonEventReceiver_sec_in02_2()
	Command("/mm sec_in02.gat 20 20")
end

function buttonEventReceiver_sec_in02_3()
	Command("/mm sec_in02.gat 53 190")
end

function buttonEventReceiver_mapmove_prontera()
	MoveMap ( "prontera" )
end
	
function buttonEventReceiver_mapmove_payon()
	MoveMap ( "payon" )
end

function buttonEventReceiver_mapmove_geffen()
	MoveMap ( "geffen" )
end

function buttonEventReceiver_mapmove_alberta()
	MoveMap ( "alberta" )
end

function buttonEventReceiver_mapmove_aldebaran()
	MoveMap ( "aldebaran" )
end

function buttonEventReceiver_mapmove_pvp()
	Command ( "/mm pvp_y_7-1.gat 100 100" )
end

--============================================================
-- 스킬 및 스탯 초기화 하기
--============================================================

function buttonEventReceiver_skillreset()
	Command ( "/resetskill" )
end

function buttonEventReceiver_statereset()
	Command ( "/resetstate" )
end

--=========================================================== 
-- 테스트 레이어 
--===========================================================

function buttonEventReceiver_testlayer() 
	Command("/testlayer") 
end

--===========================================================
-- 행운의알 100개 가기
--===========================================================

function buttonEventReceiver_egg10()
	UseItem("크루스크롤",100)
end

--===========================================================
-- 심연의 회랑 추가 아이템
--===========================================================

function buttonEventReceiver_agit_renewal()		
item = {		
"	시즈부츠	",
"	시즈그리브	",
"	시즈슈즈	",
"	시즈망토	",
"	시즈머플러	",
"	시즈플레이트	",
"	시즈슈츠	",
"	시즈로브	",
"	수라의장갑	",
"	검은로자리	",
"	음파증폭기	",
"	벨룸자마다르	",
"	벨룸스케어	",
"	벨룸버스터	",
"	벨룸글레이브	",
"	벨룸바이블	",
"	벨룸대백과사전	",
"	벨룸크로	",
"	멘탈디스트로이어	",
"	벨룸아크완드	",
"	벨룸다마스커스	",
"	벨룸스터너	",
"	벨룸플레일	",
"	벨룸알바레스트	",
"	벨룸크로스보우	",
"	벨룸크레모어	",
"	벨룸카츠발게르	",
"	공성보급용화살S	",
"	공성보급용화살A	",
"	신급재료상자	",
"	공성무기보급상자	",
"	공성용보라포션상자	",
"	투자감사티켓	",
"	고양이상단투자증서	",
"	공성용보라포션	",
}		
for index, value in pairs(item) do		
Command ("/item" ..value )		
end		
end		
		
function buttonEventReceiver_agit_re ()		
buttonEventReceiver_agit_renewal()		
IdentifyItems()		
end


--============================================================
-- function : DebugingInterface_UserDefine
-- descript : 다음 함수들을 이용해서 메뉴를 추가하세요.
--
--   AddString ( 문자열 )                   : 리스트에 설명용 텍스트 추가
--   AddMenu   ( 메뉴 이름, 이벤트 리시버 ) : 리스트에 사용자 메뉴 추가
--
--============================================================

function DebugingInterface_UserDefine()
	AddString ( "-- [ 영자템 소환 ] --" )
	AddMenu ("심연의회랑 추가 아이템" , buttonEventReceiver_agit_re )
	AddMenu ("쩌는운영자템", buttonEventReceiver_GmItem )
	AddMenu ("모든 아이템 감정하기 " , buttonEventReceiver_spectacles )
	AddMenu ("돈내놔", buttonEventReceiver_InsertMoney )
	AddMenu ("이그열매사용" , buttonEventReceiver_yggdrasilberry )
	AddString ( "-- [ 렙업 하기 ] --" )

	AddMenu ("나와라 코볼트4", buttonEventReceiver_TestMonster )
	AddMenu ("베이스레벨만땅", buttonEventReceiver_baselevelup )
	AddMenu ("잡레벨만땅", buttonEventReceiver_joblevelup )
	AddString ( "-- [ 호문S 만들기 ] --" )
	AddMenu ("호문레벨업 ", buttonEventReceiver_homunlevelup )
	AddMenu ("호문친밀도올리기 ", buttonEventReceiver_use_friend )
	AddMenu ("호문 변신 원샷으로 하기 ", buttonEventReceiver_homuns )
	
	AddString ( "-- [ 맵이동 ] --" )
	AddMenu ("보내줘요 발할라1 ", buttonEventReceiver_sec_in02_1 )
	AddMenu ("보내줘요 발할라2", buttonEventReceiver_sec_in02_2 )
	AddMenu ("발할라에서 몹을 잡아 보자", buttonEventReceiver_sec_in02_3 )
	AddMenu ("프론테라 이동", buttonEventReceiver_mapmove_prontera )
	AddMenu ("페이욘 이동", buttonEventReceiver_mapmove_payon )
	AddMenu ("게펜 이동", buttonEventReceiver_mapmove_geffen )
	AddMenu ("알베르타 이동", buttonEventReceiver_mapmove_alberta )
	AddMenu ("알데바란 이동", buttonEventReceiver_mapmove_aldebaran )
	AddMenu ("pvp 로 따라와", buttonEventReceiver_mapmove_pvp )

	
	AddString ( "-- [ 스킬 스탯 초기 ] --" )
	AddMenu ("스킬 초기화 해주세요", buttonEventReceiver_skillreset )
	AddMenu ("스탯 초기화 해주세요 제발 ㅜㅜ", buttonEventReceiver_statereset )


	AddString ( "-- [ Testlayer ] --")                            
	AddMenu ("Testlayer" , buttonEventReceiver_testlayer ) -- 테스트레이어 실행    
	AddString ( "-- [ 행운의알 100개 까기 --" )    
	AddMenu ("행운의알 100개 까기 " , buttonEventReceiver_egg10 )
end