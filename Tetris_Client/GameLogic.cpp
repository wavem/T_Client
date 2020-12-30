//---------------------------------------------------------------------------

#pragma hdrstop

#include "GameLogic.h"
#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


void __fastcall TFormMain::InitTetris() {
	m_Block = NULL;
	m_CreateSuccess = false;
	m_Score = 0;
	m_ComboCnt = 0;
	m_OldScore = 0;
	m_CleardLineCnt = 0;
	m_time_H = 0;
	m_time_M = 0;
	m_time_S = 0;
	m_NextBlockIdx = 0;
	m_IsPause = false;
	m_Speed = 1000;
	m_time_cnt = 0;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::AddScore(int _Value) {
	switch(_Value) {
		case 1:
			m_Score += 10;  // * 1 Valuable
			break;

		case 2:
			m_Score += 30;  // * 1.5 Valuable
			break;

		case 3:
			m_Score += 60;  // * 2 Valuable
			break;

		case 4:
			m_Score += 120; // * 3 Valuable
			break;

		default:
			break;
	}
	lb_Score->Caption = m_Score;
	m_CleardLineCnt = _Value;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::CheckCombo() {
	if(m_OldScore == m_Score) {
		m_ComboCnt = 0;
		lb_Combo->Caption = m_ComboCnt;
		return;
	}
	AddScore(m_CleardLineCnt * m_ComboCnt);

	CreateRandomItem();
	if(++m_ComboCnt > 2) {
		//CreateRandomItem();
	}
	lb_Combo->Caption = m_ComboCnt;
	m_OldScore = m_Score;
	m_CleardLineCnt = 0;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::CreateRandomItem() {

	PrintChat_InGame(L"CREATE RANDOM ITEM");

	///***** COMMON INIT *****///
	BYTE t_Byte = 0;
	int t_TopLine = MAX_GRID_Y - 1;
	bool t_bFindComplete = false;
	int total_block_cnt = 0;
	int check_cnt = 0;
	int randNum = 0;



	///***** FIND TOP LINE *****///
	for(int y = 0 ; y < MAX_GRID_Y ; y++) {
		for(int x = 0 ; x < MAX_GRID_X ; x++) {
			if(GetBitStatus(m_MyView[x][y], 7) || GetBitStatus(m_MyView[x][y], 6)) continue;
			t_Byte = GetBlockData(m_MyView[x][y]);
			if(t_Byte != 0) {
				t_TopLine = y;
				t_bFindComplete = true;
				break;
			}
		}
		if(t_bFindComplete) break;
	}

	if(!t_bFindComplete) return; // YOU DO NOT DESERVED GET ITEM


	///***** GET TOTAL BLOCK NUMBER *****///
	for(int y = 0 ; y < MAX_GRID_Y ; y++) {
		for(int x = 0 ; x < MAX_GRID_X ; x++) {
			if(GetBitStatus(m_MyView[x][y], 7) || GetBitStatus(m_MyView[x][y], 6)) continue;
			t_Byte = GetBlockData(m_MyView[x][y]);
			if(t_Byte != 0) total_block_cnt++;
		}
	}

	///***** GET RANDOM NUMBER *****///
	randNum = rand() % total_block_cnt;


	///***** GET ITEM *****///
	for(int y = 0 ; y < MAX_GRID_Y ; y++) {
		for(int x = 0 ; x < MAX_GRID_X ; x++) {
			if(GetBitStatus(m_MyView[x][y], 7) || GetBitStatus(m_MyView[x][y], 6)) continue;
			t_Byte = GetBlockData(m_MyView[x][y]);
			if(t_Byte != 0) {
				if(check_cnt == randNum) {
					int t_random = rand() % 2;
					switch(t_random) {
						case 0:
							m_MyView[x][y] = TYPE_ITEM_PLUS;
							break;

						case 1:
							m_MyView[x][y] = TYPE_ITEM_MINUS;
							break;

						default:
							m_MyView[x][y] = TYPE_ITEM_PLUS;
							break;
					}
					return;
				}
				check_cnt++;
			}
		}
	}
}
//---------------------------------------------------------------------------
















































































































void __fastcall TFormMain::RefreshNextBlock() {

	///***** RESET NEXT BLOCK IMAGE *****///
	TRect t_Rect;
	t_Rect.init(0, 0, img_NextBlock->Width, img_NextBlock->Height);
	img_NextBlock->Canvas->Brush->Color = clBlack;
	img_NextBlock->Canvas->FillRect(t_Rect);


	///***** COMMON INIT *****///
	int SX = 0; // START X POINT
	int SY = 0; // START Y POINT
	int x = 0;
	int y = 0;
	int g = 32; // g : GAP


	///***** REAL DRAWING *****///
	switch(m_NextBlockIdx) {
		case BLOCK_O:
			SX = 37;
			SY = 37;
			img_NextBlock->Canvas->Brush->Bitmap = m_BmpList_My[BLOCK_O];

			x = SX;
			y = SY;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x = SX;
			y = SY + g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x = SX + g + 1;
			y = SY;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x = SX + g + 1;
			y = SY + g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);
			break;

		case BLOCK_I:
			SX = 4;
			SY = 54;
			img_NextBlock->Canvas->Brush->Bitmap = m_BmpList_My[BLOCK_I];

			x = SX;
			y = SY;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);
			break;

		case BLOCK_T:
			SX = 20;
			SY = 67;
			img_NextBlock->Canvas->Brush->Bitmap = m_BmpList_My[BLOCK_T];

			x = SX;
			y = SY;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x = SX + g + 1;
			y = SY - g - 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);
			break;

		case BLOCK_J:
			SX = 23;
			SY = 38;
			img_NextBlock->Canvas->Brush->Bitmap = m_BmpList_My[BLOCK_J];

			x = SX;
			y = SY;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x = SX;
			y = SY + g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);
			break;

		case BLOCK_L:
			SX = 24;
			SY = 66;
			img_NextBlock->Canvas->Brush->Bitmap = m_BmpList_My[BLOCK_L];

			x = SX;
			y = SY;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x = SX;
			y = SY - g - 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);
			break;

		case BLOCK_S:
		    SX = 21;
			SY = 37;
			img_NextBlock->Canvas->Brush->Bitmap = m_BmpList_My[BLOCK_S];

			x = SX;
			y = SY;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x = SX + g + 1;
			y = SY + g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);
			break;

		case BLOCK_Z:
		    SX = 54;
			SY = 37;
			img_NextBlock->Canvas->Brush->Bitmap = m_BmpList_My[BLOCK_Z];

			x = SX;
			y = SY;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x = SX - g - 1;
			y = SY + g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);

			x += g + 1;
			t_Rect.init(x, y, x + g, y + g);
			img_NextBlock->Canvas->FillRect(t_Rect);
			break;

		default:
			break;
	}
}
//---------------------------------------------------------------------------


















