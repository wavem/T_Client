//---------------------------------------------------------------------------

#ifndef DefineH
#define DefineH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>

// COMM
#define IP_SERVER "127.0.0.1"
#define TCP_SERVER_PORT 14759

#define TCP_SEND_BUF_SIZE 300
#define TCP_RECV_BUF_SIZE 1300
#define TCP_MAX_TEXT_LEN 296 // It will be used some day...

#define SECURE_CODE_C_TO_S	0x47
#define SECURE_CODE_S_TO_C	0x59

// MESSAGE ID
#define MSG_LOG_FROM_THREAD	40000
#define MSG_TRY_TO_SIGNUP	40001
#define MSG_SERVER_DATA		40002



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




// DATA TYPE
#define DATA_TYPE_SIGN_UP			1
#define DATA_TYPE_SIGN_IN			2
#define DATA_TYPE_SIGN_OUT			3
#define DATA_TYPE_LOBBY_CHATTING	4
#define DATA_TYPE_INGAME_CHATTING	5
#define DATA_TYPE_CHANGE_USER_INFO	6
#define DATA_TYPE_INGAME_CMD		7
#define DATA_TYPE_ENTER_GAME_ROOM	8
#define DATA_TYPE_ESCAPE_GAME_ROOM	9
#define DATA_TYPE_HEART_BEAT		10
#define DATA_TYPE_INGAME_DATA		11


// SIGN UP ERROR CODE
#define ERR_SIGNUP_SUCCESS			0
#define ERR_SIGNUP_SOCKET_ERR		1
#define ERR_SIGNUP_THREAD_ERR		2
#define ERR_SIGNUP_COMM_FAULT		3
#define ERR_SIGNUP_ID_DUPLICATED	4
#define ERR_SIGNUP_UNKNOWN			5




//---------------------------------------------------------------------------
#endif
