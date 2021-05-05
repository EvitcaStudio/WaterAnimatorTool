World
	gameWidth = 480
	gameHeight = 270

#BEGIN JAVASCRIPT

window.onload = null;

const BASE_SIZE = 32;
const FRAME_DELAY = 160;
const SIXTEEN = 16

var PEAK1 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAKnZcPcZeWBmozVglw1KB2RjSgNuYp4FnPo6PydAkkJT+2JeUjtcEVR21W5jSs/q0r3aAAAACPkBi/MjZuXKuJkAAAAASUVORK5CYII='
var PEAK2 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAAloNtx9Rh6Y2WgN2GWD0gHZmNKAm5hnAae+zs8JkKTQ1L6Yl9QOVwSVXbXbmNKzunSvNgAACPkBMDYjZiG5iFQAAAAASUVORK5CYII='
var PEAK3 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAAkAmg13n5EHZjZaA3bZoHRANqY04CbmWcCpr/NzAiQpNLUv5iW1wxVBZVftNqb0rC7dqw0ACPkB1GojZp0ZWp8AAAAASUVORK5CYII='
var PEAK4 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAAkAgGbD3WfkgZmN1oBdNigdkI0pDbiJeRZw6uv8nABJCk3ti3lJ7XBFUNlVu40pPatL92oDCPkBeK0jZmc1E5IAAAAASUVORK5CYII='
var PEAK5 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAAkAAKDZcPcZeWBmozVglw1KB2RjSgNuYp4FnPo6PydAkkJT+2JeUjtcEVR21W5jSs/q0r3aCPkBHPAjZjGabnEAAAAASUVORK5CYII='
var PEAK6 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFdJREFUWIXt1jEOACEIBdHPttz/qNS7vdUiEBMz7wA6BRpMAyLinTgXAAAAd7LsAunudjRgVQ0qB1RjWgN2YsYC/npOXk6AJKWmdmJeSm+4I6jtV9uN+QAwtSNmr0jdvQAAAABJRU5ErkJggg=='
var PEAK7 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFtJREFUWIXt1iEOwDAIQNFSy/2Pit4sqRqFhi75T5PwBQIxs2c0ksjwidhQwKoiKBXg7caUBXjddwUAAIB/kegDqaqlj2w4YJUNSgdkY0oDdmKOBXw1O5dfEfACiVUnQ7/GKjMAAAAASUVORK5CYII='
var PEAK8 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAF5JREFUWIXt17EKQCEIQFF9q///qc69KYgmKyWCe2ahO9igunuTAmamkTmtCoj6bj5OgIhIaFG6in1ZCphlBB0FjHZj0gJGt782AAAA3rJ8G0aPzrKA2WlQ6nW8E/MDLAEjZo9Zl/QAAAAASUVORK5CYII='

var TROUGH1 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAAkAAKDZcPcZeWBmozVglw1KB2RjSgNuYp4FnPo6PydAkkJT+2JeUjtcEVR21W5jSs/q0r3aCPkBHPAjZjGabnEAAAAASUVORK5CYII='
var TROUGH2 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFdJREFUWIXt1jEOACEIBdHPttz/qNS7vdUiEBMz7wA6BRpMAyLinTgXAAAAd7LsAunudjRgVQ0qB1RjWgN2YsYC/npOXk6AJKWmdmJeSm+4I6jtV9uN+QAwtSNmr0jdvQAAAABJRU5ErkJggg=='
var TROUGH3 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFtJREFUWIXt1iEOwDAIQNFSy/2Pit4sqRqFhi75T5PwBQIxs2c0ksjwidhQwKoiKBXg7caUBXjddwUAAIB/kegDqaqlj2w4YJUNSgdkY0oDdmKOBXw1O5dfEfACiVUnQ7/GKjMAAAAASUVORK5CYII='
var TROUGH4 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAF5JREFUWIXt17EKQCEIQFF9q///qc69KYgmKyWCe2ahO9igunuTAmamkTmtCoj6bj5OgIhIaFG6in1ZCphlBB0FjHZj0gJGt782AAAA3rJ8G0aPzrKA2WlQ6nW8E/MDLAEjZo9Zl/QAAAAASUVORK5CYII='
var TROUGH5 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAKnZcPcZeWBmozVglw1KB2RjSgNuYp4FnPo6PydAkkJT+2JeUjtcEVR21W5jSs/q0r3aAAAACPkBi/MjZuXKuJkAAAAASUVORK5CYII='
var TROUGH6 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAAloNtx9Rh6Y2WgN2GWD0gHZmNKAm5hnAae+zs8JkKTQ1L6Yl9QOVwSVXbXbmNKzunSvNgAACPkBMDYjZiG5iFQAAAAASUVORK5CYII='
var TROUGH7 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAAkAmg13n5EHZjZaA3bZoHRANqY04CbmWcCpr/NzAiQpNLUv5iW1wxVBZVftNqb0rC7dqw0ACPkB1GojZp0ZWp8AAAAASUVORK5CYII='
var TROUGH8 = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFhJREFUWIXt1KEWACEIBdHnVv7/U8lusphE8FDmdo8TAAkAgGbD3WfkgZmN1oBdNigdkI0pDbiJeRZw6uv8nABJCk3ti3lJ7XBFUNlVu40pPatL92oDCPkBeK0jZmc1E5IAAAAASUVORK5CYII='