__fastcall C_BLOCK::C_BLOCK(int _TYPE, unsigned char (*_p_My)[MAX_GRID_Y], bool* _p_rst) {

	///***** SAFE INIT MEMBER STRUCT *****///
	for(int i = 0 ; i < 4 ; i++) {
		POINT[i].X = 0;
		POINT[i].Y = 0;
		POINT[i].R = false;
	}


	///***** COMMON INIT *****///
	Direction = DIRECTION_U;
	Type = _TYPE;
	p_My = _p_My;


	///***** ALLOCATION *****///
	switch(_TYPE) {
		case BLOCK_O:
		{
			POINT[0].X = 4;
			POINT[0].Y = 2;
			POINT[1].X = 5;
			POINT[1].Y = 2;
			POINT[2].X = 4;
			POINT[2].Y = 3;
			POINT[3].X = 5;
			POINT[3].Y = 3;
			if(CheckCanCreate() == false) {
				*_p_rst = false;
				return;
			}
			p_My[4][2] = TYPE_BLOCK_O;
			p_My[5][2] = TYPE_BLOCK_O;
			p_My[4][3] = TYPE_BLOCK_O;
			p_My[5][3] = TYPE_BLOCK_O;
			p_My[4][2] = FormMain->_BitSetting(p_My[4][2], 7, true);
			p_My[5][2] = FormMain->_BitSetting(p_My[5][2], 7, true);
			p_My[4][3] = FormMain->_BitSetting(p_My[4][3], 7, true);
			p_My[5][3] = FormMain->_BitSetting(p_My[5][3], 7, true);
			break;
		}

		case BLOCK_I:
		{
			POINT[0].X = 3;
			POINT[0].Y = 2;
			POINT[1].X = 4;
			POINT[1].Y = 2;
			POINT[2].X = 5;
			POINT[2].Y = 2;
			POINT[3].X = 6;
			POINT[3].Y = 2;
			if(CheckCanCreate() == false) {
				*_p_rst = false;
				return;
			}
			p_My[3][2] = TYPE_BLOCK_I;
			p_My[4][2] = TYPE_BLOCK_I;
			p_My[5][2] = TYPE_BLOCK_I;
			p_My[6][2] = TYPE_BLOCK_I;
			p_My[3][2] = FormMain->_BitSetting(p_My[3][2], 7, true);
			p_My[4][2] = FormMain->_BitSetting(p_My[4][2], 7, true);
			p_My[5][2] = FormMain->_BitSetting(p_My[5][2], 7, true);
			p_My[6][2] = FormMain->_BitSetting(p_My[6][2], 7, true);

			POINT[2].R = true;
			break;
		}

		case BLOCK_T:
		{
			POINT[0].X = 5;
			POINT[0].Y = 2;
			POINT[1].X = 4;
			POINT[1].Y = 3;
			POINT[2].X = 5;
			POINT[2].Y = 3;
			POINT[3].X = 6;
			POINT[3].Y = 3;
			if(CheckCanCreate() == false) {
				*_p_rst = false;
				return;
			}
			p_My[5][2] = TYPE_BLOCK_T;
			p_My[4][3] = TYPE_BLOCK_T;
			p_My[5][3] = TYPE_BLOCK_T;
			p_My[6][3] = TYPE_BLOCK_T;
			p_My[5][2] = FormMain->_BitSetting(p_My[5][2], 7, true);
			p_My[4][3] = FormMain->_BitSetting(p_My[4][3], 7, true);
			p_My[5][3] = FormMain->_BitSetting(p_My[5][3], 7, true);
			p_My[6][3] = FormMain->_BitSetting(p_My[6][3], 7, true);

			POINT[2].R = true;
			break;
		}

		case BLOCK_J:
		{
			POINT[0].X = 4;
			POINT[0].Y = 2;
			POINT[1].X = 5;
			POINT[1].Y = 2;
			POINT[2].X = 6;
			POINT[2].Y = 2;
			POINT[3].X = 4;
			POINT[3].Y = 3;
			if(CheckCanCreate() == false) {
				*_p_rst = false;
				return;
			}
			p_My[4][2] = TYPE_BLOCK_J;
			p_My[5][2] = TYPE_BLOCK_J;
			p_My[6][2] = TYPE_BLOCK_J;
			p_My[4][3] = TYPE_BLOCK_J;
			p_My[4][2] = FormMain->_BitSetting(p_My[4][2], 7, true);
			p_My[5][2] = FormMain->_BitSetting(p_My[5][2], 7, true);
			p_My[6][2] = FormMain->_BitSetting(p_My[6][2], 7, true);
			p_My[4][3] = FormMain->_BitSetting(p_My[4][3], 7, true);

			POINT[1].R = true;
			break;
		}

		case BLOCK_L:
		{
			POINT[0].X = 4;
			POINT[0].Y = 2;
			POINT[1].X = 4;
			POINT[1].Y = 3;
			POINT[2].X = 5;
			POINT[2].Y = 3;
			POINT[3].X = 6;
			POINT[3].Y = 3;
			if(CheckCanCreate() == false) {
				*_p_rst = false;
				return;
			}
			p_My[4][2] = TYPE_BLOCK_L;
			p_My[4][3] = TYPE_BLOCK_L;
			p_My[5][3] = TYPE_BLOCK_L;
			p_My[6][3] = TYPE_BLOCK_L;
			p_My[4][2] = FormMain->_BitSetting(p_My[4][2], 7, true);
			p_My[4][3] = FormMain->_BitSetting(p_My[4][3], 7, true);
			p_My[5][3] = FormMain->_BitSetting(p_My[5][3], 7, true);
			p_My[6][3] = FormMain->_BitSetting(p_My[6][3], 7, true);

			POINT[2].R = true;
			break;
		}

		case BLOCK_S:
		{
			POINT[0].X = 4;
			POINT[0].Y = 2;
			POINT[1].X = 5;
			POINT[1].Y = 2;
			POINT[2].X = 5;
			POINT[2].Y = 3;
			POINT[3].X = 6;
			POINT[3].Y = 3;
			if(CheckCanCreate() == false) {
				*_p_rst = false;
				return;
			}
			p_My[4][2] = TYPE_BLOCK_S;
			p_My[5][2] = TYPE_BLOCK_S;
			p_My[5][3] = TYPE_BLOCK_S;
			p_My[6][3] = TYPE_BLOCK_S;
			p_My[4][2] = FormMain->_BitSetting(p_My[4][2], 7, true);
			p_My[5][2] = FormMain->_BitSetting(p_My[5][2], 7, true);
			p_My[5][3] = FormMain->_BitSetting(p_My[5][3], 7, true);
			p_My[6][3] = FormMain->_BitSetting(p_My[6][3], 7, true);

			POINT[2].R = true;
			break;
		}

		case BLOCK_Z:
		{
			POINT[0].X = 5;
			POINT[0].Y = 2;
			POINT[1].X = 6;
			POINT[1].Y = 2;
			POINT[2].X = 4;
			POINT[2].Y = 3;
			POINT[3].X = 5;
			POINT[3].Y = 3;
			if(CheckCanCreate() == false) {
				*_p_rst = false;
				return;
			}
			p_My[5][2] = TYPE_BLOCK_Z;
			p_My[6][2] = TYPE_BLOCK_Z;
			p_My[4][3] = TYPE_BLOCK_Z;
			p_My[5][3] = TYPE_BLOCK_Z;
			p_My[5][2] = FormMain->_BitSetting(p_My[5][2], 7, true);
			p_My[6][2] = FormMain->_BitSetting(p_My[6][2], 7, true);
			p_My[4][3] = FormMain->_BitSetting(p_My[4][3], 7, true);
			p_My[5][3] = FormMain->_BitSetting(p_My[5][3], 7, true);

			POINT[3].R = true;
			break;
		}

		default:
		{
			break;
		}
	}

	*_p_rst = true;
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::CheckCanCreate() {

	int x = 0;
	int y = 0;

	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		if(p_My[x][y]) {
			return false;
		}
	}
	return true;
}
//---------------------------------------------------------------------------

