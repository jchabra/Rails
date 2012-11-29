$(function(){

	$('#field').hide();
	$('#name').click(hide_button);
	$('#go').click(go);

});
var type = $('#type').text();

function hide_button()
{
	$('#name').hide();
	$('#field').show();
}

function go()
{
	$('#field').hide();
	// var type = $('#type').text();
	var number = type.length
	$('#text').text('Hello ' + type + '. Your name is ' + number + ' characters long.');
}