var canvas = document.createElement('canvas');
var ctx = canvas.getContext('2d');
var downloader;
var count = 0;
var count2 = 0;
var vyi = {
	'v': 1,
	'i': [[
		'animatedTile',
		BASE_SIZE,
		BASE_SIZE,
		FRAME_DELAY,
		null, // image icon
		[] // frames
	]]
}

var waterAnimator = {
	'canvas': canvas,
	'ctx': ctx,
	'status': { '1': false, '2': false, '3': false },
	'image': {},
	'masks': {},
	'frames': [],
	'getWaves': function () {
		this.canvas.width = BASE_SIZE;
		this.canvas.height = BASE_SIZE;

		for (let i = 0, k = 1; i < SIXTEEN / 2; i++, k++) {	
			this.ctx.drawImage(this.masks['PEAK' + k], 0, 0);
			this.ctx.globalCompositeOperation = 'source-in';
			this.ctx.drawImage(this.image.peak, 0, 0);
			this.masks['PEAK' + k].src = this.canvas.toDataURL();
			this.ctx.clearRect(0, 0, BASE_SIZE, BASE_SIZE);
			this.ctx.globalCompositeOperation = 'source-over';
			this.masks['PEAK' + k].onload = function() {
				count2++;
			}
		}

		this.ctx.clearRect(0, 0, BASE_SIZE, BASE_SIZE);
		this.ctx.globalCompositeOperation = 'source-over';

		for (let i = 0, k = 1; i < SIXTEEN / 2; i++, k++) {	
			this.ctx.drawImage(this.masks['TROUGH' + k], 0, 0);
			this.ctx.globalCompositeOperation = 'source-in';
			this.ctx.drawImage(this.image.trough, 0, 0);
			this.masks['TROUGH' + k].src = this.canvas.toDataURL();
			this.ctx.clearRect(0, 0, BASE_SIZE, BASE_SIZE);
			this.ctx.globalCompositeOperation = 'source-over';
			this.masks['TROUGH' + k].onload = function() {
				count2++;	
				if (count2 === SIXTEEN) {
					waterAnimator.status['3'] = true;
					waterAnimator.animate();
				}
			}
		}

		this.ctx.clearRect(0, 0, BASE_SIZE, BASE_SIZE);
		this.ctx.globalCompositeOperation = 'source-over';
	},

	'animate': function() {
		for (let i = 0, k = 1; i < SIXTEEN / 2; i++, k++) {
			this.ctx.drawImage(this.image.normal, 0, 0);
			this.ctx.drawImage(this.masks['PEAK' + k], 0, 0);
			this.ctx.drawImage(this.masks['TROUGH' + k], 0, 0);
			this.frames.push(this.canvas.toDataURL());
			this.ctx.clearRect(0, 0, BASE_SIZE, BASE_SIZE);
		}

		this.ctx.clearRect(0, 0, BASE_SIZE, BASE_SIZE);
		for (let i = 0; i < SIXTEEN / 2; i++) {
			vyi['i'][0][5][i] = [];
			vyi['i'][0][5][i][0] = this.frames.shift().replace('data:image/png;base64,', '');
			vyi['i'][0][5][i][1] = FRAME_DELAY;
		}
		vyi['i'][0][4] = vyi['i'][0][5][0][0];
		vyi['i'][0][5].shift();
		if (!downloader) {
			downloader = document.createElement('A');
			document.body.appendChild(downloader);
		}

		downloader.href = 'data:text/plain;charset=utf-8,' + encodeURIComponent(JSON.stringify(vyi));
		downloader.download = 'animatedTile.vyi';
		downloader.style.color = '#52697d';
		downloader.text  = 'Export vyi';
	}
}

