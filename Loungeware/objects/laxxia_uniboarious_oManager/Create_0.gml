/// @description Insert description here
// You can write your code in this editor
quickTimeList = ds_list_create();
firstQT = ds_list_create();
secondQT = ds_list_create();
thirdQT = ds_list_create();
fourthQT = ds_list_create();
ds_list_add(quickTimeList, firstQT, secondQT, thirdQT, fourthQT);
currentList = 0;
currentInput = 0;
markerArray = [];
horizBuff = 30;

key = {
	up		: 0,
	down	: 1,
	left	: 2,
	right	: 3,
	a		: 4,
	b		: 5,
};

keyArray = [key.up, key.down, key.left, key.right, key.a, key.b];

createQuickTimeMarkers = function(){
	for (var i = 0; i < DIFFICULTY; i++){
		var inst = instance_create_layer(room_width/2 + (horizBuff * i), room_height/3, "Instances", laxxia_uniboarious_QTEMarker);
		inst.setMarker(quickTimeList[| currentList][| i]);
		markerArray[i] = inst;
	}
}

createQuickTimes = function(_difficulty){
	for(var i = 0; i < ds_list_size(quickTimeList); i++){
		for(var j = 0; j < _difficulty; j++){
			quickTimeList[| i][| j] = irandom_range(0, array_length(keyArray) - 1);
		}
	}
	createQuickTimeMarkers();
}

createQuickTimes(DIFFICULTY);

inputCheck = function(){
	var curKey = -1;
	var QTE = quickTimeList;
	if KEY_UP_PRESSED			curKey = key.up;
	if KEY_DOWN_PRESSED			curKey = key.down;
	if KEY_LEFT_PRESSED			curKey = key.left;
	if KEY_RIGHT_PRESSED		curKey = key.right;
	if KEY_PRIMARY_PRESSED		curKey = key.a;
	if KEY_SECONDARY_PRESSED	curKey = key.b;
	if(curKey != -1){	
		if(QTE[| currentList][| currentInput] == curKey){
			var listSize = ds_list_size(QTE[| currentList])
			if(listSize - 1 == currentInput && currentList < 3){
				instance_destroy(markerArray[currentInput])
				currentList ++;
				currentInput = 0; 
				createQuickTimeMarkers();
				curKey = -1;
			} else if(listSize - 1 == currentInput && currentList == 3){
				instance_destroy(markerArray[currentInput])
				microgame_win();
			} else if (listSize - 1 > currentInput){
				instance_destroy(markerArray[currentInput]);
				markerShift(currentInput);
				currentInput ++;
				curKey = -1;
			}
		} else {
			microgame_end_early();
		}
	}
}

markerShift = function(currentInput){
	var QTE = quickTimeList;
	var listSize = ds_list_size(QTE[| currentList])
	for(var i = currentInput + 1; i <= listSize - 1; i++){
		markerArray[i].x -= horizBuff;
	}
}

qteSuccess = function(){
		for(var i = 0; i < ds_list_size(quickTimeList); i++){
		for(var j = 0; j < _difficulty; j++){
		}
	}
}