unsigned char __fastcall C_BLOCK::GetBlockType(int _TYPE) {
	unsigned char rst = 0;
	switch(_TYPE) {
		case BLOCK_O:
			rst = TYPE_BLOCK_O;
			break;
		case BLOCK_I:
			rst = TYPE_BLOCK_I;
			break;
		case BLOCK_J:
			rst = TYPE_BLOCK_J;
			break;
		case BLOCK_L:
			rst = TYPE_BLOCK_L;
			break;
		case BLOCK_S:
			rst = TYPE_BLOCK_S;
			break;
		case BLOCK_Z:
			rst = TYPE_BLOCK_Z;
			break;
		case BLOCK_T:
			rst = TYPE_BLOCK_T;
			break;
		default:
			break;
	}
	return rst;
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::MoveRight() {
	///***** COMMON INIT *****///
	int t_CheckCnt = 0;

	///***** CHECK IS POSSIBLE MOVE *****///
	t_CheckCnt = 0;
	int x = 0;
	int y = 0;
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		if(x == 9) return false;

		if(FormMain->GetBitStatus(p_My[x + 1][y], 7) || p_My[x + 1][y] == 0 || FormMain->GetBitStatus(p_My[x + 1][y], 6)) {
			++t_CheckCnt;
		}
	}
	if(t_CheckCnt != 4) return false;

	///***** DELETE CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y] = 0;
	}

	///***** RESET CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x + 1][y] = GetBlockType(Type);
		p_My[x + 1][y] = FormMain->_BitSetting(p_My[x + 1][y], 7, true);
		POINT[i].X = x + 1;
		POINT[i].Y = y;
	}

	//FormMain->PringMsg(L"MOVE RIGHT !");
	return true;
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::MoveLeft() {
	///***** COMMON INIT *****///
	int t_CheckCnt = 0;

	///***** CHECK IS POSSIBLE MOVE *****///
	t_CheckCnt = 0;
	int x = 0;
	int y = 0;
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		if(x == 0) return false;

		if(FormMain->GetBitStatus(p_My[x - 1][y], 7) || p_My[x - 1][y] == 0 || FormMain->GetBitStatus(p_My[x - 1][y], 6)) {
			++t_CheckCnt;
		}
	}
	if(t_CheckCnt != 4) return false;

	///***** DELETE CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y] = 0;
	}

	///***** RESET CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x - 1][y] = GetBlockType(Type);
		p_My[x - 1][y] = FormMain->_BitSetting(p_My[x - 1][y], 7, true);
		POINT[i].X = x - 1;
		POINT[i].Y = y;
	}

	//FormMain->PringMsg(L"MOVE LEFT !");
	return true;
}
//---------------------------------------------------------------------------

