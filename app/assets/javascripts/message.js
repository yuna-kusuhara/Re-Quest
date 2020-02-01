$(function(){
  function buildHTML(message){
      if (message.image) {
      var html =
        `<div class='align-right'>
        <div class='master-message'>
        <div class='master-message__info'>
        <div class='master-message__info--user'>${message.user_name}</div>
        <div class='master-message__info--datetime'>${message.created_at}</div>
        </div>
        <div class='master-message__text'>${message.text}</div>
        <img src="${message.image}" ></div>
        </div>
        </div>
        </div>`
      return html;
      } else {
      var html =
        `<div class='align-right'>
        <div class='master-message'>
        <div class='master-message__info'>
        <div class='master-message__info--user'>${message.user_name}</div>
        <div class='master-message__info--datetime'>${message.created_at}</div>
        </div>
        <div class='master-message__text'>${message.text}</div>
        </div>
        </div>
        </div>`
      return html;
      }
  }

  $('#new_message').on('submit', function(e){
    e.preventDefault()
    const formData = new FormData(this);
    const url = $(this).attr('action');
    $.ajax({
      url        : url,
      type       : 'POST',
      data       : formData,
      dataType   : 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.messages_area').append(html);
      $('form')[0].reset();
      $('.message-form__submit').prop("disabled", false);
    })
    .fail(function() {
      $('.message-form__submit').prop("disabled", false);
      alert('メッセージ送信に失敗しました');
    })
  })
})