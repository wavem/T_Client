//---------------------------------------------------------------------------

#ifndef DefineH
#define DefineH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>

// COMM
//#define IP_SERVER "127.0.0.1"
#define IP_SERVER "192.168.0.10"
//#define IP_SERVER "192.168.35.9"
//#define IP_SERVER "192.168.0.47"
#define TCP_SERVER_PORT 14759

#define TCP_SEND_BUF_SIZE 300
#define TCP_RECV_BUF_SIZE 1300
#define TCP_MAX_TEXT_LEN 296 // It will be used some day...

#define MAX_ROOM_COUNT		10

#define SECURE_CODE_C_TO_S	0x47
#define SECURE_CODE_S_TO_C	0x59

// MESSAGE ID
#define MSG_LOG_FROM_THREAD		40000
#define MSG_TRY_TO_SIGNUP		40001
#define MSG_SERVER_DATA			40002
#define MSG_TRY_TO_MAKING_ROOM	40003



// Information for Sign Up
typedef struct ST_SIGNUPINFO {
	UnicodeString ID;
	UnicodeString PW;
	UnicodeString UserName;
} SIGNUPINFO;

// Received Packet Struct From Server
typedef struct ST_SERVERDATA {
	BYTE Data[TCP_RECV_BUF_SIZE];
} SERVERDATA;

typedef struct ST_MAKINGROOMINFO {
	UnicodeString Title;
	BYTE TeamType;
	BYTE ItemType;
} MAKINGROOMINFO;




// DATA TYPE
#define DATA_TYPE_SIGN_UP			1
#define DATA_TYPE_SIGN_IN			2
#define DATA_TYPE_SIGN_OUT			3
#define DATA_TYPE_LOBBY_CHATTING	4
#define DATA_TYPE_INGAME_CHATTING	5
#define DATA_TYPE_CHANGE_USER_INFO	6
#define DATA_TYPE_INGAME_CMD		7
#define DATA_TYPE_MAKE_GAME_ROOM	8
#define DATA_TYPE_ENTER_GAME_ROOM	9
#define DATA_TYPE_ESCAPE_GAME_ROOM	10
#define DATA_TYPE_HEART_BEAT		11
#define DATA_TYPE_INGAME_DATA		12

#define DATA_TYPE_LOBBY_ROOMSTATUS	0xF1
#define DATA_TYPE_LOBBY_PLAYERLIST	0xF2



// DEFAULT ERR CODE
#define ERR_DEFAULT_SUCCESS		0
#define ERR_DEFAULT_SOCKET		1
#define ERR_DEFAULT_THREAD		2
#define ERR_DEFAULT_COMM		3
#define ERR_DEFAULT_UNKNOWN		4

// SIGN UP ERROR CODE
#define ERR_SIGNUP_SUCCESS			0
#define ERR_SIGNUP_SOCKET_ERR		1
#define ERR_SIGNUP_THREAD_ERR		2
#define ERR_SIGNUP_COMM_FAULT		3
#define ERR_SIGNUP_ID_DUPLICATED	4
#define ERR_SIGNUP_UNKNOWN			5

// MAKING ROOM ERROR CODE
#define ERR_MAKING_ROOM_SUCCESS		0
#define ERR_MAKING_ROOM_FAILED		1

// USER LEVEL
#define USER_LEVEL_0	0 // 신입
#define USER_LEVEL_1	1 // 루키
#define USER_LEVEL_2	2 // 초보
#define USER_LEVEL_3	3 // 하수
#define USER_LEVEL_4	4 // 중수
#define USER_LEVEL_5	5 // 고수
#define USER_LEVEL_6	6 // 초고수
#define USER_LEVEL_7	7 // 영웅
#define USER_LEVEL_8	8 // 전설
#define USER_LEVEL_9	9 // 신


typedef struct ST_ROOMSTATUS {
	BYTE RoomNumber;
	UnicodeString Title; // MAX UNICODE STRING LENGTH == 13 (Total 26 + 2 = 28 BYTE)
	BYTE State; // Wait or Gaming // 0 == Wait, 1 == Game
	BYTE TeamType; // Team or Private // 0 == Private, 1 == Team
	BYTE ItemType; // Item or NoTem // 0 == Notem, 1 == Item
	BYTE PlayerCount; // 0 ~ 6
	BYTE SpeedLevel; // 0 ~ 9
} ROOMSTATUS;
//---------------------------------------------------------------------------

typedef struct ST_PLAYER {
	bool Connected;
	UnicodeString UserID;
	BYTE Grade;
	BYTE ServerIdx;

	bool Life; // True == Alive, False == Death
	BYTE State; // State for effect by used Item. (ex, blind...)
	BYTE TeamIdx; // 0 == Private, 1 or 2 == Team Number
	bool Win; // True == Win, False == Defeat
	BYTE Block[10][20];
} PLAYER;

// For Sending to Server
typedef struct ST_ROOMCMD {
	bool StartSignal; // If Room Master
	BYTE TargetUserIdx;
	BYTE UseItemType;
} ROOMCMD;
//---------------------------------------------------------------------------





//---------------------------------------------------------------------------
#endif