void __fastcall C_BLOCK::MoveUp() {

	///***** COMMON INIT *****///
	int x = 0;
	int y = 0;

	///***** DELETE CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y] = 0;
	}

	///***** RESET CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y - 1] = GetBlockType(Type);
		p_My[x][y - 1] = FormMain->_BitSetting(p_My[x][y - 1], 7, true);
		POINT[i].X = x;
		POINT[i].Y = y - 1;
	}
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::MoveDown() {
	///***** COMMON INIT *****///
	int t_CheckCnt = 0;

	///***** CHECK IS POSSIBLE MOVE *****///
	t_CheckCnt = 0;
	int x = 0;
	int y = 0;
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		if(y == MAX_GRID_Y - 1) {
			Complete();
			CheckLineClear();
			return true;
		}

		if(FormMain->GetBitStatus(p_My[x][y + 1], 7) || p_My[x][y + 1] == 0 || FormMain->GetBitStatus(p_My[x][y + 1], 6)) {
			++t_CheckCnt;
		}
	}
	if(t_CheckCnt != 4) {
		Complete();
		CheckLineClear();
		return true;
	}

	///***** DELETE CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y] = 0;
	}

	///***** RESET CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y + 1] = GetBlockType(Type);
		p_My[x][y + 1] = FormMain->_BitSetting(p_My[x][y + 1], 7, true);
		POINT[i].X = x;
		POINT[i].Y = y + 1;
	}

	//FormMain->PringMsg(L"MOVE DOWN !");
	return false;
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::Drop() {

	for(int i = 0 ; i < MAX_GRID_Y ; i++) {
		if(MoveDown()) {
			//FormMain->PringMsg(L"DROP !");
			return true;
		}
	}
	return false;
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::RotateRight() {
	///***** PRE RETURN IF BLOCK IS O *****///
	if(Type == BLOCK_O) {
		//FormMain->PringMsg(L"BLOCK O !");
		return false;
	}

	///***** COMMON INIT *****///
	int t_CheckCnt = 0;
	st_POINT t_NewPoint[4] = { };

	///***** GET ROTATION POINT *****///
	int RX = 0; // R : Rotation Point
	int RY = 0;
	for(int i = 0 ; i < 4 ; i++) {
		if(POINT[i].R) {
			RX = POINT[i].X;
			RY = POINT[i].Y;
			break;
		}
	}

	///***** CHECK IS POSSIBLE ROTATE *****///
	t_CheckCnt = 0;
	int x = 0;
	int y = 0;
	int GX = 0; // G : Gap x between RX
	int GY = 0; // G : Gap y between RY
	int NX = 0; // N : New x coordinate
	int NY = 0; // N : New y coordinate
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		if(x == RX && y == RY) {
			t_NewPoint[t_CheckCnt].X = x;
			t_NewPoint[t_CheckCnt].Y = y;
			++t_CheckCnt;
			continue; // Rotation Point : No Neccessary Rotate
		}

		GX = RX - x;
		GY = RY - y;
		NX = RX + GY;
		NY = RY - GX;

		if(NX > 9 || NX < 0 || NY < 0 || NY > 19) return false;

		if(FormMain->GetBitStatus(p_My[NX][NY], 7) || p_My[NX][NY] == 0 || FormMain->GetBitStatus(p_My[NX][NY], 6)) {
			t_NewPoint[t_CheckCnt].X = NX;
			t_NewPoint[t_CheckCnt].Y = NY;
			++t_CheckCnt;
		}
	}
	if(t_CheckCnt != 4) return false;

	///***** DELETE CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y] = 0;
	}

	///***** RESET CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = t_NewPoint[i].X;
		y = t_NewPoint[i].Y;
		p_My[x][y] = GetBlockType(Type);
		p_My[x][y] = FormMain->_BitSetting(p_My[x][y], 7, true);
		POINT[i].X = x;
		POINT[i].Y = y;
	}

	//FormMain->PringMsg(L"ROTATE RIGHT !");
	return true;
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::RotateLeft() {
	///***** PRE RETURN IF BLOCK IS O *****///
	if(Type == BLOCK_O) {
		//FormMain->PringMsg(L"BLOCK O !");
		return false;
	}

	///***** COMMON INIT *****///
	int t_CheckCnt = 0;
	st_POINT t_NewPoint[4] = { };

	///***** GET ROTATION POINT *****///
	int RX = 0; // R : Rotation Point
	int RY = 0;
	for(int i = 0 ; i < 4 ; i++) {
		if(POINT[i].R) {
			RX = POINT[i].X;
			RY = POINT[i].Y;
			break;
		}
	}

	///***** CHECK IS POSSIBLE ROTATE *****///
	t_CheckCnt = 0;
	int x = 0;
	int y = 0;
	int GX = 0; // G : Gap x between RX
	int GY = 0; // G : Gap y between RY
	int NX = 0; // N : New x coordinate
	int NY = 0; // N : New y coordinate
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		if(x == RX && y == RY) {
			t_NewPoint[t_CheckCnt].X = x;
			t_NewPoint[t_CheckCnt].Y = y;
			++t_CheckCnt;
			continue; // Rotation Point : No Neccessary Rotate
		}

		GX = RX - x;
		GY = RY - y;
		NX = RX - GY;
		NY = RY + GX;

		if(NX > 9 || NX < 0 || NY < 0 || NY > 19) return false;

		if(FormMain->GetBitStatus(p_My[NX][NY], 7) || p_My[NX][NY] == 0 || FormMain->GetBitStatus(p_My[NX][NY], 6)) {
			t_NewPoint[t_CheckCnt].X = NX;
			t_NewPoint[t_CheckCnt].Y = NY;
			++t_CheckCnt;
		}
	}
	if(t_CheckCnt != 4) return false;

	///***** DELETE CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y] = 0;
	}

	///***** RESET CURRENT BLOCK *****///
	for(int i = 0 ; i < 4 ; i++) {
		x = t_NewPoint[i].X;
		y = t_NewPoint[i].Y;
		p_My[x][y] = GetBlockType(Type);
		p_My[x][y] = FormMain->_BitSetting(p_My[x][y], 7, true);
		POINT[i].X = x;
		POINT[i].Y = y;
	}

	//FormMain->PringMsg(L"ROTATE RIGHT !");
	return true;
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::Complete() {
	int x = 0;
	int y = 0;
	for(int i = 0 ; i < 4 ; i++) {
		x = POINT[i].X;
		y = POINT[i].Y;
		p_My[x][y] = GetBlockType(Type);
	}
	return true;
}
//---------------------------------------------------------------------------