function generateMasks() {
	waterAnimator.masks = {};
	waterAnimator.image = {};
	waterAnimator.frames = [];
	waterAnimator.status['1'] = false;
	waterAnimator.status['2'] = false;
	waterAnimator.status['3'] = false;
	waterAnimator.vyi = { 'v': 1,'i': [ ['animatedTile', BASE_SIZE, BASE_SIZE ,FRAME_DELAY, null, []] ] };
	waterAnimator.ctx.clearRect(0, 0, BASE_SIZE, BASE_SIZE);
	count = 0;
	count2 = 0;

	for (var i = 0, k = 1, name = 'PEAK'; i < SIXTEEN; i++, k++) {
		if (k === 9) {
			k = 1;
			name = 'TROUGH';
		}
		let img = new Image(BASE_SIZE, BASE_SIZE);
		img.onload = function() {
			count++;
			if (count === SIXTEEN) {
				waterAnimator.status['1'] = true;
			}
		}

		img.src = window[name + k];
		waterAnimator.masks[name + k] = img;
	}
}

var input = document.createElement('input');
input.type = 'file';
input.accept = 'image/*';
var body = document.createElement('body');
document.body = body;
body.style = 'color: #fff;'
body.innerText = 'Please use a 32x32 size icon for best results'
document.body.appendChild(input);

input.onchange = function(event) {
	var file = event.target.files[0];
	var reader = new FileReader();
	var reader2 = new FileReader();
	var reader3 = new FileReader();

	generateMasks();

	reader.onload = function(e) {
		var img = new Image(BASE_SIZE, BASE_SIZE);
		img.onload = function() {
			waterAnimator.image.normal = this;
		}
		img.src = e.target.result;
	}

	if (file) {
		reader.readAsDataURL(file);
	}

	reader2.onload = function(e) {
		var img = new Image(BASE_SIZE, BASE_SIZE);
		img.onload = function() {
			var canvas = document.createElement('canvas');
			var ctx = canvas.getContext('2d');
			canvas.width = BASE_SIZE;
			canvas.height = BASE_SIZE;
			var peak = new Image(BASE_SIZE, BASE_SIZE);
			ctx.drawImage(this, 0, 0, BASE_SIZE, 1, 0, BASE_SIZE - 1, BASE_SIZE, 1);
			ctx.drawImage(this, 0, 1, BASE_SIZE, BASE_SIZE - 1, 0, 0, BASE_SIZE, BASE_SIZE - 1);
			peak.onload = function() {
				waterAnimator.image.peak = this;
				if (waterAnimator.status['2']) {
					waterAnimator.getWaves();
				}
				waterAnimator.status['2'] = true;
			}
			peak.src = canvas.toDataURL();
		}
		img.src = e.target.result;
	}

	if (file) {
		reader2.readAsDataURL(file);
	}

	reader3.onload = function(e) {
		var img = new Image(BASE_SIZE, BASE_SIZE);
		img.onload = function() {
			var canvas = document.createElement('canvas');
			var ctx = canvas.getContext('2d');
			canvas.width = BASE_SIZE;
			canvas.height = BASE_SIZE;
			var trough = new Image(BASE_SIZE, BASE_SIZE);
			ctx.drawImage(this, 0, BASE_SIZE - 1, BASE_SIZE, 1, 0, 0, BASE_SIZE, 1);
			ctx.drawImage(this, 0, 0, BASE_SIZE, BASE_SIZE - 1, 0, 1, BASE_SIZE, BASE_SIZE - 1);
			trough.onload = function() {
				waterAnimator.image.trough = this;
				if (waterAnimator.status['2']) {
					waterAnimator.getWaves();
				}
				waterAnimator.status['2'] = true;
			}
			trough.src = canvas.toDataURL();
		}
		img.src = e.target.result;
	}

	if (file) {
		reader3.readAsDataURL(file);
	}
}

#END JAVASCRIPT