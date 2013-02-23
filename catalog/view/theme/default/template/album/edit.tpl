<?php echo $header; ?>


<div id="content">
    <?php echo $content_top; ?>


    <div id="yellow_cont">
        <div id="help_cont">
            <div id="help">
                <h3>Подсказка</h3>
                Нажмите на изображение, что-бы добавить фото в заказ.
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
            <div class="dark"><a href="<?php echo $this->url->link('account/account', '', 'SSL');?>">Личный кабинет</a></div>
            <div class="darkEnd"></div>
            <div class="light"><a href="<?php echo $this->url->link('album/album', '', 'SSL');?>">Мои фотоальбомы</a></div>
            <div class="lightEnd"></div>
            <div class="light2"><a href="<?php echo $this->url->link('album/content', 'album_id='.$album_id, 'SSL');?>"> <?php echo $albumName; ?></a></div>
            <div class="light2End"></div>
            <div class="light3">Редактируем фото и отправляем на печать</div>
            <div class="light3End"></div>
        </div>
        <div id="edit_photo_cont">
            <h1>Индивидуальные настройки печати</h1>
            <div id="photo_cont">
                <div id="price_cont"><p><span></span><span> грн.</span></p>Стоимомть фотографии с выбранными параметрами</div>
                <div id="crop-preview">
                    <div id="crop-preview-container">
                        <img src="<?php echo $photo['path']?>">
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
                        <input type="radio" name="price" data-price="<?php echo $format['price']?>" value="<?php echo $format['id']?>">
                        <?php echo $format['name']?> <span><?php echo $format['price']?>&nbsp;грн</span>
                    </div>
                    <?php } ?>


                </div>
                <div  id="imgPaper" style="margin-left:70px" class="left">
                    <h2>Тип фотобумаги</h2>
                    <?php foreach ($papers as $paper) { ?>
                    <div><input type="radio" name="paper" data-percent="<?php echo $paper['percent']?>" value="<?php echo $paper['id']?>"><?php echo $paper['name']?></div>
                    <?php } ?>


                </div>

            </div>
            <div id="bottom" class="imgSize">
                <p class="initialSize">Начальный размер:
                    <span class="imgWidth">4374</span>
                    <span> x </span>
                    <span class="imgHeight">4374</span>px
                </p>
                <p class="cropSize">Размер после кадрирования:
                    <span class="imgWidth">4374</span>
                    <span> x </span>
                    <span class="imgHeight">4374</span>px
                </p>

            </div>
        </div>
    </div>

    <div id="green_cont">
        <div style="float:right">
            <div id="applyToPhoto" onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a href="#" class="left">Применить к фото</a>

                <div class="right"></div>
            </div>
            <div class="clear"></div>
            <div id="applyToCopy" onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a href="#" class="left">Применить к копии</a>

                <div class="right"></div>
            </div>
            <div class="clear"></div>
            <div onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a href="#" class="left">Вернуться к заказу</a>

                <div class="right"></div>
            </div>
        </div>
        <div id="edit_photo_buttons">
            <div class="linkCont"><a id="cropImgBtn" class="b1">Кадрировать</a></div>
            <div id="rotateRight" class="linkCont"><a class="b2">Повернуть<br>
                по часовой</a></div>
            <div id="rotateLeft" class="linkCont"><a class="b3">Повернуть<br>против часовой</a></div>
            <div class="linkCont"><a href="#" class="b4">Удалить</a></div>
            <div style="margin:20px 0 0 0px; width:700px" id="step3_field_cont">
                <div class="cont">Цветокоррекция<br>
                    <select>
                        <option>Делать</option>
                        <option>Не делать</option>
                    </select>
                </div>
                <div class="cont">Обрезка<br>
                    <select>
                        <option>Без эффектов</option>
                        <option>С эффектами</option>
                    </select>
                </div>
                <div class="cont">Белая рамка<br>
                    <select>
                        <option>Без рамки</option>
                        <option>С рамкой</option>
                    </select>
                </div>
                <div class="cont">Красные глаза<br>
                    <select>
                        <option>Не делать</option>
                        <option>Делать</option>
                    </select>
                </div>
                <div class="cont">Эффект<br>
                    <select>
                        <option>Не делать</option>
                        <option>Делать</option>
                    </select>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>

    </div>
    <div id="cropImgDialog" title="Кадрировать изображение">
        <img src="<?php echo $photo['path']?>"/>
    </div>

    <script type="text/javascript" src="catalog/view/javascript/jquery/jcrop/js/jquery.Jcrop.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-rotate/jquery-rotate-min.2.2.js"></script>
    <link rel="stylesheet" href="catalog/view/javascript/jquery/jcrop/css/jquery.Jcrop.min.css"/>
    <script>
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
                var realWidth = this.width + 25,
                    realHeight = this.height + 25;

                updateInitialSize(this);
                updateCropSize(this);

                $cropDialog.dialog('option', 'width', realWidth > windowWidth ? windowWidth : realWidth);

                if(realHeight > windowHeight){
                    $cropDialog.dialog('option', 'height', realHeight > windowHeight ? windowHeight : realHeight);
                }
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

                $cropTarget.Jcrop({
                    bgColor: 'white',
                    bgOpacity: 0.7,
                    onSelect: updatePreview,
                    onRelease: releaseCheck
                }, function(){
                    jcropApi = this;

                    boundX = this.getBounds()[0];
                    boundY = this.getBounds()[1];
                });
            });

            $('#applyToPhoto, #applyToCopy').on('click', function() {
                console.log(oCropData)
            });

            $rotateRightBtn.on('click', function(){
                rotateImg(90);
            });

            $rotateLeftBtn.on('click', function(){
                rotateImg(-90);
            });

            $('#imgFormat input').first().attr('checked','checked');
            $('#imgPaper input').first().attr('checked','checked');

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
                $cropSizeContainer.find('.imgWidth').html(img.width);
                $cropSizeContainer.find('.imgHeight').html(img.height);
            };

            function rotateImg(angle){
                startAngle += angle;

                if(startAngle == Math.abs(360)){
                    startAngle = 0;
                }

                $previewImg.rotate(startAngle);

              /*  $.ajax({
                    url: '',
                    type: 'GET',
                    data: {
                        angle: startAngle
                    },
                    success: function(oData, sStatus,jqXHR){
                        $cropTarget.attr('src', $cropTarget.attr('src') + '?tmp=' + new Date());
                    }
                });*/
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