bool __fastcall C_BLOCK::CheckLineClear() {

	int t_ClearCnt = 0;
	int t_CheckCnt = 0;
	for(int y = 0 ; y < MAX_GRID_Y ; y++) {
		for(int x = 0 ; x < MAX_GRID_X ; x++) {
			if(p_My[x][y]) t_CheckCnt++;
		}
		if(t_CheckCnt == 10) {
			ClearLine(y);
			t_ClearCnt++;
		}
		t_CheckCnt = 0;
	}
	FormMain->AddScore(t_ClearCnt);
	return true;
}
//---------------------------------------------------------------------------

void __fastcall C_BLOCK::ClearLine(int _Num) {
	for(int x = 0 ; x < MAX_GRID_X ; x++) {
		p_My[x][_Num] = 0;
	}

	for(int y = _Num - 1 ; y >= 0 ; y--) {
		for(int x = 0 ; x < MAX_GRID_X ; x++) {
			if(FormMain->GetBitStatus(p_My[x][y], 7) || FormMain->GetBitStatus(p_My[x][y], 6)) continue;
			if(FormMain->GetBitStatus(p_My[x][y + 1], 7) || FormMain->GetBitStatus(p_My[x][y + 1], 6)) continue;
			p_My[x][y + 1] = p_My[x][y];
			p_My[x][y] = 0;
		}
	}
}
//---------------------------------------------------------------------------



