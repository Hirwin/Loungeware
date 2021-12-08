/// @description Insert description here
// You can write your code in this editor
quickTimeList = ds_list_create();
firstQT = ds_list_create();
secondQT = ds_list_create();
thirdQT = ds_list_create();
fourthQT = ds_list_create();
ds_list_add(quickTimeList, firstQT, secondQT, thirdQT, fourthQT);

key = {
	up		: 0,
	down	: 1,
	left	: 2,
	right	: 3,
	a		: 4,
	b		: 5,
};

keyArray = [key.up, key.down, key.left, key.right, key.a, key.b];


createQuickTimes = function(_difficulty){
	for(var i = 0; i < ds_list_size(quickTimeList); i++){
		for(var j = 0; j < _difficulty; j++){
			quickTimeList[| i][| j] = irandom_range(0, array_length(keyArray) - 1);
		}
	}
}

inputCheck = function(){
	var curKey = -1;
	if KEY_UP			curKey = key.up;
	if KEY_DOWN			curKey = key.down;
	if KEY_LEFT			curKey = key.left;
	if KEY_RIGHT		curKey = key.right;
	if KEY_PRIMARY		curKey = key.a;
	if KEY_SECONDARY	curKey = key.b;
	
}

qteSuccess = function(){
		for(var i = 0; i < ds_list_size(quickTimeList); i++){
		for(var j = 0; j < _difficulty; j++){
			quickTimeList[| i][| j] = irandom_range(0, array_length(keyArray) - 1);
		}
	}
}

createQuickTimes(DIFFICULTY);
