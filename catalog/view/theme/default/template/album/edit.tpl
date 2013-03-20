<?php echo $header; ?>


<div id="content">
    <?php echo $content_top; ?>

	
  
  	<input type="hidden" name="copy" id="photo_copy" value=""/>
    <div id="yellow_cont">
        <div id="help_cont">
            <div id="help">
                <h3>Подсказка</h3>
                Нажмите на изображение, чтобы добавить фото в заказ.
                <div class="clear"></div>
                <div id="edit"><img src="catalog/view/theme/default/image/flag.png"></div>
                <div class="text">&mdash; редактировать</div>
                <div id="del"><img src="catalog/view/theme/default/image/flag.png"></div>
                <div class="text">&mdash; удалить</div>
                <div class="clear"></div>
            </div>
            <div id="corner"></div>
        </div>
        <div class="crumbs">
            <div class="left"></div>
            <div class="dark"><a href="<?php echo $this -> url -> link('account/account', '', 'SSL'); ?>">Личный кабинет</a></div>
            <div class="darkEnd"></div>
            <div class="light"><a href="<?php echo $this -> url -> link('album/album', '', 'SSL'); ?>">Мои фотоальбомы</a></div>
            <div class="lightEnd"></div>
            <div class="light2"><a href="<?php echo $this -> url -> link('album/content', 'album_id=' . $album_id, 'SSL'); ?>"> <?php echo $albumName; ?></a></div>
            <div class="light2End"></div>
            <div class="light3">Редактируем фото и отправляем на печать</div>
            <div class="light3End"></div>
        </div>
        <div id="edit_photo_cont">
        		
        		
        		<div id="dell_photo_window" class="del_window" style="display:none">
				      <input type="hidden" name="photo" value=""/>  
				      <input type="hidden" name="album" value=""/>  
				      <div id="close">
				        <a onclick="$('#dell_photo_window').fadeOut()">
				          <img src="catalog/view/theme/default/image/blank.gif">
				        </a>
				      </div>
				      <div id="mess">Удалить Фотографию "<span id="deleteContent"></span>"?</div>
				      <div id="round_red">
				        <div style="margin-left:80px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
				          <a class="left" onclick="delete_album_approved()">Да, подтверждаю</a>
				          <div class="right"></div>
				        </div>
				        <div style="margin-left:20px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
				          <a class="left" onclick="$('#dell_photo_window').fadeOut()">Отменить удаление</a>
				          <div class="right"></div>
				        </div>
				        <div class="clear"></div>
				      </div>
				  </div>
     <form method="post" id="photo_edit_form" >   		
        		
            <h1>Индивидуальные настройки печати</h1>
            <div id="photo_cont">
                <div id="price_cont"><p><span></span><span> грн.</span></p>Стоимомть фотографии с выбранными параметрами</div>
                <div id="crop-preview">
                    <div id="crop-preview-container">
                    	<?php if($update) { ?>
                    		<img src="<?php echo $photo['path']?>?<?php echo strtotime("now")?>">
                    	<?php } else { ?>
                    		<img src="<?php echo $photo['path']?>">
                    	<?php } ?>
                    </div>
                </div>
                <a class="left" <?php if ($photo['prev']!='') { ?>href="<?php echo $photo['prev']?>"<?php } ?>>Предыдущее фото</a>
                <a class="right" <?php if ($photo['next']!='') { ?>href="<?php echo $photo['next']?>"<?php } ?>>Следующее фото</a>
            </div>
            <div id="white">
                <div class="left">
                    <h2>Форматы печати</h2>
                    <?php foreach ($formats as $format) { ?>
                    <div id="imgFormat">
                      <?php if($photo['format'] == $format['id']) { ?>
                        <input type="radio" name="format" data-price="<?php echo $format['price']?>" value="<?php echo $format['id']?>" checked="checked"><?php echo $format['name']?> <span><?php echo $format['price']?>&nbsp;грн</span>
                       <?php  } else { ?>
                         <input type="radio" name="format" data-price="<?php echo $format['price']?>" value="<?php echo $format['id']?>"><?php echo $format['name']?> <span><?php echo $format['price']?>&nbsp;грн</span>
                        <?php } ?> 
                        
                    </div>
                    <?php } ?>


                </div>
                <div  id="imgPaper" style="margin-left:70px" class="left">
                    <h2>Тип фотобумаги</h2>
                    <?php foreach ($papers as $paper) { ?>
                      <?php if($photo['paper'] == $paper['id']) { ?>
                        <div><input type="radio" name="paper" data-percent="<?php echo $paper['percent']?>" value="<?php echo $paper['id']?>" checked="checked"><?php echo $paper['name']?></div>
                       <?php  } else { ?>
                         <div><input type="radio" name="paper" data-percent="<?php echo $paper['percent']?>" value="<?php echo $paper['id']?>"><?php echo $paper['name']?></div>
                        <?php } ?> 
                    
                    <?php } ?>


                </div>

            </div>
            <div id="bottom" class="imgSize">
                <p class="initialSize">Начальный размер:
                    <span class="imgWidth">0</span>
                    <span> x </span>
                    <span class="imgHeight">0</span>px
                </p>
                <p class="cropSize">Размер после кадрирования:
                    <span class="imgWidth">0</span>
                    <span> x </span>
                    <span class="imgHeight">0</span>px
                </p>

            </div>
        </div>
    </div>

    <div id="green_cont">
        <div style="float:right">
            <div id="applyToPhoto" onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a class="left">Применить к фото</a>

                <div class="right"></div>
            </div>
            <div class="clear"></div>
            <div id="applyToCopy" onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a class="left">Применить к копии</a>

                <div class="right"></div>
            </div>
            <div class="clear"></div>
            <div onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a href="<?php echo $this -> url -> link('album/content', 'album_id='.$album_id, 'SSL'); ?>" class="left">Вернуться к заказу</a>

                <div class="right"></div>
            </div>
        </div>
        <div id="edit_photo_buttons">
            <div class="linkCont"><a id="cropImgBtn" class="b1">Кадрировать</a></div>
            <div id="rotateRight" class="linkCont"><a class="b2">Повернуть<br>
                по часовой</a></div>
            <div id="rotateLeft" class="linkCont"><a class="b3">Повернуть<br>против часовой</a></div>
            <div class="linkCont"><a onclick="delete_photo( <?php echo $photo['id']?>, '<?php echo $photo['name']?>')" class="b4">Удалить</a></div>
            <div style="margin:20px 0 0 0px; width:700px" id="step3_field_cont">
                <div class="cont">Цветокоррекция<br>
                    <select name="color_correction">
                    		<option value="1" <?php if($photo['color_correction'] == 1){ echo 'selected="selected"';}?>>Не делать</option>
                        <option value="2" <?php if($photo['color_correction'] == 2){ echo 'selected="selected"';}?>>Делать</option>
                    </select>
                </div>
                <div class="cont">Обрезка<br>
                    <select name="cut">
                        <option value="1" <?php if($photo['cut'] == 1){ echo 'selected="selected"';}?>>Без эффектов</option>
                        <option value="2" <?php if($photo['cut'] == 2){ echo 'selected="selected"';}?>>С эффектами</option>
                    </select>
                </div>
                <div class="cont">Белая рамка<br>
                    <select name="white_border">
                        <option value="1" <?php if($photo['white_border'] == 1){ echo 'selected="selected"';}?>>Без рамки</option>
                        <option value="2" <?php if($photo['white_border'] == 2){ echo 'selected="selected"';}?>>С рамкой</option>
                    </select>
                </div>
                <div class="cont">Красные глаза<br>
                    <select name="red_eye">
                        <option value="1" <?php if($photo['red_eye'] == 1){ echo 'selected="selected"';}?>>Не делать</option>
                        <option value="2" <?php if($photo['red_eye'] == 2){ echo 'selected="selected"';}?>>Делать</option>
                    </select>
                </div>
                <div class="cont">Эффект<br>
                    <select name="printmode">
                     <?php foreach($printmodes as $printmode) { ?>
                     		<?php if($printmode['id'] == $photo['printmode']) { ?>
                     			<option value="<?php echo $printmode['id']?>" selected="selected"><?php echo $printmode['name']?></option>
                     		<?php } else {?>
                     			<option value="<?php echo $printmode['id']?>"><?php echo $printmode['name']?></option>
                     		<?php } ?>
                     	<?php } ?>
                    </select>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>

    </div>
    
    <input type="submit" id="submit_photo" style="display:none"/>
    
    </form>
    <div id="cropImgDialog" title="Кадрировать изображение">
        <img src="<?php echo $photo['path']?>"/>
    </div>

    <script type="text/javascript" src="catalog/view/javascript/jquery/jcrop/js/jquery.Jcrop.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-rotate/jquery-rotate-min.2.2.js"></script>
    <link rel="stylesheet" href="catalog/view/javascript/jquery/jcrop/css/jquery.Jcrop.min.css"/>
    <script>
     function delete_photo(id, name) {
    $('#dell_photo_window #deleteContent').html(name);
    $('#dell_photo_window input[name=photo]').val(id);
    $('#dell_photo_window').fadeIn();
  }
  
  function delete_album_approved() {
     delete_photos($('#dell_photo_window input[name=photo]').val());
  }
  
   function delete_photos(photos) {
  	 $.ajax({
        type: "post",
        url: "<?php echo $this->url->link('album/content/delete', '', 'SSL');?>",
        data: 'photos=' + photos + "&album="+<?php echo $album_id; ?>,
        dataType: "json",
          success: function(response) {
            if (!response.success) {
                alert("Проблемы на стороне сервера.");
            } else {
              if(response.order.length) {
                var msg = '';
                for(var i = 0; i < response.order.length; i++) {
                  msg += response.order[i] + ',';
                }
                msg = msg.substring(0, (msg.length - 1));
                
                if(response.order.length == 1) {
                  alert('Фотографию :' + msg + ' нельзя удалить, так как она находится в корзине');
                } else {
                  alert('Фотографии :' + msg + ' нельзя удалить, так как они находятся в корзине');
                }
                
              } else {
                window.location = 'index.php?route=album/content&album_id=<?php echo $album_id;?>';
              }
            }
            },
            error: function(rs, e, a) {
              console.log(rs + "||" + e + "||" + a);
                alert(rs.responseText);
            }
    });
  }
  
        		$(function(){
            var jcropApi,
                boundX,
                boundY,

                $cropTarget = $('#cropImgDialog img'),
                $cropDialog = $('#cropImgDialog'),
                $cropButton = $('#cropImgBtn'),
                oCropData = {},
                $preview = $('#crop-preview'),
                $previewContainer = $('#crop-preview-container'),
                $previewImg = $('#crop-preview-container img'),

                previewWidth = $previewContainer.width(),
                previewHeight,
                img = new Image(),
                imageRWidth,
                imageRHeight,
                windowWidth = $(window).width() - 50,
                windowHeight = $(window).height() - 50,
                $initSizeContainer = $('#bottom.imgSize .initialSize'),
                $cropSizeContainer = $('#bottom.imgSize .cropSize'),

                $rotateRightBtn = $('#rotateRight'),
                $rotateLeftBtn = $('#rotateLeft'),
                startAngle = 0,
                $priceTag= $('#price_cont span:first-child');

            img.src = $previewImg.attr('src');

            img.onload = function(){
                if(this.width > windowWidth || this.height > windowHeight) {
                	var koef = this.width / this.height;
                	var koef1 = this.width  / windowWidth;
                	var koef2 = this.height  / windowHeight;
                	if(koef1 > koef2) {
                		$cropDialog.dialog('option', 'width', windowWidth);
                		imgRWidth = windowWidth;
                		
                		$cropDialog.dialog('option', 'height', windowWidth * (this.height / this.width));
                		imgRHeight = windowWidth * (this.height / this.width);
                	} else {
                		$cropDialog.dialog('option', 'height', windowHeight );
                		imgRHeight = windowHeight - 120;
                		
                		
                		$cropDialog.dialog('option', 'width', imgRHeight * koef + 25);
                		imgRWidth = imgRHeight * koef;
                		
                		
                	}
                	
                	
                } else {
                	 $cropDialog.dialog('option', 'width', this.width + 40);
					 $cropDialog.dialog('option', 'height', this.height + 160);
					 imgRWidth = this.width;
					 imgRHeight = this.height;
                }

                updateInitialSize(this);
                updateCropSize(this);

            };

            $cropDialog.dialog({
                autoOpen: false,
                modal: true,
                buttons: {
                    'Кадрировать': function(){
                        $(this).dialog('close');
                    },
                    'Отменить': function(){
                        jcropApi.release();
                        $(this).dialog('close');
                    }
                }
            });

            $cropButton.on('click', function () {
                previewHeight = $previewContainer.height();
                $previewContainer.css('height', previewHeight);

                $cropDialog.dialog('open');
                
                var params = {
                    bgColor: 'white',
                    bgOpacity: 0.7,
                    onSelect: updatePreview,
                    onRelease: releaseCheck
                }
                
                    
                    
                params['boxWidth'] = imgRWidth;
                 params['boxHeight'] = imageRHeight;

				
                $cropTarget.Jcrop(params , function(){
                    jcropApi = this;

                    boundX = this.getBounds()[0];
                    boundY = this.getBounds()[1];
                });
            });

            $('#applyToCopy').on('click', function() {
                applyPhoto(1);
            });
            
            $('#applyToPhoto').on('click', function() {
               applyPhoto(0);
            });
            
            
            
            function applyPhoto(copy) {
            	
            	var params = $('#photo_edit_form').serialize();
            	params += '&copy=' + copy;
            	if(oCropData.width) {
            		params += '&width=' + oCropData.width + '&height=' + oCropData.height + '&x=' + oCropData.x + '&y=' + oCropData.y;
            	}
            
            	$.ajax({
                    url: 'index.php?route=album/content/edit&album=<?php echo $album_id;?>&photo=<?php echo $photo_id;?>',
										type: 'post',
										data: params,
                    success: function(oData, sStatus,jqXHR){
                    	if(oData.success) {
                    		if(oData.photo) {
                    			window.location = 'index.php?route=album/content/edit&update=1&album=<?php echo $album_id;?>&photo=' + oData.photo
                    		} else {
                    			window.location = 'index.php?route=album/content/edit&update=1&album=<?php echo $album_id;?>&photo=<?php echo $photo_id;?>';
                    		}
                    	}
                    }
                });
            	
            	

            	
            }
            
            

            $rotateRightBtn.on('click', function(){
                rotateImg(-90);
            });

            $rotateLeftBtn.on('click', function(){
                rotateImg(90);
            });

            if(!$('#imgFormat input').is(':checked')){
                $('#imgFormat input').first().attr('checked','checked');
            }

            if(!$('#imgPaper input').is(':checked')){
                $('#imgPaper input').first().attr('checked','checked');
            }
            
            calculateImgPrice();

            $('#imgFormat input').on('change', function(){
                calculateImgPrice();
            });

            $('#imgPaper input').on('change', function(){
                calculateImgPrice()
            });

            function updatePreview(coords) {
                if (parseInt(coords.w) > 0) {
                    var rx = previewWidth / coords.w,
                        ry = previewHeight / coords.h;

                    $previewImg.css({
                        width: Math.round(rx * boundX) + 'px',
                        height: Math.round(ry * boundY) + 'px',
                        marginLeft: '-' + Math.round(rx * coords.x) + 'px',
                        marginTop: '-' + Math.round(ry * coords.y) + 'px'
                    });

                    updateCropSize({
                        width: coords.w,
                        height: coords.h
                    });

                    oCropData = {
                        x: coords.x,
                        y: coords.y,
                        width: coords.w,
                        height: coords.h
                    };
                }
            };

            function releaseCheck() {
                jcropApi.setOptions({ allowSelect: true });

                $previewImg.css({
                    width: $preview.width() + 'px',
                    height: $preview.height() + 'px',
                    marginLeft: '0px',
                    marginTop: '0px'
                });

                oCropData = {};
            };

            function updateInitialSize(img) {
                $initSizeContainer.find('.imgWidth').html(img.width);
                $initSizeContainer.find('.imgHeight').html(img.height);
            };

            function updateCropSize(img) {
                $cropSizeContainer.find('.imgWidth').html(Math.round(img.width));
                $cropSizeContainer.find('.imgHeight').html(Math.round(img.height));
            };

            function rotateImg(angle){
                

                $previewImg.rotate(startAngle);

                $.ajax({
                    url: '<?php echo $this -> url -> link('album/content/rotate', '', 'SSL'); ?>',
										type: 'post',
										data: {
													album_id : <?php echo $album_id; ?>,
													photo_id : <?php echo $photo_id; ?>,
                        	angle		 : angle
                    },
                    success: function(oData, sStatus,jqXHR){
                    	if(oData.success) {
                    		window.location = 'index.php?route=album/content/edit&update=1&album=<?php echo $album_id;?>&photo=<?php echo $photo_id;?>'
                    	}
                    }
                });
            };
            

							function calculateImgPrice(){
							var price = parseFloat($('#imgFormat input:checked').attr('data-price')),
							percent = parseFloat($('#imgPaper input:checked').attr('data-percent')),
							total;
							console.log(price)
							console.log(percent)
							total = price * (1 + percent/100);
							console.log(total)
							$priceTag.html((Math.round(total * 100) / 100).toFixed(2));
							};
							});
    </script>

    <?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>