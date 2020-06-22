$(function() {
  $("#createBtn").click(function() {
    new Memo().create();
  });
});

function Memo() {
  this.$note = null;
}

// 메모 전체 생성(create)
Memo.prototype.create = function() {
  var $note = $(
    `<div class="memo-note">
	      <div class="memo-bar">
	        <span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
	        <span class="glyphicon glyphicon-pushpin" aria-hidden="true"></span>
	        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
	      </div>
	      <div class="memo-edit">
	        <textarea class="memo-edit-area"></textarea>
	      </div>
	    </div>`
  );
  this.$note = $note;

  $note.appendTo(".memo-area");

  // 1. 메모 드래그 하기
  this.drag();

  // this 설정하기
  var that = this;

  // 2. 삭제 기능 구현
  $note.find(".glyphicon-trash").click(function() {
    that.del();
  });

  // 3. 메모 보이기
  $note.find(".glyphicon-chevron-up").click(function() {
    that.display();
  });

  // 4. 메모 고정시키기
  $note.find(".glyphicon-pushpin").click(function() {
    that.fix();
  });
};

// 메모 드래그(drag)
Memo.prototype.drag = function() {
  this.$note.draggable();
};

// 메모 삭제(del)
Memo.prototype.del = function() {
  this.$note.remove();
};

// 메모 보이기(display)
Memo.prototype.display = function() {
  this.$note.toggleClass("h20");
  var that = this;
  setTimeout(function() {
    that.$note
      .find(".glyphicon-chevron-up,.glyphicon-chevron-down")
      .toggleClass("glyphicon-chevron-up glyphicon-chevron-down");
  }, 400);
};

// 메모 고정(fix)
Memo.prototype.fix = function() {
  if (
    this.$note
      .find(".glyphicon-pushpin")
      .toggleClass("choice")
      .hasClass("choice")
  ) {
    this.$note.draggable("disable");
    return;
  }
  this.$note.draggable("enable");
};