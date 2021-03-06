JsOsaDAS1.001.00bplist00�Vscript_�// NSMatrix: https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/NSMatrix_Class/Reference/Reference.html

ObjC.import("Cocoa");

var mask = $.NSTitledWindowMask | $.NSClosableWindowMask | $.NSMiniaturizableWindowMask;

var windowWidth = 300;
var windowHeight = 200;

var window = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
	$.NSMakeRect(0, 0, windowWidth, windowHeight),
	mask,
	$.NSBackingStoreBuffered,
	false
);

var proto = $.NSButtonCell.alloc.init;
proto.title = "Options";
proto.buttonType = $.NSRadioButton;

var rows = 4;
var cols = 1;

var matrix = $.NSMatrix.alloc.initWithFrameModePrototypeNumberOfRowsNumberOfColumns(
	$.NSMakeRect(100, 50, 250, 100),
	$.NSRadioModeMatrix,
	proto,
	rows,
	cols
);

matrix.cellSize = {width: 250, height: 24};

window.contentView.addSubview(matrix);

var theCells = matrix.cells;
theCells.objectAtIndex(0).title = "One Fish";
theCells.objectAtIndex(1).title = "Two Fish";
theCells.objectAtIndex(2).title = "Red Fish";
theCells.objectAtIndex(3).title = "Blue Fish";

proto.release;
matrix.release;

window.center;
window.title = "NSMatrix Example";
window.makeKeyAndOrderFront(window);                              � jscr  ��ޭ