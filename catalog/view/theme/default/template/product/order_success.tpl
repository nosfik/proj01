<?php echo $header; ?>
<div class="content-wrapper">
    <div class="content">
    <?php echo $content_top; ?>
  <div class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
	</div>
  </div>
  
  
    <h1>Заявка успешно отправлена</h1>
 

  <?php echo $content_bottom; ?></div>

  </div>
  <script>
  
  
  
  function validate() {
  	var allPerfect = true;
  	var regexp = /\S+@\S+\.\S+/;
  	if($('#customerName').val() == '') {
  		$('#customerName').css('border', '1px solid red');
  		allPerfect = false;
  	} else {
  		$('#customerName').css('border', '');
  	}
  	
  	if($('#telephoneNumber').val() == '') {
  		$('#telephoneNumber').css('border', '1px solid red');
  		allPerfect = false;
  	} else {
  		$('#telephoneNumber').css('border', '');
  	}
  	
  	if(!regexp.test($('#email').val())) {
  		$('#email').css('border', '1px solid red');
  		allPerfect = false;
  	} else {
  		$('#email').css('border', '');
  	}
	if($('#capchaField').val() == '') {
  		$('#capchaField').css('border', '1px solid red');
  		allPerfect = false;
  	} else {
  		$('#capchaField').css('border', '');
  	}
	  	
  	return allPerfect;
  }
      $(function(){
          cuSel({
              changedEl: '#services',
              visRows: 6,
              scrollArrows: true
          });

          $('.order .form .column input')
                  .focus(function(){
                      $(this).addClass('focus');
                  })
                  .blur(function(){
                      $(this).removeClass('focus');
                      $(this).removeClass('input-focus');
                  });

          $('.order .form .column textarea')
                  .focus(function(){
                      $(this).addClass('focus');
                  })
                  .blur(function(){
                      $(this).removeClass('textarea-focus');
                      $(this).removeClass('focus');
                  });

          $('#capchaField')
                  .focus(function(){
                       $(this).addClass('focus');
                  })
                  .blur(function(){
                      $(this).removeClass('capcha-focus');
                      $(this).removeClass('focus');
                  });
                  
                  
            $('#capchaField').hover(
                function(){
                   $(this).parent().find('p').css('color', '#FF9E14'); 
                   $(this).addClass('capcha-focus');
                },
                function(){ 
                   $(this).parent().find('p').css('color', ''); 
                   if(!$(this).hasClass('focus')) {
                   	$(this).removeClass('capcha-focus');
                   }
                   
                }
        );
                  
                  
          $('#additionalInfo, #terms, #questions, #preferences').hover(
                function(){
                   $(this).parent().find('p').css('color', '#FF9E14'); 
                   $(this).addClass('textarea-focus');
                },
                function(){ 
                   $(this).parent().find('p').css('color', ''); 
                   if(!$(this).hasClass('focus')) {
                   	$(this).removeClass('textarea-focus');
                   }
                   
                }
        );
                  
                  
          $('#customerName, #telephoneNumber, #email, #otherPeople').hover(
                function(){
                   $(this).parent().find('p').css('color', '#FF9E14'); 
                   $(this).addClass('input-focus');
                },
                function(){ 
                   $(this).parent().find('p').css('color', ''); 
                   if(!$(this).hasClass('focus')) {
                   	$(this).removeClass('input-focus');
                   }
                   
                }
        );
        
        $('#cuselFrame-services').hover(
                function(){
                   $(this).parent().find('p').css('color', '#FF9E14'); 
                },
                function(){ 
                   $(this).parent().find('p').css('color', ''); 
                }
        );
      });

  </script>

<?php echo $footer; ?>